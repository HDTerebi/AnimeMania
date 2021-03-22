if not game:IsLoaded() then
	local Loading = Instance.new("Message",workspace)
	Loading.Text = 'Waiting For The Game To Load....'
	game.Loaded:Wait()
	Loading:Destroy()
end

wait(2)

if game.PlaceId == 6284881984 and _G.AutoFeed == true then
wait(2)
print("Auto feed on")
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
   if v.Star.Visible == false then
   game:GetService("ReplicatedStorage").Remotes.FeedCharacter:InvokeServer({ [v.Key.Value]= true }, _G.CharacterID)
   game:GetService("ReplicatedStorage").Remotes.CharacterSelection:InvokeServer()
   game:GetService("ReplicatedStorage").Remotes.CharacterCheck:InvokeServer()
end
end
end
while wait() do
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, "RandomPassword")
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end

if game.PlaceId == 6284881984 and _G.AutoFeed == false then
print("Auto feed off")
wait(2)
while wait() do
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, "RandomPassword")
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end

while wait() do
    pcall(function()
        wait()
    for _,v in pairs(game.Workspace.Living[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Ban" then
		    game.Workspace.Living[game.Players.LocalPlayer.Name].Ban:Destroy()
		end
    end
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name == "ClientMain" then
		    game:GetService("Players").LocalPlayer.Backpack.ClientMain.Disabled = true
		end
    end
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name == "ArenaClient" then
		    game:GetService("Players").LocalPlayer.Backpack.ArenaClient.Disabled = true
		end
end

for i,v in pairs(game.Workspace.Living:GetChildren()) do
        if v:FindFirstChild("AI") then
            if v.Humanoid.Health > 0 then
                    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
                    game.workspace.Living[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "1" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "TeamAssist" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "2" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "TeamAssist" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "3" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "TeamAssist" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "4" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "TeamAssist" })
        end
            end
end
end)
end
