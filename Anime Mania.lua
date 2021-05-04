wait(.5)
local UTCSeconds = os.time()
local SecondsInHour = 3600
local ESTSeconds = UTCSeconds - (SecondsInHour * 4)
local ESTDate = os.date("!*t", ESTSeconds)
local hourString = tostring(ESTDate.hour > 12 and ESTDate.hour % 12 or ESTDate.hour)
local minuteString = ESTDate.min < 10 and "0"..ESTDate.min or tostring(ESTDate.min)
local period = ESTDate.hour > 12 and "PM" or "AM"
local plr
local char
local HttpService = game:GetService("HttpService")
local RandomPassword = HttpService:GenerateGUID(true)

if game.PlaceId == 6284881984 and _G.AutoFeed == false and _G.AutoSell == false and _G.UsingSynapse == false then
wait(7) -- Large since inventory loads slow as shit (Feels like 3 seconds though)
while wait() do
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, RandomPassword)
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end


if game.PlaceId == 6284881984 and _G.AutoFeed == true and _G.AutoSell == false and _G.UsingSynapse == false then
wait(7) -- Large since inventory loads slow as shit (Feels like 3 seconds though)
	warn("Using Synapse: False")
warn("Auto Feeding Status: On")
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
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, RandomPassword)
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end

if game.PlaceId == 6284881984 and _G.AutoFeed == false and _G.AutoSell == true and _G.UsingSynapse == false then
wait(3) -- Wait time is smaller since There is no need to wait for the inventory 2 load
	warn("Using Synapse: False")
	warn("Auto Feeding Status: Off")
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
    if v.Star.Visible == false and v.Name == _G.SaveUnit then
        game:GetService("ReplicatedStorage").Remotes.Favorite:FireServer(v.Key.Value)
        wait(5)
        game:GetService("TeleportService"):Teleport(6284881984, LocalPlayer)
end
end
end
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
   if v.Star.Visible == false then
   game:GetService("ReplicatedStorage").Remotes.SellCharacter:InvokeServer(v.Key.Value)
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

if game.PlaceId == 6284881984 and _G.UsingSynapse == true then
	local GameLoaded = game.Loaded:Wait()
	if game:IsLoaded() then
		_G.GameLoadCheck = true
	end
	end


if game.PlaceId == 6284881984 and _G.UsingSynapse == true and _G.AutoSell == false and _G.AutoFeed == true and _G.GameLoadCheck == true then
	wait(7) -- Large since inventory loads slow as shit (Feels like 3 seconds though)
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hump = char:WaitForChild("HumanoidRootPart")
if game.PlaceId == 6284881984 then
wait(.5)
rconsolename("Anime Mania, Gems & Gold Counter")
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gems.Text)
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gold.Text)
rconsoleinfo("Checked At "..hourString..":"..minuteString.." "..period)
rconsoleinfo("Made By Terebi#0001")
rconsoleinfo("-------------------------")
end
		warn("Using Synapse: True")
warn("Auto Feeding Status: On")
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
    if v.Star.Visible == false and v.Name == _G.SaveUnit then
        game:GetService("ReplicatedStorage").Remotes.Favorite:FireServer(v.Key.Value)
        wait(5)
        game:GetService("TeleportService"):Teleport(6284881984, LocalPlayer)
end
end
end
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

if game.PlaceId == 6284881984 and _G.UsingSynapse == true and _G.AutoFeed == false and _G.AutoSell == true and _G.GameLoadCheck == true then
	wait(7) -- Large since inventory loads slow as shit (Feels like 3 seconds though)
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hump = char:WaitForChild("HumanoidRootPart")
if game.PlaceId == 6284881984 then
wait(.5)
rconsolename("Anime Mania, Gems & Gold Counter")
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gems.Text)
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gold.Text)
rconsoleinfo("Checked At "..hourString..":"..minuteString.." "..period)
rconsoleinfo("Made By Terebi#0001")
rconsoleinfo("-------------------------")
end
		warn("Using Synapse: True")
warn("Auto Selling Status: On")
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
    if v.Star.Visible == false and v.Name == _G.SaveUnit then
        game:GetService("ReplicatedStorage").Remotes.Favorite:FireServer(v.Key.Value)
        wait(5)
        game:GetService("TeleportService"):Teleport(6284881984, LocalPlayer)
end
end
end
for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Inventory.Inventory:GetChildren()) do
if v:IsA("ImageLabel") then
   if v.Star.Visible == false then
   game:GetService("ReplicatedStorage").Remotes.SellCharacter:InvokeServer(v.Key.Value)
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

if game.PlaceId == 6284881984 and _G.UsingSynapse == true and _G.AutoSell == false and _G.AutoFeed == false and _G.GameLoadCheck == true then
	wait(4) -- Wait time is smaller since There is no need to wait for the inventory 2 load
	repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hump = char:WaitForChild("HumanoidRootPart")
if game.PlaceId == 6284881984 then
wait(.5)
rconsolename("Anime Mania, Gems & Gold Counter")
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gems.Text)
rconsoleinfo(game:GetService("Players").LocalPlayer.PlayerGui.Gaacha.Gold.Text)
rconsoleinfo("Checked At "..hourString..":"..minuteString.." "..period)
rconsoleinfo("Made By Terebi#0001")
rconsoleinfo("-------------------------")
end
		warn("Using Synapse: True")
	warn("Auto Feeding Status: Off")
while wait() do
game:GetService("ReplicatedStorage").Remotes.CreateRoom:InvokeServer(_G.Level, "RandomPassword")
game:GetService("ReplicatedStorage").Remotes.BeginRoom:FireServer()
end
end

game:GetService"RunService".RenderStepped:Connect(function()
game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
game.Players.LocalPlayer.DevCameraOcclusionMode = "Invisicam"
end)

while wait() do
    pcall(function()
        wait(0.01)
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
                    game.workspace.Living[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Light" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "1" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "2" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "3" })
                    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "4" })
		    game:GetService("Players").LocalPlayer.Backpack.Input.Remote:FireServer({ "Skill", "TeamAssist" })
        end
            end
end
end)
end
