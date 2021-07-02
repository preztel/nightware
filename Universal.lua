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
	Boxes = false,
	Chams = false,
	Names = false,
	Health = false,
	Distance = false,
	Items = false,
	TeamCheck = false,
	ColorBasedOnTeam = false
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

local GetOffSet ;

GetOffset = function(Part, Position)
	local FarPosition = CurrentCamera:WorldToViewportPoint(Vector3.new(Part.Position.X, Part.Position.Y + (Part.Size.Y / 2), Part.Position.Z))
	return FarPosition.Y - Position.Y
end

local GetCorners ;

GetCorners = function(Player)
	local TopY = math.huge
	local BottomY = -math.huge
	local RightX = -math.huge
	local LeftX = math.huge
	local Visible = false
	local Offsets
	local Positions = {}
	local Character = GetCharacter(Player)
	for i, v in next, Character:GetChildren() do
		if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
			local Position, OnScreen = CurrentCamera:WorldToViewportPoint(v.Position)
			Positions[v] = Position
			Offsets = GetOffset(v, Position)
			if OnScreen and not string.find(v.Name, "Root") then
				if Position.Y < TopY then
					TopY = Position.Y
				end
				if Position.Y > BottomY then
					BottomY = Position.Y
				end
				if Position.X < LeftX then
					LeftX = Position.X
				end
				if Position.X > RightX then
					RightX = Position.X
				end
			else
				Visible = OnScreen
			end
		end
	end

	return {
		TopLeft = Vector2.new((LeftX + Offsets), (TopY + Offsets)),
		TopRight = Vector2.new((RightX - Offsets), (TopY + Offsets)),  
		BottomLeft = Vector2.new((LeftX + Offsets), (BottomY - Offsets)), 
		BottomRight = Vector2.new((RightX - Offsets), (BottomY - Offsets)), 
		Positions = Positions, 
		Visible = Visible
	}
end

local Roundify ;

Roundify = function(number)
	if (number - (number % 0.1)) - (number - (number % 1)) < 0.5 then
		number = number - (number % 1)
	else
		number = (number - (number % 1)) + 1
	end
	return number
end

--< ESP Functions

function Boxes(Player)
	local function Boxes()
		return false
	end

	local BoxOutline = Drawing.new("Square")
	local Box = Drawing.new("Square")

	Boxes = function()
		if ESP.Boxes and IsPlayerAlive(Player) then
			if Player then 
				local Character = GetCharacter(Player)	
				local Corners = GetCorners(Player)

				if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Head") and (ESP.TeamCheck and Player.Team ~= LocalPlayer.Team) then
					print("test")
					if ESP.ColorBasedOnTeam and Player.Team ~= LocalPlayer.Team then
						Box.Color = Color3.fromRGB(127, 94, 235)
					else
						Box.Color = Color3.fromRGB(235, 235, 235)
					end

					local p1, Vis = CurrentCamera:WorldToViewportPoint((Character:FindFirstChild("HumanoidRootPart").CFrame).p)

					local X, Y = Corners.BottomRight.X - Corners.TopLeft.X, Corners.BottomRight.Y - Corners.TopLeft.Y

					Box.Visible = Vis
					BoxOutline.Visible = Vis

					Box.Visible = true
					Box.Size = Vector2.new(X, Y)
					Box.Position = Corners.TopLeft
					Box.Thickness = 1
					Box.Filled = false

					BoxOutline.Visible = true
					BoxOutline.Size = Vector2.new(Corners.BottomRight.X - Corners.TopLeft.X, Corners.BottomRight.Y - Corners.TopLeft.Y)
					BoxOutline.Position = Corners.TopLeft
					BoxOutline.Thickness = (Box.Thickness * 2.5)
					BoxOutline.Filled = false
				else
					Box.Visible = false
					BoxOutline.Visible = false
				end
			else
				Box.Visible = false
				BoxOutline.Visible = false
			end
		else
			Box.Visible = false
			BoxOutline.Visible = false
		end
	end

	math.randomseed(tick())
	RunService:BindToRenderStep("Boxes", 1, Boxes)
end

function Names(Player)
	local function Name()
		return false
	end

	local NameText = Drawing.new("Text")
	local HealthText = Drawing.new("Text")
	NameText.Center = true
	if string.len(Player.Name) < 10 then
		NameText.Text = (Player.Name)
	else
		NameText.Text = (string.sub(Player.Name, 1, 8) .. "..")
	end
	NameText.Size = 12.7
	NameText.Font = Drawing.Fonts.Plex
	NameText.Outline = true
	NameText.OutlineColor = Color3.new(0,0,0)

	HealthText.Center = true
	HealthText.Size = 12
	HealthText.Font = Drawing.Fonts.Plex
	HealthText.Outline = true
	HealthText.OutlineColor = Color3.new(0,0,0)
	HealthText.Color = Color3.fromRGB(91, 235, 115)

	Name = function()
		if IsPlayerAlive(Player) then
			if Player then 
				local Character = GetCharacter(Player)	
				if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Head") then

					if ESP.ColorBasedOnTeam and Player.Team ~= LocalPlayer.Team then
						NameText.Color = Color3.fromRGB(127, 94, 235)
					else
						NameText.Color = Color3.fromRGB(235, 235, 235)
					end

					local Pos, Vis = CurrentCamera:WorldToViewportPoint((Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, Character:FindFirstChild("HumanoidRootPart").Size.Y, 0)).p)

					NameText.Visible = Vis and ESP.Names
					HealthText.Visible = Vis and ESP.Health
					NameText.Text = NameText.Text
					HealthText.Text = "[" .. GetHealth(Player) .. "]"

					NameText.Position = Vector2.new(Pos.X, Pos.Y - 15)
					HealthText.Position = Vector2.new(NameText.Position.X, NameText.Position.Y - 18)
				else
					NameText.Visible = false
					HealthText.Visible = false
				end
			else
				NameText.Visible = false
				HealthText.Visible = false
			end
		else
			NameText.Visible = false
			HealthText.Visible = false
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
	local GetBodyParts, Hud ;

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
		Boxes(v)
	end
end
Players.PlayerAdded:Connect(function(v)
	Names(v)
	Boxes(v)
end)
return Aimbot, ESP, FOV ;
