--- tabularray benchmark script

local function fileRead(input)
  local f = io.open(input, "rb")
  local text
  if f then -- file exists and is readable
    text = f:read("*all")
    f:close()
    return text
  end
  -- return nil if file doesn't exists or isn't readable
end

local function fileWrite(text, output)
  -- using "wb" keeps unix eol characters
  f = io.open(output, "wb")
  f:write(text)
  f:close()
end

local function fileNormalize(fname)
  return string.gsub(fname, "/", "\\")
end

local function fileCopy(from, to)
  if os.type == "windows" then
    from = fileNormalize(from)
    to = fileNormalize(to)
    os.execute("copy /y" .. " " .. from .. " " .. to)
  else
    os.execute("cp -f" .. " " .. from .. " " .. to)
  end
end

local function fileDelete(fname)
  if os.type == "windows" then
    fname = fileNormalize(fname)
    os.execute("del" .. " " .. fname)
  else
    os.execute("rm" .. " " .. fname)
  end
end

local warmupruns = 1
local benchruns = 2
local programs = {"pdflatex", "xelatex", "lualatex"}
local optn = "--interaction=nonstopmode"
local isquiet = true

local function makeCmdString(prog, name)
  local str = prog .. " " .. optn .. " " .. name .. ".tex"
  if isquiet == true then
    if os.type == "windows" then
      str = str .. " >NUL"
    else
      str = str .. " >/dev/null"
    end
  end
  print(str)
  return str
end

local function bmTestOne(tbl, prog, name)
  for i = 1, warmupruns do
    os.execute(makeCmdString(prog, name))
  end
  for i = 1, benchruns do
    os.execute(makeCmdString(prog, name))
    local text = fileRead(name .. ".log")
    local t = string.match(text, "> \\g_benchmark_time_fp =([%d]+%.[%d]+)%.")
    if t == nil then
      error("failed to get benchmark time for " .. prog)
    else
      --print(prog .. " used time " .. i, t)
      table.insert(tbl[prog], tonumber(t))
    end
    end
end

local function bmTestSome(tbl, name)
  for _, p in ipairs(programs) do
    bmTestOne(tbl, p, name)
  end
end

local function initTimeTable(tbl)
  for _, p in ipairs(programs) do
    tbl[p] = {}
  end
end

local oldtime = {}
local newtime = {}
local tblold = {}
local tblnew = {}
local tblratio = {}
local isoldfirst = true

local function bmRun(name)
  initTimeTable(oldtime)
  initTimeTable(newtime)
  if isoldfirst then
    fileDelete("tabularray.sty")
    bmTestSome(oldtime, name)
    fileCopy("../tabularray.sty", "tabularray.sty")
    bmTestSome(newtime, name)
  else
    fileCopy("../tabularray.sty", "tabularray.sty")
    bmTestSome(newtime, name)
    fileDelete("tabularray.sty")
    bmTestSome(oldtime, name)
  end
  for _, p in ipairs(programs) do
    local oldt, newt = 0, 0
    for i = 1, benchruns do
      print(p .. " used time " .. i, "old = " .. oldtime[p][i], "new = " .. newtime[p][i])
      oldt = oldt + oldtime[p][i]
      newt = newt + newtime[p][i]
    end
    oldt = oldt / benchruns
    newt = newt / benchruns
    ratio = newt / oldt
    print(p .. " average time " , "old = " .. oldt, "new = " .. newt, "ratio = " .. ratio)
    tblold[p] = oldt
    tblnew[p] = newt
    tblratio[p] = ratio
  end
end

local outtempl = [[{
    "name": "compile tabularray with {{program}}",
    "unit": "ratio",
    "value": {{ratio}},
    "extra": "current time : previous time = {{newtime}} : {{oldtime}}"
  }]]

local function bmFillTemplate(prog, ratio, newt, oldt)
  local str = outtempl
  str = str:gsub("{{program}}", prog, 1)
           :gsub("{{ratio}}", ratio, 1)
           :gsub("{{newtime}}", newt, 1)
           :gsub("{{oldtime}}", oldt, 1)
  --print(str)
  return str
end

local function bmOutput(tlver)
  local out = {}
  for _, p in ipairs(programs) do
    table.insert(out, bmFillTemplate(p, tblratio[p], tblnew[p], tblold[p]))
  end
  local text = "[\n  " .. table.concat(out, ",\n  ") .. "\n]"
  --print(text)
  fileWrite(text, "output-" .. tlver .. ".txt")
end

local function main(name)
  if arg[1] == nil then
    error("missing texlive version")
  else
    bmRun(name)
    bmOutput(arg[1])
  end
end

main("tblrbenchmark")
