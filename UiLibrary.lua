local Location = game.CoreGui

if Location:FindFirstChild("     ") then 
	Location:FindFirstChild("     "):Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "     "
ScreenGui.Parent = Location
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 1

local Mouse = game.Players.LocalPlayer:GetMouse()

local MainFrame = Instance.new("Frame")
local Glow = Instance.new("ImageLabel")
local TopFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local SquareButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local GameLabel = Instance.new("TextLabel")
local Notifications = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Left = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

local Help = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")

local Top = Instance.new("Frame")
local TopLister = Instance.new("UIListLayout")

local UIPadding_3 = Instance.new("UIPadding")

local AimbotCheck = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0,0.5, 0)
MainFrame.Size = UDim2.new(0, 483, 0, 417)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true

MainFrame.MouseEnter:Connect(function()
	AimbotCheck = false
end)

MainFrame.MouseLeave:Connect(function()
	AimbotCheck = true
end)

local Containers = Instance.new("Folder")
Containers.Parent = MainFrame

Glow.Name = "Glow"
Glow.Parent = MainFrame
Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow.BackgroundTransparency = 1.000
Glow.Position = UDim2.new(0, -15, 0, -15)
Glow.Size = UDim2.new(1, 30, 1, 30)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceCenter = Rect.new(24, 24, 276, 276)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(0, 483, 0, 33)
TopFrame.ZIndex = 1

Title.Name = "Title"
Title.Parent = TopFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0734006539, 0, 0.233333334, 0)
Title.Size = UDim2.new(0, 193, 0, 5)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "nightware"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 13.000
Title.TextXAlignment = Enum.TextXAlignment.Left

SquareButton.Name = "SquareButton"
SquareButton.Parent = TopFrame
SquareButton.BackgroundColor3 = Color3.fromRGB(51, 129, 255)
SquareButton.Position = UDim2.new(0.0227743275, 0, 0.233333349, 0)
SquareButton.Size = UDim2.new(0, 17, 0, 17)
SquareButton.AutoButtonColor = false
SquareButton.Font = Enum.Font.SourceSans
SquareButton.Text = ""
SquareButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SquareButton.TextSize = 14.000
local MainOpen = false
SquareButton.MouseButton1Click:Connect(function()
	MainOpen = not MainOpen
	if MainOpen then
		game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(0.2), {Size = UDim2.new(0, 483, 0, 33)}):Play()
		Top.Visible = false
	else
		game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(0.2), {Size = UDim2.new(0, 483, 0, 417)}):Play()
		Top.Visible = true
	end
end)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = SquareButton

GameLabel.Name = "Game"
GameLabel.Parent = TopFrame
GameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameLabel.BackgroundTransparency = 1.000
GameLabel.Position = UDim2.new(0.0734006539, 0, 0.5, 0)
GameLabel.Size = UDim2.new(0, 193, 0, 12)
GameLabel.Font = Enum.Font.GothamSemibold
GameLabel.Text = "Universal"
GameLabel.TextColor3 = Color3.fromRGB(138, 138, 138)
GameLabel.TextSize = 11.000
GameLabel.TextXAlignment = Enum.TextXAlignment.Left

Notifications.Name = "Notifications"
Notifications.Parent = TopFrame
Notifications.BackgroundTransparency = 1.000
Notifications.Position = UDim2.new(0.942028999, 0, 0.233333245, 0)
Notifications.Size = UDim2.new(0, 17, 0, 17)
Notifications.Image = "rbxassetid://3944670656"
Notifications.ScaleType = Enum.ScaleType.Fit

Frame.Parent = Notifications
Frame.BackgroundColor3 = Color3.fromRGB(255, 94, 94)
Frame.Position = UDim2.new(0, -2, 0, -1)
Frame.Size = UDim2.new(0, 5, 0, 5)
Frame.Visible = false

--[[



Help.Name = "Help"
Help.Parent = Toggle
Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help.Position = UDim2.new(0.910000026, 0, 0.200000003, 0)
Help.Size = UDim2.new(0, 12, 0, 12)
Help.Font = Enum.Font.GothamSemibold
Help.Text = "?"
Help.TextColor3 = Color3.fromRGB(0, 0, 0)
Help.TextSize = 11.000

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = Help


TanNonEnabled.Name = "TanNonEnabled"
TanNonEnabled.Parent = Top
TanNonEnabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TanNonEnabled.BackgroundTransparency = 1.000
TanNonEnabled.Position = UDim2.new(0.103519671, 0, 0, 0)
TanNonEnabled.Size = UDim2.new(0, 40, 0, 18)
TanNonEnabled.AutoButtonColor = false
TanNonEnabled.Font = Enum.Font.GothamSemibold
TanNonEnabled.Text = "Visuals"
TanNonEnabled.TextColor3 = Color3.fromRGB(138, 138, 138)
TanNonEnabled.TextSize = 10.000

]]

