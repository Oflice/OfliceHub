local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = OrionLib:MakeWindow({Name = "Ottd Script", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tabinfo = Window:MakeTab({
	Name = "Info",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Your Executor: " .. identifyexecutor())

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
