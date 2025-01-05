local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Oflice/OfliceHub/main/Scr.lua", true))()
                
for i, v in pairs(Games) do
        if i == game.PlaceId then
                loadstring(game:HttpGet(v))()
         end
    end
