local player = game.Players.LocalPlayer
local virtualUser = game:GetService("VirtualUser")
local UserInterface = player:WaitForChild("PlayerGui"):FindFirstChildOfClass("ScreenGui")

if not UserInterface then
    UserInterface = Instance.new("ScreenGui")
    UserInterface.Parent = player:WaitForChild("PlayerGui")
end

local autoTapEnabled = true
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Stop AutoTap"
button.Parent = UserInterface

local function simulateTap()
    local screenSize = workspace.CurrentCamera.ViewportSize
    local randomX = math.random(0, screenSize.X)
    local randomY = math.random(0, screenSize.Y)
    virtualUser:CaptureController()
    virtualUser:ClickButton1(Vector2.new(randomX, randomY))
end

button.MouseButton1Click:Connect(function()
    autoTapEnabled = not autoTapEnabled
    if autoTapEnabled then
        button.Text = "Stop AutoTap"
    else
        button.Text = "Resume AutoTap"
    end
end)

while true do
    if autoTapEnabled then
        simulateTap()
    end
    task.wait(0.1)
end
