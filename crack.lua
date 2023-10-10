
local STUFF1 = game:HttpGet("https://raw.githubusercontent.com/LeakedWare/DevilWare/main/hwid.lua")
local STUFF2 = game:HttpGet("https://raw.githubusercontent.com/LeakedWare/DevilWare/main/key.lua")

local old 
old = hookfunction(game.HttpGet, newcclosure(function(self,url,...)
    if type(url) == "string" and string.match(url,"hwid")then 
            print("Returned Own Script")
            return STUFF1
    elseif type(url) == "string" and string.match(url,"key")then 
        print("Returned Own Script")
        return STUFF2
        end
    return old(self,url,...)
end))

local DevilWare = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeakedWare/DevilWare/main/main.lua", true))()
