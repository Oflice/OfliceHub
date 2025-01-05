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
                
            local url = "https://raw.githubusercontent.com/Oflice/OfliceHub/main/Scripts.lua?" .. placeeeif
            loadstring(game:HttpGet(url, true))()
        end    
    end    
})

OrionLib:Init()
