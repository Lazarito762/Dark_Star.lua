--// LOAD
local player = game.Players.LocalPlayer

--// UI (leve)
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "DarkStarPro"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,300,0,200)
frame.Position = UDim2.new(0.5,-150,0.5,-100)
frame.BackgroundColor3 = Color3.fromRGB(15,15,20)
frame.Active = true
frame.Draggable = true

--// título
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Text = "🌌 DARKSTAR PRO"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0,255,150)
title.Font = Enum.Font.GothamBold
title.TextSize = 18

--// funções base
local function getRoot()
    local char = player.Character or player.CharacterAdded:Wait()
    return char:FindFirstChild("HumanoidRootPart")
end

--// BOTÃO SPEED
local speedBtn = Instance.new("TextButton", frame)
speedBtn.Size = UDim2.new(1,-20,0,40)
speedBtn.Position = UDim2.new(0,10,0,50)
speedBtn.Text = "Speed OFF"

local speed = false

speedBtn.MouseButton1Click:Connect(function()
    speed = not speed
    local hum = player.Character:FindFirstChild("Humanoid")

    if speed then
        hum.WalkSpeed = 60
        speedBtn.Text = "Speed ON"
    else
        hum.WalkSpeed = 16
        speedBtn.Text = "Speed OFF"
    end
end)

--// BOTÃO JUMP
local jumpBtn = Instance.new("TextButton", frame)
jumpBtn.Size = UDim2.new(1,-20,0,40)
jumpBtn.Position = UDim2.new(0,10,0,100)
jumpBtn.Text = "Jump OFF"

local jump = false

jumpBtn.MouseButton1Click:Connect(function()
    jump = not jump
    local hum = player.Character:FindFirstChild("Humanoid")

    if jump then
        hum.JumpPower = 100
        jumpBtn.Text = "Jump ON"
    else
        hum.JumpPower = 50
        jumpBtn.Text = "Jump OFF"
    end
end)

--// BOTÃO ADMIN (OPCIONAL)
local adminBtn = Instance.new("TextButton", frame)
adminBtn.Size = UDim2.new(1,-20,0,40)
adminBtn.Position = UDim2.new(0,10,0,150)
adminBtn.Text = "Infinite Yield"

adminBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "DarkStar",
    Text = "Carregado com sucesso",
    Duration = 3
})
