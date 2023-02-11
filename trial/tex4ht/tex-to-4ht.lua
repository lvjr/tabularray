
--- Generate tabularray.4ht from tabularray-4ht.tex

local f = assert(io.open("tabularray-4ht.tex", "rb"))
local tex = f:read("*all")
f:close()

local ht = "\n" .. [[
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generated from tabularray-4ht.tex with tex-to-4ht.lua
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
]]

ht = ht .. "\n" .. [[
%%% --------------------------------------------------------
%%% for tex4ht-4ht.tex to update tabularray.4ht file
%%% --------------------------------------------------------
]]

for code in tex:gmatch("\\<tabularray[%a ]-\\><<<\n(.-)\n>>>") do
  --print(code)
  ht = ht .. "\n" .. code .. "\n"
end

ht = ht .. "\n" .. [[
%%% --------------------------------------------------------
%%% for tex4ht-html4.tex to update html4.4ht file
%%% --------------------------------------------------------
]]

for code in tex:gmatch("\\<configure[%a%d ]-\\><<<\n(.-)\n>>>") do
  --print(code)
  ht = ht .. "\n" .. code .. "\n"
end

f = io.open("tabularray.4ht", "wb")
f:write(ht)
f:close()
