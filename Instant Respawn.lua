game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        character:WaitForChild("Humanoid").Died:Connect(function()
            player:LoadCharacter()
        end)
    end)
end)

-- put this in a script in ServerScriptService
