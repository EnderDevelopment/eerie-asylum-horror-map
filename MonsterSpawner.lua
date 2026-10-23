-- MonsterSpawner.lua

-- This script spawns monsters at random intervals to scare the players.

local monsterModel = game:GetService("ReplicatedStorage"):WaitForChild("Monster") -- Replace with your monster model

-- Function to spawn a monster
local function spawnMonster()
    local monster = monsterModel:Clone()
    monster:SetPrimaryPartCFrame(CFrame.new(math.random(-50, 50), 5, math.random(-50, 50)))
    monster.Parent = workspace
    
    -- Make the monster move towards a random player
    local players = game:GetService("Players"):GetPlayers()
    if #players > 0 then
        local targetPlayer = players[math.random(1, #players)]
        local humanoid = monster:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
        end
    end
end

-- Spawn a monster every 30 seconds
while true do
    wait(30)
    spawnMonster()
end