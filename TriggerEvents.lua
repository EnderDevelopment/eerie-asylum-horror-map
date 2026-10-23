-- TriggerEvents.lua

-- This script sets up trigger events that occur when players enter certain areas.

local triggerParts = workspace:GetChildren() -- Replace with your trigger parts

-- Function to handle trigger events
local function onTriggerEntered(part)
    local character = part.Parent
    local player = game:GetService("Players"):GetPlayerFromCharacter(character)
    
    if player then
        -- Apply a jump scare
        local jumpScare = Instance.new("ScreenGui")
        jumpScare.Name = "JumpScare"
        jumpScare.Parent = player.PlayerGui
        
        local image = Instance.new("ImageLabel")
        image.Size = UDim2.new(1, 0, 1, 0)
        image.BackgroundTransparency = 1
        image.Image = "rbxassetid://123456789" -- Replace with your image ID
        image.Parent = jumpScare
        
        -- Remove the jump scare after 2 seconds
        game:GetService("Debris"):AddItem(jumpScare, 2)
    end
end

-- Set up trigger events for each trigger part
for _, part in ipairs(triggerParts) do
    if part:IsA("BasePart") then
        part.Touched:Connect(onTriggerEntered)
    end
end