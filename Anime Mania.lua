if not game:IsLoaded() then
	local Loading = Instance.new("Message",workspace)
	Loading.Text = 'Waiting For The Game To Load....'
	game.Loaded:Wait()
	Loading:Destroy()
end
wait(2)

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

if game.PlaceId == 6284881984 then
while wait(1) do
for _,v in pairs(game.Workspace.Living[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Ban" then
		    game.Workspace.Living[game.Players.LocalPlayer.Name].Ban:Destroy()
		end
    end
	
    if game.Workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, "RandomPassword")
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end
end

while wait() do
    pcall(function()
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
            if v.Humanoid.Health > 1 then
                repeat wait()
                    game.workspace.Living[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 5)
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "1" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "2" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "3" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "4" })
until v.Humanoid.Health <= 0
        end
            end
end
end)
end
