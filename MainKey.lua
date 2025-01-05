local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OfliceHub"})

_G.Key = "OfliceHub#~"
_G.cKey = ""

local Tab = Window:MakeTab({
    Name = "Key System",
    Icon = "",
    PremiumOnly = false
})

local key = Tab:AddTextbox({
    Name = "Key Here",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.cKey = Value
    end    
})

local btn = Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if _G.cKey == "OfliceHub#~" then
            OrionLib:Destroy()
            local placeeeif = game.PlaceId

            local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Oflice/OfliceHub/main/Scr.lua", true))()
                
            for i, v in pairs(Games) do
                if i == game.PlaceId then
                    loadstring(game:HttpGet(v))()
                end
            end
        end      
    end
})

OrionLib:Init()
