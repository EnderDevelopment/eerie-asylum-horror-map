-- AmbientSounds.lua

-- This script handles the ambient sounds to create a sense of unease.

local soundService = game:GetService("SoundService")

-- Function to play ambient sounds
local function playAmbientSounds()
    local sounds = {
        "rbxassetid://123456789", -- Replace with your sound IDs
        "rbxassetid://987654321", -- Replace with your sound IDs
        "rbxassetid://112233445"  -- Replace with your sound IDs
    }
    
    for _, soundId in ipairs(sounds) do
        local sound = Instance.new("Sound")
        sound.SoundId = soundId
        sound.Volume = 0.5
        sound.Looped = true
        sound.Parent = soundService
        sound:Play()
    end
end

-- Call the function to start playing ambient sounds
playAmbientSounds()