-- Duplicate Brainrot Vip
-- Botão que leva direto para o servidor privado

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer

-- 🔹 Coloque aqui os dados do servidor privado
local placeId = 109983668079237 -- ID do jogo (substitua pelo ID real do game do Brainrot)
local privateServerId = "b43ef4cd86572145b20962d86d370c64" -- código do servidor privado

-- Criar a interface
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DuplicateBrainrotVip"
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Parent = screenGui

local titulo = Instance.new("TextLabel")
titulo.Size = UDim2.new(1, 0, 0, 40)
titulo.BackgroundTransparency = 1
titulo.Text = "Duplicate Brainrot Vip"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.Font = Enum.Font.SourceSansBold
titulo.TextSize = 22
titulo.Parent = frame

local botao = Instance.new("TextButton")
botao.Size = UDim2.new(0.8, 0, 0, 50)
botao.Position = UDim2.new(0.1, 0, 0.5, -25)
botao.Text = "Duplicar Brainrots All"
botao.TextColor3 = Color3.fromRGB(255, 255, 255)
botao.Font = Enum.Font.SourceSansBold
botao.TextSize = 20
botao.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
botao.Parent = frame

-- Quando clicar, teleporta para o servidor privado
botao.MouseButton1Click:Connect(function()
    TeleportService:TeleportToPrivateServer(placeId, privateServerId, {player})
end)
