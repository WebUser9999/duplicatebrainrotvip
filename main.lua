-- Duplicate Brainrot Vip
-- Cria uma UI com botão que abre o link do servidor privado

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

-- Criar a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DuplicateBrainrotVip"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Criar o Frame (fundo do título + botão)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 2
frame.Parent = screenGui

-- Título
local titulo = Instance.new("TextLabel")
titulo.Size = UDim2.new(1, 0, 0, 40)
titulo.BackgroundTransparency = 1
titulo.Text = "Duplicate Brainrot Vip"
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.Font = Enum.Font.SourceSansBold
titulo.TextSize = 22
titulo.Parent = frame

-- Botão
local botao = Instance.new("TextButton")
botao.Size = UDim2.new(0.8, 0, 0, 50)
botao.Position = UDim2.new(0.1, 0, 0.5, -25)
botao.Text = "Duplicar Brainrots All"
botao.TextColor3 = Color3.fromRGB(255, 255, 255)
botao.Font = Enum.Font.SourceSansBold
botao.TextSize = 20
botao.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
botao.Parent = frame

-- Link do servidor privado
local serverLink = "https://www.roblox.com/share?code=b43ef4cd86572145b20962d86d370c64&type=Server"

-- Ação do botão
botao.MouseButton1Click:Connect(function()
    -- Abre no navegador do jogador (suporta em PC)
    pcall(function()
        StarterGui:SetCore("OpenBrowserWindow", serverLink)
    end)
    
    -- Também copia o link para a área de transferência
    if setclipboard then
        setclipboard(serverLink)
    end
end)
