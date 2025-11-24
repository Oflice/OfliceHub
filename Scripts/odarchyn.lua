local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local library = loadstring(game:HttpGet("https://github.com/GoHamza/AppleLibrary/blob/main/main.lua?raw=true"))()

local window = library:init("Odarchyn Авто Фарм", true, Enum.KeyCode.RightShift, true)

window:Divider("Головна")

local sectionA = window:Section("Авто Фарм")

local farming = false

sectionA:Button("Запуск/Пауза", function()
    farming = not farming
end)

local function equip()
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        local tool = backpack:FindFirstChildOfClass("Tool")
        if tool then
            character:WaitForChild("Humanoid"):EquipTool(tool)
        end
    end
end

local function teleport()
    for _, instance in ipairs(workspace:GetDescendants()) do
        if instance:IsA("ProximityPrompt") then
            local targetPart = instance.Parent
            if targetPart and targetPart:IsA("BasePart") then
                humanoidRootPart.CFrame = targetPart.CFrame
                instance.HoldDuration = 0
                if instance.Enabled then
                    instance:InputHoldBegin()
                    task.wait(0.5)
                    instance:InputHoldEnd()
                    equip()
                    local targetNe = workspace:FindFirstChild("ne")
                    if targetNe and targetNe:IsA("BasePart") then
                        humanoidRootPart.CFrame = targetNe.CFrame
                    end
                end
                return
            end
        end
    end
end

while true do
    if farming then
        teleport()
    end
    task.wait(1)
end
