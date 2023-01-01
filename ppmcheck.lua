
--------------------------------------------
---- source code from l3build.lua
--------------------------------------------

local lfs = require("lfs")

local assert           = assert
local ipairs           = ipairs
local insert           = table.insert
local lookup           = kpse.lookup
local match            = string.match
local gsub             = string.gsub

kpse.set_program_name("kpsewhich")
build_kpse_path = match(lookup("l3build.lua"),"(.*[/])")
local function build_require(s)
  require(lookup("l3build-"..s..".lua", { path = build_kpse_path } ) )
end

-----------------------------------------

build_require("file-functions")

release_date = "2021-04-26" -- for old build.lua file
dofile("build.lua")

build_require("variables")

imgext = imgext or ".png"

local md5 = require("md5")

local function md5sum(str)
  if str then return md5.sumhexa(str) end
end

local function filesum(name)
  local f = assert(io.open(name, "rb"))
  local s = f:read("*all")
  f:close()
  return md5sum(s)
end

local function readfile(name)
  local f = assert(io.open(name, "rb"))
  local s = f:read("*all")
  f:close()
  return s
end

local function writefile(name, sum)
  local f = assert(io.open(name, "w"))
  f:write(sum)
  f:close()
end

local function getfiles(path, pattern)
  local files = { }
  for entry in lfs.dir(path) do
    if match(entry, pattern) then
     insert(files, entry)
    end
  end
  return files
end

local function getimgopt(imgext)
  local imgopt = ""
  if imgext == ".png" then
    imgopt = " -png "
  elseif imgext == ".ppm" then
    imgopt = " "
  elseif imgext == ".pgm" then
    imgopt = " -gray "
  elseif imgext == ".pbm" then
    imgopt = " -mono "
  else
    error("unsupported image extension" .. imgext)
  end
  return imgopt
end

local function pdftoimg(path, pdf)
  cmd = "pdftoppm " .. getimgopt(imgext) .. pdf .. " " .. jobname(pdf)
  run(path, cmd)
end

local function saveimgmd5(imgname, md5file, newmd5)
  print("save md5 and image files for " .. imgname)
  cp(imgname, testdir, testfiledir)
  writefile(md5file, newmd5)
end

local function ppmcheck(job)
  local errorlevel
  local imgname = job .. imgext
  local md5file = testfiledir .. "/" .. job .. ".md5"
  local newmd5 = filesum(testdir .. "/" .. imgname)
  if fileexists(md5file) then
    local oldmd5 = readfile(md5file)
    if newmd5 == oldmd5 then
      errorlevel = 0
      print("md5 check passed for " .. imgname)
    else
      errorlevel = 1
      print("md5 check failed for " .. imgname)
      local imgdiffexe = os.getenv("imgdiffexe")
      if imgdiffexe then
        local oldimg = abspath(testfiledir) .. "/" .. imgname
        local newimg = abspath(testdir) .. "/" .. imgname
        local diffname = job .. ".diff.png"
        local cmd = imgdiffexe .. " " .. oldimg .. " " .. newimg
                    .. " -compose src " .. diffname
        print("creating image diff file " .. diffname)
        run(testdir, cmd)
      elseif arg[1] == "save" then
        saveimgmd5(imgname, md5file, newmd5)
      end
    end
  else
    errorlevel = 0
    saveimgmd5(imgname, md5file, newmd5)
  end
  return errorlevel
end

local function main()
  local errorlevel = 0
  local pattern = "%" .. pdfext .. "$"
  local files = getfiles(testdir, pattern)
  for _, v in ipairs(files) do
    pdftoimg(testdir, v)
    pattern = "^" .. jobname(v):gsub("%-", "%%-") .. "%-%d+%" .. imgext .. "$"
    local imgfiles = getfiles(testdir, pattern)
    if #imgfiles == 1 then
      local imgname = jobname(v) .. imgext
      if fileexists(testdir .. "/" .. imgname) then
        rm(testdir, imgname)
      end
      ren(testdir, imgfiles[1], imgname)
      local e = ppmcheck(jobname(v)) or 0
      errorlevel = errorlevel + e
    else
      for _, i in ipairs(imgfiles) do
        local e = ppmcheck(jobname(i)) or 0
        errorlevel = errorlevel + e
      end
    end
  end
  return errorlevel
end

local errorlevel = main()
if os.type == "windows" then os.exit(errorlevel) end
