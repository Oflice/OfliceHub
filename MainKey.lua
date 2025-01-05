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
                
            if game.PlaceId == 90192874177359 then
                local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = OrionLib:MakeWindow({Name = "Ottd Script", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Spawn",
	Icon = "",
	PremiumOnly = false
})

local towers = {
    "Engineer Cameraman",
    "Large Scientist Cameraman",
    "Scientist Cameraman",
    "Titan Cameraman",
    "TV Woman",
    "Jetpack Cameraman",
    "Elf Cameraman",
    "Titan Presentwoman",
    "Speaker Helicopter",
    "Large Cameraman",
    "Laser Cameraman Car",
    "Upgraded Titan Cameraman",
    "Upgraded Titan Speakerman",
    "Titan Cinemaman",
    "Ninja Cameraman",
    "Large TV Man",
    "Large Speakerman",
    "Car Speakerman",
    "Camerawoman",
    "Speakerman"
}

for i, v in ipairs(towers) do
   Tab:AddButton({
       Name = v,
       Callback = function()
           local player = game.Players.LocalPlayer
           local character = player.Character or player.CharacterAdded:Wait()
           local position = character:WaitForChild("HumanoidRootPart").CFrame

           local args1 = {
               [1] = v
           }
           game:GetService("ReplicatedStorage").Functions.RequestTower:InvokeServer(unpack(args1))

           local args2 = {
               [1] = v,
               [2] = position
           }
           game:GetService("ReplicatedStorage").Functions.ChangeMode:InvokeServer(unpack(args2))
       end
   })
end

OrionLib:Init()
             end
        end    
    end    
})

OrionLib:Init()
