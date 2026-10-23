-- FogEffect.lua

-- This script manages the fog effect to limit visibility and add to the horror.

local lightService = game:GetService("Lighting")

-- Function to set up the fog effect
local function setupFogEffect()
    lightService.FogStart = 0
    lightService.FogEnd = 50
    lightService.FogColor = Color3.fromRGB(0, 0, 0)
end

-- Call the function to set up the fog effect
setupFogEffect()