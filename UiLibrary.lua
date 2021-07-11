local Location = game.Players.LocalPlayer.PlayerGui

local Camera = workspace.CurrentCamera

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

local TanNonEnabled = Instance.new("TextButton")
local UIPadding_3 = Instance.new("UIPadding")

local AimbotCheck = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
MainFrame.BackgroundTransparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0,0.5, 0)
MainFrame.Size = UDim2.new(0, 483, 0, 417)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false

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
SquareButton.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
SquareButton.Position = UDim2.new(0.0227743275, 0, 0.233333349, 0)
SquareButton.Size = UDim2.new(0, 17, 0, 17)
SquareButton.AutoButtonColor = false
SquareButton.Font = Enum.Font.SourceSans
SquareButton.Text = ""
SquareButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SquareButton.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = SquareButton

GameLabel.Name = "Game"
GameLabel.Parent = TopFrame
GameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameLabel.BackgroundTransparency = 1.000
GameLabel.Position = UDim2.new(0.0734006539, 0, 0.5, 0)
GameLabel.Size = UDim2.new(0, 193, 0, 12)
GameLabel.Font = Enum.Font.GothamSemibold
GameLabel.Text = ""
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

function Library:Loader(Text)
	GameLabel.Text = Text

	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")

	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Parent = ScreenGui
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0, 306, 0, 249)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=5531272999"
	ImageLabel.ScaleType = Enum.ScaleType.Slice
	ImageLabel.SliceCenter = Rect.new(250, 250, 250, 250)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = 1

	game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()

	TextLabel.Parent = ImageLabel
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.173202619, 0, 0.642570257, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 63)
	TextLabel.Font = Enum.Font.Code
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 17.000

	local Inside = {}

	function Inside:SetText(Value)
		TextLabel.Text = Value
	end

	function Inside:Toggle(Value)
		if Value then
			game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
			wait(0.3)
			TextLabel.Text = "Finished Loading!"
			game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
			wait(1)
			game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
			wait(0.7)
			game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.6), {ImageTransparency = 1}):Play()
			wait(1)
			ImageLabel:Destroy()
			MainFrame.Visible = true
			game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(0.6), {BackgroundTransparency = 0}):Play()
		end
	end

	return Inside
