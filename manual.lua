
local path = "manual/"

local function ReadFile(input)
  local f = io.open(input, "rb")
  if f == nil then
    print("Error in reading " .. input)
    return
  end
  local text = f:read("*all")
  f:close()
  return text
end

local function WriteFile(output, text)
  f = io.open(output, "wb")
  f:write(text)
  f:close()
end

local function MakeManual()
  local style = ReadFile(path .. "manual.sty"):gsub("^%%.-\n%%.-\n", "")
  --print(style)
  local main = ReadFile(path .. "manual.tex")
  local head =  main:match("(.-\\documentclass.-)\n")
  local body = main:match("\\begin{document}\n(.+)\\end{document}\n")
  --print(head, body)
  local text = ""
  body = body:gsub("(\\input{(.-)})", function(line, name)
    --print(line, name)
    local subtex = ReadFile(path .. name .. ".tex")
    --print(subtex)
    local subbody = subtex:match("\\begin{document}\n\(.-)\n\\end{document}\n")
    text = text .. subbody
  end)
  text = head .. style .. "\n\\begin{document}\n" .. text .. "\n\\end{document}\n"
  text = text:gsub("\r\n", "\n"):gsub("\r", "\n")
  WriteFile("tabularray.tex", text)
end

MakeManual()
