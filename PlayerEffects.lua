-- PlayerEffects.lua

-- This script applies visual and audio effects to the players to enhance the horror experience.

local players = game:GetService("Players")

-- Function to apply effects to a player
local function applyEffects(player)
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Apply a red flash effect
    local flash = Instance.new("ScreenGui")
    flash.Name = "FlashEffect"
    flash.Parent = player.PlayerGui
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Parent = flash
    
    -- Fade out the flash effect
    game:GetService("TweenService"):Create(frame, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
    
    -- Play a scary sound
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://987654321" -- Replace with your sound ID
    sound.Volume = 1
    sound.Parent = character:FindFirstChild("Head") or character
    sound:Play()
end

-- Apply effects to all existing players
for _, player in ipairs(players:GetPlayers()) do
    applyEffects(player)
end

-- Apply effects to new players
players.PlayerAdded:Connect(applyEffects)