Top.Name = "Top"
Top.Parent = MainFrame
Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, 0.079136692, 0)
Top.Size = UDim2.new(0, 483, 0, 18)

TopLister.Name = "TopLister"
TopLister.Parent = Top
TopLister.FillDirection = Enum.FillDirection.Horizontal
TopLister.SortOrder = Enum.SortOrder.LayoutOrder
TopLister.Padding = UDim.new(0, 5)

UIPadding_3.Parent = Top
UIPadding_3.PaddingLeft = UDim.new(0, 10) 

local Library = {}

function Library:NewTab(Text)
	Text = Text or ""

	local TabEnabled = Instance.new("TextButton")
	TabEnabled.Name = "TabEnabled"
	TabEnabled.Parent = Top
	TabEnabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabEnabled.BackgroundTransparency = 1
	TabEnabled.Position = UDim2.new(0.0103519671, 0, 0, 0)
	TabEnabled.AutoButtonColor = false
	TabEnabled.Font = Enum.Font.GothamSemibold
	TabEnabled.Text = Text
	TabEnabled.TextSize = 11
	TabEnabled.TextColor3 = Color3.fromRGB(138, 138, 138)
	local TextBounds = game:GetService("TextService"):GetTextSize(Text, 11, Enum.Font.GothamSemibold, Vector2.new(math.huge, math.huge))
	TabEnabled.Size = UDim2.new(0, TextBounds.X + 1, 0, 18)

	local Container = Instance.new("Frame")
	local Left = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Right = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIPadding = Instance.new("UIPadding")

	Container.Name = Text
	Container.Parent = Containers
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0, 0, 0.12230216, 0)
	Container.Size = UDim2.new(0, 483, 0, 366)
	Container.Visible = true

	Left.Name = "Left"
	Left.Parent = Container
	Left.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0.0227743275, 0, 0.0192043111, 0)
	Left.Size = UDim2.new(0, 227, 0, 351)

	UIListLayout.Parent = Left
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 7)

	UIPadding.Parent = Left
	UIPadding.PaddingTop = UDim.new(0, 10)

	Right.Name = "Right"
	Right.Parent = Container
	Right.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(0.507246375, 0, 0.0192043111, 0)
	Right.Size = UDim2.new(0, 227, 0, 351)

	UIListLayout_3.Parent = Right
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 7)

	UIPadding_2.Parent = Right
	UIPadding_2.PaddingTop = UDim.new(0, 10)


	TabEnabled.MouseButton1Click:Connect(function()
		for i, v in next, Top:GetChildren() do
			if v:IsA("TextButton") then
				game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(138, 138, 138)}):Play()
			end
		end
		game:GetService("TweenService"):Create(TabEnabled, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		for i, v in next, Containers:GetChildren() do
			v.Visible = false
		end
		Container.Visible = true
	end)

	local Inside = {}

	--[[function Inside:Open()
		for i, v in next, Top:GetChildren() do
			if v:IsA("TextButton") then
				v.Visible = false
				print(v.Text .. " : Non Visible")
			end
			TabEnabled.Visible = true
			print(TabEnabled.Text .. " : Now Visible")
		end
	end]]

	function Inside:NewButton(Text, Callback, Position)
		Text = Text or "Text"
		Callback = Callback or function() end
		Position = Position or "Left"

		local Button = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")

		Button.Name = "Button"
		Button.Parent = Container:FindFirstChild(tostring(Position))
		Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Button.BorderColor3 = Color3.fromRGB(34, 34, 34)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0.0594713651, 0, 0.0284900293, 0)
		Button.Size = UDim2.new(0, 200, 0, 20)
		Button.AutoButtonColor = false
		Button.Font = Enum.Font.Gotham
		Button.Text = "Panic"
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 12.000

		UICorner_3.CornerRadius = UDim.new(0, 3)
		UICorner_3.Parent = Button

		Button.MouseButton1Click:Connect(function()
			Callback()
			game:GetService("TweenService"):Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
			wait(0.1)
			game:GetService("TweenService"):Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
		end)
	end

	function Inside:NewToggle(Text, State, Callback, Position)
		Text = Text or "Text"
		State = State or false
		Callback = Callback or function() end
		Position = Position or "Left"

		local Toggle = Instance.new("TextButton")
		local UICorner_4 = Instance.new("UICorner")
		local Frame_2 = Instance.new("Frame")
		local UICorner_5 = Instance.new("UICorner")
		local Frame_3 = Instance.new("Frame")
		local UICorner_6 = Instance.new("UICorner")

		Toggle.Name = Text
		Toggle.Parent = Container:FindFirstChild(Position)
		Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Toggle.BorderColor3 = Color3.fromRGB(34, 34, 34)
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0.0594713651, 0, 0.0284900293, 0)
		Toggle.Size = UDim2.new(0, 200, 0, 20)
		Toggle.AutoButtonColor = false
		Toggle.Font = Enum.Font.Gotham
		Toggle.Text = "         " .. Text
		Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.TextSize = 12.000
		Toggle.TextXAlignment = Enum.TextXAlignment.Left

		UICorner_4.CornerRadius = UDim.new(0, 3)
		UICorner_4.Parent = Toggle

		Frame_2.Parent = Toggle
		Frame_2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0, 7, 0.159999996, 0)
		Frame_2.Size = UDim2.new(0, 13, 0, 13)

		UICorner_5.CornerRadius = UDim.new(0, 3)
		UICorner_5.Parent = Frame_2

		Frame_3.Parent = Frame_2
		Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_3.BackgroundColor3 = Color3.fromRGB(51, 129, 255)
		Frame_3.BorderSizePixel = 0
		Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_3.Size = UDim2.new(0, 11, 0, 11)

		if State then
			Frame_3.BackgroundTransparency = 0
		else
			Frame_3.BackgroundTransparency = 1
		end

		UICorner_6.CornerRadius = UDim.new(0, 3)
		UICorner_6.Parent = Frame_3

		local Toggled = State

		Toggle.MouseButton1Click:Connect(function()
			Toggled = not Toggled
			if Toggled then
				game:GetService("TweenService"):Create(Frame_3, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
			else
				game:GetService("TweenService"):Create(Frame_3, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
			end
			Callback(Toggled)
		end)
	end

	function Inside:NewSlider(Text, minvalue, maxvalue, defvalue, Callback, Position)
		Text = Text or "Text"
		minvalue = minvalue or 0
		maxvalue = maxvalue or 0
		defvalue = defvalue or 0 
		Callback = Callback or 0
		Position = Position or "Left"

		local Slider = Instance.new("TextButton")
		local UICorner_8 = Instance.new("UICorner")
		local Frame_4 = Instance.new("Frame")
		local UICorner_9 = Instance.new("UICorner")

		Slider.Name = "Slider"
		Slider.Parent = Container:FindFirstChild(Position)
		Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Slider.BorderColor3 = Color3.fromRGB(34, 34, 34)
		Slider.BorderSizePixel = 0
		Slider.Position = UDim2.new(0.0594713651, 0, 0.0284900293, 0)
		Slider.Size = UDim2.new(0, 200, 0, 20)
		Slider.AutoButtonColor = false
		Slider.Font = Enum.Font.Gotham
		Slider.Text = Text
		Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
		Slider.TextSize = 12.000

		UICorner_8.CornerRadius = UDim.new(0, 3)
		UICorner_8.Parent = Slider

		Frame_4.Parent = Slider
		Frame_4.BackgroundColor3 = Color3.fromRGB(51, 129, 255)
		Frame_4.BackgroundTransparency = 0.700
		Frame_4.BorderSizePixel = 0
		Frame_4.Position = UDim2.new(0, 0, 0, 0)
		Frame_4.Size = UDim2.new(0, 0, 0, 20)

		UICorner_9.CornerRadius = UDim.new(0, 3)
		UICorner_9.Parent = Frame_4

		local Value = nil
		local down = false

		Slider.MouseButton1Down:Connect(function()
			down = true
			Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 200) * Frame_4.AbsoluteSize.X) +tonumber(minvalue)) or 0
			Slider.Text = Text .. " " .. tostring(Value) .. "%"    
			pcall(Callback, Value)
			Frame_4:TweenSize(UDim2.new(0, math.clamp(Mouse.X - Frame_4.AbsolutePosition.X, 0, 200), 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, .07)
			while game:GetService("RunService").RenderStepped:wait() and down do
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 200) * Frame_4.AbsoluteSize.X) +tonumber(minvalue)) or 0
				Slider.Text = Text .. " " .. tostring(Value) .. "%"        
				pcall(Callback, Value)
				Frame_4:TweenSize(UDim2.new(0, math.clamp(Mouse.X - Frame_4.AbsolutePosition.X, 0, 200), 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, .07)
			end
		end)

		game:GetService("UserInputService").InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 and down then
				down = false
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 200) * Frame_4.AbsoluteSize.X) +tonumber(minvalue)) or 0
				Slider.Text = Text .. " " .. tostring(Value) .. "%"    
				pcall(Callback, Value)
				Frame_4:TweenSize(UDim2.new(0, math.clamp(Mouse.X - Frame_4.AbsolutePosition.X, 0, 200), 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.1)
			end        
		end)
	end

	function Inside:NewDropdown(Text_1, Options, Callback, Position)
		Text_1 = Text_1 or ""
		Options = Options or {}
		Callback = Callback or function()end
		Position = Position or "Left"

		local Dropdown = Instance.new("TextButton")
		local UICorner_10 = Instance.new("UICorner")
		local Text = Instance.new("TextLabel")
		local Dotshorizontal = Instance.new("ImageLabel")
		local UIListLayout_2 = Instance.new("UIListLayout")

		Dropdown.Name = "Dropdown"
		Dropdown.Parent = Container:FindFirstChild(Position)
		Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Dropdown.BorderColor3 = Color3.fromRGB(34, 34, 34)
		Dropdown.BorderSizePixel = 0
		Dropdown.Position = UDim2.new(0.0594713651, 0, 0.259259254, 0)
		Dropdown.Size = UDim2.new(0, 200, 0, 20)
		Dropdown.AutoButtonColor = false
		Dropdown.Font = Enum.Font.Gotham
		Dropdown.Text = ""
		Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
		Dropdown.TextSize = 12.000
		Dropdown.ClipsDescendants = true

		UICorner_10.CornerRadius = UDim.new(0, 3)
		UICorner_10.Parent = Dropdown

		Text.Name = "Text"
		Text.Parent = Dropdown
		Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text.BackgroundTransparency = 1.000
		Text.Size = UDim2.new(0, 200, 0, 20)
		Text.Font = Enum.Font.Gotham
		Text.Text = Text_1
		Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		Text.TextSize = 12.000

		Dotshorizontal.Name = "Dots-horizontal"
		Dotshorizontal.Parent = Text
		Dotshorizontal.BackgroundTransparency = 1.000
		Dotshorizontal.Position = UDim2.new(0.894999981, 0, 0.0500000007, 0)
		Dotshorizontal.Size = UDim2.new(0, 18, 0, 19)
		Dotshorizontal.Image = "rbxassetid://4384401360"
		Dotshorizontal.ScaleType = Enum.ScaleType.Fit

		UIListLayout_2.Parent = Dropdown
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 3)

		local DropYSize = 20
		local DropdownOpen = false

		for i, v in next, Options do
			DropYSize = DropYSize + 24
			local Option = Instance.new("TextButton")
			local UICorner_11 = Instance.new("UICorner")

			Option.Name = "Option"
			Option.Parent = Dropdown
			Option.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			Option.BorderSizePixel = 0
			Option.Position = UDim2.new(0.0274999999, 0, 0.314285725, 0)
			Option.Size = UDim2.new(0, 190, 0, 20)
			Option.AutoButtonColor = false
			Option.Font = Enum.Font.Gotham
			Option.TextColor3 = Color3.fromRGB(255, 255, 255)
			Option.TextSize = 12.000
			Option.Text = v

			UICorner_11.CornerRadius = UDim.new(0, 3)
			UICorner_11.Parent = Option

			Option.MouseButton1Click:Connect(function()
				DropdownOpen = false
				game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2), {Size = UDim2.new(0, 200, 0, 20)}):Play()
				Callback(v)
			end)
		end


		Dropdown.MouseButton1Click:Connect(function()
			DropdownOpen = not DropdownOpen
			if DropdownOpen then
				game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2), {Size = UDim2.new(0, 200, 0, DropYSize)}):Play()
			else
				game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2), {Size = UDim2.new(0, 200, 0, 20)}):Play()
			end
		end)

	end

	return Inside
end
return Library