end

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

	local ScrollingFrame = Instance.new("ScrollingFrame")
	local Left = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Right = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")

	ScrollingFrame.Parent = Containers
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 0, 0.122000001, 0)
	ScrollingFrame.Size = UDim2.new(0, 483, 0, 366)
	ScrollingFrame.ScrollBarThickness = 0
	ScrollingFrame.Visible = false

	Left.Name = "Left"
	Left.Parent = ScrollingFrame
	Left.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Left.BackgroundTransparency = 1.000
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0.002, 0, 0.015, 0)
	Left.Size = UDim2.new(0, 241, 0, 360)

	UIListLayout.Parent = Left
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	Right.Name = "Right"
	Right.Parent = ScrollingFrame
	Right.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Right.BackgroundTransparency = 1.000
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(0.501, 0, 0.015, 0)
	Right.Size = UDim2.new(0, 241, 0, 360)

	UIListLayout_2.Parent = Right
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 10)

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
		ScrollingFrame.Visible = true
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
	
	function Inside:NewSection(Text)
		local FinalSize = 18
		
		local Section = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		
		Section.Name = "Section"
		Section.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		Section.BorderSizePixel = 0
		
		local Label = Instance.new"TextLabel"
		local Features = Instance.new"Frame"
		local TextBounds = game:GetService("TextService"):GetTextSize(Text, 11, Enum.Font.Gotham, Vector2.new(math.huge, math.huge))
		local MakeOverFrame = Instance.new"Frame"

		Label.Name = "Label"
		Label.Parent = Section
		Label.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0.075, 0, 0, 0)
		Label.Font = Enum.Font.Gotham
		Label.Text = Text
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextSize = 11.000
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.ZIndex = 2
		Label.Size = UDim2.new(0, TextBounds.X, 0, 1)
		
		MakeOverFrame.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
		MakeOverFrame.Size = UDim2.new(0, 220, 0, 1)
		MakeOverFrame.Position = UDim2.new(0, 0, 0, 0)
		MakeOverFrame.Parent = Section
		MakeOverFrame.BorderSizePixel = 0

		Features.Name = "Features"
		Features.Parent = Section
		Features.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Features.BackgroundTransparency = 1.000

		UIListLayout.Parent = Features
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)

		UIPadding.Parent = Features
		UIPadding.PaddingTop = UDim.new(0, 12)
		
		local Parent = Left
		if Parent.UIListLayout.AbsoluteContentSize.Y > Right.UIListLayout.AbsoluteContentSize.Y then
			Parent = Right
		end
		
		Section.Parent = Parent
		
		local function UpdateSectionSize(Amount)
			FinalSize = FinalSize + (Amount + 5)
			game:GetService("TweenService"):Create(Section, TweenInfo.new(0.2), {Size = UDim2.new(0, 220, 0, FinalSize)}):Play()
			wait(0.2)
			Section.Size = UDim2.new(0, 220, 0, FinalSize)
			Features.Size = UDim2.new(0, 220, 0, FinalSize)
		end
		
		local function RemoveSectionSize(Amount)
			FinalSize = FinalSize - (Amount + 5)
			game:GetService("TweenService"):Create(Section, TweenInfo.new(0.2), {Size = UDim2.new(0, 220, 0, FinalSize)}):Play()
			wait(0.2)
			Section.Size = UDim2.new(0, 220, 0, FinalSize)
			Features.Size = UDim2.new(0, 220, 0, FinalSize)
		end
		
		local i1 = {}
		
		function i1:NewButton(Text, Callback)
			UpdateSectionSize(15)
			Text = Text or "Text"
			Callback = Callback or function() end

			local Button = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")

			Button.Name = "Button"
			Button.Parent = Features
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
		
		function i1:NewToggle(Text, State, Callback)
			UpdateSectionSize(20)
			Text = Text or "Text"
			State = State or false
			Callback = Callback or function() end

			local Toggle = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local Frame_2 = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local Frame_3 = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")

			Toggle.Name = Text
			Toggle.Parent = Features
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
			Frame_3.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
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
		
		function i1:NewSlider(Text, minvalue, maxvalue, defvalue, Callback)
			UpdateSectionSize(20)
			Text = Text or "Text"
			minvalue = minvalue or 0
			maxvalue = maxvalue or 0
			defvalue = defvalue or 0 
			Callback = Callback or 0

			local Slider = Instance.new("TextButton")
			local UICorner_8 = Instance.new("UICorner")
			local Frame_4 = Instance.new("Frame")
			local UICorner_9 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = Features
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
			Frame_4.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
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
		
		function i1:NewDropdown(Text_1, Options, Callback)
			UpdateSectionSize(20)
			Text_1 = Text_1 or ""
			Options = Options or {}
			Callback = Callback or function()end

			local Dropdown = Instance.new("TextButton")
			local UICorner_10 = Instance.new("UICorner")
			local Text = Instance.new("TextLabel")
			local Dotshorizontal = Instance.new("ImageLabel")
			local UIListLayout_2 = Instance.new("UIListLayout")

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Features
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

			local DropYSize = 30
			local DropdownOpen = false

			for i, v in next, Options do
				DropYSize = DropYSize + 22
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
					RemoveSectionSize(DropYSize - 23)
				end)
			end


			Dropdown.MouseButton1Click:Connect(function()
				DropdownOpen = not DropdownOpen
				if DropdownOpen then
					game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2), {Size = UDim2.new(0, 200, 0, DropYSize)}):Play()
					UpdateSectionSize(DropYSize - 23)
				else
					game:GetService("TweenService"):Create(Dropdown, TweenInfo.new(0.2), {Size = UDim2.new(0, 200, 0, 20)}):Play()
					RemoveSectionSize(DropYSize - 23)
				end
			end)
		end
		
		function i1:CreateESPPreview()
			UpdateSectionSize(320)
			Features:FindFirstChildOfClass("UIPadding"):Destroy()
			Features:FindFirstChildOfClass("UIListLayout"):Destroy()

			local Preview = Instance.new("ImageLabel")
			local CoverupHealth = Instance.new("Frame")
			local CoverupName = Instance.new("Frame")
			local CoverupBox = Instance.new("Frame")

			Preview.Name = "Preview"
			Preview.Parent = Features
			Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Preview.BackgroundTransparency = 1.000
			Preview.BorderSizePixel = 0
			Preview.Position = UDim2.new(0.187224671, 0, 0.0370370373, 0)
			Preview.Size = UDim2.new(0, 142, 0, 293)
			Preview.Image = "rbxassetid://7036672328"
			Preview.ScaleType = Enum.ScaleType.Slice
			Preview.SliceCenter = Rect.new(255, 255, 255, 255)

			CoverupHealth.Name = "CoverupHealth"
			CoverupHealth.Parent = Preview
			CoverupHealth.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			CoverupHealth.BackgroundTransparency = 0.1
			CoverupHealth.BorderSizePixel = 0
			CoverupHealth.Position = UDim2.new(0.112676054, 0, 0.00103384804, 0)
			CoverupHealth.Size = UDim2.new(0, 100, 0, 23)

			CoverupName.Name = "CoverupName"
			CoverupName.Parent = Preview
			CoverupName.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			CoverupName.BackgroundTransparency = 0.1
			CoverupName.BorderSizePixel = 0
			CoverupName.Position = UDim2.new(0.112676054, 0, 0.0692932382, 0)
			CoverupName.Size = UDim2.new(0, 100, 0, 23)

			CoverupBox.Name = "CoverupBox"
			CoverupBox.Parent = Preview
			CoverupBox.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			CoverupBox.BackgroundTransparency = 0.1
			CoverupBox.BorderSizePixel = 0
			CoverupBox.Position = UDim2.new(0.049, 0,0.134, 0)
			CoverupBox.Size = UDim2.new(0, 127, 0, 250)

			local InsidePreview = {}

			function InsidePreview:Boxes(State, Callback)
				local Boxes = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Frame_2 = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")

				Boxes.Name = "Boxes"
				Boxes.Parent = Features
				Boxes.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Boxes.BackgroundTransparency = 1.000
				Boxes.BorderColor3 = Color3.fromRGB(34, 34, 34)
				Boxes.BorderSizePixel = 0
				Boxes.Position = UDim2.new(0.048594743, 0, 0.894678116, 0)
				Boxes.Size = UDim2.new(0, 63, 0, 20)
				Boxes.AutoButtonColor = false
				Boxes.Font = Enum.Font.Gotham
				Boxes.Text = "         Boxes"
				Boxes.TextColor3 = Color3.fromRGB(255, 255, 255)
				Boxes.TextSize = 12.000
				Boxes.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Boxes

				Frame.Parent = Boxes
				Frame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0, 7, 0.159999996, 0)
				Frame.Size = UDim2.new(0, 13, 0, 13)

				UICorner_2.CornerRadius = UDim.new(0, 3)
				UICorner_2.Parent = Frame

				Frame_2.Parent = Frame
				Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame_2.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
				Frame_2.BorderSizePixel = 0
				Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
				Frame_2.Size = UDim2.new(0, 11, 0, 11)
				Frame_2.BackgroundTransparency = 0.8

				UICorner_3.CornerRadius = UDim.new(0, 3)
				UICorner_3.Parent = Frame_2

				if State then
					Frame_2.BackgroundTransparency = 0
				else
					Frame_2.BackgroundTransparency = 1
				end

				local Toggled = State

				Boxes.MouseButton1Click:Connect(function()
					Toggled = not Toggled
					if Toggled then
						game:GetService("TweenService"):Create(Frame_2, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
						game:GetService("TweenService"):Create(CoverupBox, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
					else
						game:GetService("TweenService"):Create(Frame_2, TweenInfo.new(0.1), {BackgroundTransparency = 0.8}):Play()
						game:GetService("TweenService"):Create(CoverupBox, TweenInfo.new(0.1), {BackgroundTransparency = 0.1}):Play()
					end
					Callback(Toggled)
				end)
			end
			function InsidePreview:Names(State, Callback)
				local Names = Instance.new("TextButton")
				local UICorner_4 = Instance.new("UICorner")
				local Frame_3 = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local Frame_4 = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")

				Names.Name = "Names"
				Names.Parent = Features
				Names.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Names.BackgroundTransparency = 1.000
				Names.BorderColor3 = Color3.fromRGB(34, 34, 34)
				Names.BorderSizePixel = 0
				Names.Position = UDim2.new(0.326101452, 0, 0.895042896, 0)
				Names.Size = UDim2.new(0, 69, 0, 20)
				Names.AutoButtonColor = false
				Names.Font = Enum.Font.Gotham
				Names.Text = "         Names"
				Names.TextColor3 = Color3.fromRGB(255, 255, 255)
				Names.TextSize = 12.000
				Names.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_4.CornerRadius = UDim.new(0, 3)
				UICorner_4.Parent = Names

				Frame_3.Parent = Names
				Frame_3.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				Frame_3.BorderSizePixel = 0
				Frame_3.Position = UDim2.new(0, 7, 0.159999996, 0)
				Frame_3.Size = UDim2.new(0, 13, 0, 13)

				UICorner_5.CornerRadius = UDim.new(0, 3)
				UICorner_5.Parent = Frame_3

				Frame_4.Parent = Frame_3
				Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame_4.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
				Frame_4.BorderSizePixel = 0
				Frame_4.Position = UDim2.new(0.5, 0, 0.5, 0)
				Frame_4.Size = UDim2.new(0, 11, 0, 11)
				Frame_4.BackgroundTransparency = 0.8

				UICorner_6.CornerRadius = UDim.new(0, 3)
				UICorner_6.Parent = Frame_4

				if State then
					Frame_4.BackgroundTransparency = 0
				else
					Frame_4.BackgroundTransparency = 1
				end

				local Toggled = State

				Names.MouseButton1Click:Connect(function()
					Toggled = not Toggled
					if Toggled then
						game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
						game:GetService("TweenService"):Create(CoverupName, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
					else
						game:GetService("TweenService"):Create(Frame_4, TweenInfo.new(0.1), {BackgroundTransparency = 0.8}):Play()
						game:GetService("TweenService"):Create(CoverupName, TweenInfo.new(0.1), {BackgroundTransparency = 0.1}):Play()
					end
					Callback(Toggled)
				end)
			end
			function InsidePreview:Health(State, Callback)
				local Health = Instance.new("TextButton")
				local UICorner_7 = Instance.new("UICorner")
				local Frame_5 = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local Frame_6 = Instance.new("Frame")
				local UICorner_9 = Instance.new("UICorner")

				Health.Name = "Health"
				Health.Parent = Features
				Health.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Health.BackgroundTransparency = 1.000
				Health.BorderColor3 = Color3.fromRGB(34, 34, 34)
				Health.BorderSizePixel = 0
				Health.Position = UDim2.new(0.630066216, 0, 0.895042896, 0)
				Health.Size = UDim2.new(0, 71, 0, 20)
				Health.AutoButtonColor = false
				Health.Font = Enum.Font.Gotham
				Health.Text = "         Health"
				Health.TextColor3 = Color3.fromRGB(255, 255, 255)
				Health.TextSize = 12.000
				Health.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_7.CornerRadius = UDim.new(0, 3)
				UICorner_7.Parent = Health

				Frame_5.Parent = Health
				Frame_5.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				Frame_5.BorderSizePixel = 0
				Frame_5.Position = UDim2.new(0, 7, 0.159999996, 0)
				Frame_5.Size = UDim2.new(0, 13, 0, 13)

				UICorner_8.CornerRadius = UDim.new(0, 3)
				UICorner_8.Parent = Frame_5

				Frame_6.Parent = Frame_5
				Frame_6.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame_6.BackgroundColor3 = Color3.fromRGB(167, 18, 20)
				Frame_6.BorderSizePixel = 0
				Frame_6.Position = UDim2.new(0.5, 0, 0.5, 0)
				Frame_6.Size = UDim2.new(0, 11, 0, 11)
				Frame_6.BackgroundTransparency = 0.8

				UICorner_9.CornerRadius = UDim.new(0, 3)
				UICorner_9.Parent = Frame_6

				if State then
					Frame_6.BackgroundTransparency = 0
				else
					Frame_6.BackgroundTransparency = 1
				end

				local Toggled = State

				Health.MouseButton1Click:Connect(function()
					Toggled = not Toggled
					if Toggled then
						game:GetService("TweenService"):Create(Frame_6, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
						game:GetService("TweenService"):Create(CoverupHealth, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
					else
						game:GetService("TweenService"):Create(Frame_6, TweenInfo.new(0.1), {BackgroundTransparency = 0.8}):Play()
						game:GetService("TweenService"):Create(CoverupHealth, TweenInfo.new(0.1), {BackgroundTransparency = 0.1}):Play()
					end
					Callback(Toggled)
				end)
			end

			return InsidePreview
		end
		
		return i1
	end

	return Inside
end
return Library
