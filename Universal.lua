Drawing = Drawing or nil
getgc = getgc or function() return nil end

local FOV = {
	Circle = false,
	Radius = 100,
	Snaplines = false
}

local Aimbot = {
	Enabled = false,
	Sens = 0.25,
	TeamCheck = false,
	Hitbox = "Head",
	VisibilityCheck = false
}

local ESP = {
	Circle = false,
	Radius = 100,
	Snaplines = false,
	Boxes = true,
	Chams = false,
	Names = true,
	Health = false,
	Distance = false,
	Items = false
}

--< Local Variables.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local CurrentCamera = workspace.CurrentCamera

--< Drawings.

local Snapline = Drawing.new("Line")
Snapline.From = Vector2.new(0, 0)
Snapline.To = Vector2.new(0, 0)
Snapline.Thickness = 1
Snapline.Transparency = 1
Snapline.Visible = false
Snapline.Color = Color3.fromRGB(255, 255, 255)

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(0, 0)
FOVCircle.Radius = 0
FOVCircle.Thickness = 0.1
FOVCircle.Filled = false
FOVCircle.NumSides = 15
FOVCircle.Visible = false
FOVCircle.Color = Color3.fromRGB(255, 255, 255)

--< Functions.

local GetCharacter;

GetCharacter = GetCharacter or function(Player)
	if not (Player) then return false end
	if Player and Player.Character then
		return Player.Character
	end
end

local IsPlayerAlive;

IsPlayerAlive = IsPlayerAlive or function(Player)
	if not (Player) then return false end
	if Player and Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 1 then
		return true
	end
	return false
end

local IsPlayerFriendly;

IsPlayerFriendly = IsPlayerFriendly or function(Player)
	if Player.Team ~= LocalPlayer.Team then
		return false
	end
	return true
end

local GetHealth ;

GetHealth = GetHealth or function(Player)
	if not (Player) then return false end
	if Player and Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health then
		return Player.Character:FindFirstChild("Humanoid").Health
	end
	return 0
end

Roundify = function(number)
	if (number - (number % 0.1)) - (number - (number % 1)) < 0.5 then
		number = number - (number % 1)
	else
		number = (number - (number % 1)) + 1
	end
	return number
end

--< ESP Functions

function Names(Player)
	local function Name()
		return false
	end

	local NameText = Drawing.new("Text")
	NameText.Center = true
	NameText.Text = Player.Name
	NameText.Size = 13
	NameText.Font = Drawing.Fonts.Plex
	NameText.Outline = true
	NameText.OutlineColor = Color3.new(0,0,0)

	Name = function()
		if ESP.Names and Hud:isplayeralive(Player) then
			if Player then 
				local Character = GetCharacter(Player)	
				if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Head") then
					if Player.Team ~= LocalPlayer.Team then
						NameText.Color = Color3.fromRGB(127, 94, 235)
					else
						NameText.Color = Color3.fromRGB(235, 235, 235)
					end

					local Pos, Vis = CurrentCamera:WorldToViewportPoint((Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, Character:FindFirstChild("HumanoidRootPart").Size.Y + 0.5, 0)).p)

					NameText.Visible = Vis

					NameText.Position = Vector2.new(Pos.X, Pos.Y - 20)
				else
					NameText.Visible = false
				end
			else
				NameText.Visible = false
			end
		else
			NameText.Visible = false
		end
	end

	math.randomseed(tick())
	RunService:BindToRenderStep("Names", 1, Name)
end

--< Other Games support.

if (game.PlaceId == 3233893879) then
	local Characters ;

	for i, v in next, getgc(true) do
		if (type(v) == "table") then
			if (rawget(v, "Characters")) then
				Characters = v.Characters
			end
		end
	end

	GetCharacter = function(Plr)
		if (Plr == LocalPlayer or not Plr) then
			return LocalPlayer.Character
		end
		local Char = Characters:GetCharacter(Plr);
		if (Char and Char.Body) then
			Plr.Character = Char.Body
		end
		return (Plr and Plr.Character or nil)
	end

	IsPlayerAlive = function(Plr)
		local Char = GetCharacter(Plr)
		if (Char and Char.Parent and Char.Parent:WaitForChild("Health").Value > 1 and Char.Parent:FindFirstChild("Root")) then
			return true
		end
		return false
	end

	IsPlayerFriendly = function(Player)
		if Player then
			for i, v in next, game:GetService("Teams"):GetChildren() do
				if (v.Players:FindFirstChild(Player.Name) and v.Players:FindFirstChild(LocalPlayer.Name) and Player ~= LocalPlayer) then
					return true
				end
			end
			return false
		end
	end
elseif (game.PlaceId == 292439477) then
	getgenv().GetBodyParts = nil ;
	getgenv().Hud = nil ;

	for i, v in next, getgc(true) do
		if(typeof(v) == "table" and rawget(v, "getbodyparts")) then
			GetBodyParts = v.getbodyparts
		elseif (typeof(v) == "table" and rawget(v, "isplayeralive")) then
			Hud = v
		end
	end

	GetCharacter = function(Plr)
		local Char = GetBodyParts(Plr);
		if(Char and Char.rootpart) then
			Plr.Character = Char.rootpart.Parent
		end
		return (Plr and Plr.Character or nil)
	end

	IsPlayerAlive = function(Plr)
		if Hud:isplayeralive(Plr) then
			return true
		end
		return false
	end

	GetHealth = function(Player)
		return Roundify(Hud:getplayerhealth(Player))
	end
end

for i, v in next, Players:GetPlayers() do
	if v ~= LocalPlayer then
		Names(v)
	end
end
Players.PlayerAdded:Connect(function(v)
	Names(v)
end)

return Aimbot, ESP, FOV	;
