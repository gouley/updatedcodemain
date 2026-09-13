local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Alternate Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AlternateHub", IntroEnabled = false})

local WS = game:GetService("Workspace")
local Players = game:GetService("Players")
--local WSPlayers = WS.Players
local Player = Players.LocalPlayer
--local Character = WSPlayers:FindFirstChild(string.match(Players.LocalPlayer.Name, Players.LocalPlayer.Name))

local OwnChallengeBox = game:GetService("ReplicatedStorage").ChallengeBox:Clone()
OwnChallengeBox.Parent = WS

local TextString = "hello" -- Put the text you would like to say
local TextString2 = "im" -- Again, put the text you would like to say
local TextString3 = "snack" -- You get my point, don't you?
local TextString4 = "from" -- ...
local TextString5 = "crosstale" -- Stop, please.

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Miscellaneous",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

local Section2 = Tab:AddSection({
	Name = "Teleports"
})

local Section3 = Tab:AddSection({
	Name = "Characters (NOT CUSTOMS)"
})

local Section4 = Tab:AddSection({
	Name = "Customs"
})

local Section5 = Tab2:AddSection({
	Name = "Main"
})

local Section6 = Tab2:AddSection({
	Name = "Mini/Fun Features"
})

local Section7 = Tab2:AddSection({
	Name = "Animations"
})

local Section8 = Tab2:AddSection({
	Name = "Sans"
})

local Section9 = Tab2:AddSection({
	Name = "Skins"
})

--[[
local Section10 = Tab2:AddSection({
	Name = "Customize"
})
--]]

Section:AddButton({
	Name = "Godmode (Spawn in for it to work)",
	Callback = function()
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display:Destroy()

        OrionLib:MakeNotification({
            Name = "Done!",
            Content = "Godmode applied.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
  	end    
})

Section:AddButton({
	Name = "Break Game (Recommend using it when spawned in)",
	Callback = function()
        Player.Char:Destroy()
        Player.Life:Destroy()
        
        OrionLib:MakeNotification({
            Name = "Enjoy... I guess?",
            Content = "enjoy being pretty much in a bugged state i guess",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
  	end    
})

Section:AddButton({
	Name = "No Stun",
	Callback = function()
spawn(function()
    repeat wait()
        for _,v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Data:GetChildren()) do
            if v.Name == "Stunned" and v.Value == true then
                v.Value = false
            end
        end
    until false
end)
  	end    
})

Section:AddButton({
	Name = "No Knockback",
	Callback = function()
spawn(function()
    repeat wait()
        for _,v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Data:GetChildren()) do
            if v.Name == "KB" then
                v:Destroy()
            end
        end
    until false
end)
  	end    
})

Section:AddButton({
	Name = "Infinite Stamina",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Data").Stamina:Destroy()
  	end    
})

Section:AddButton({
	Name = "Infinite Dodge Bar (Dodge Characters)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Data").DodgeBar:Destroy()
  	end    
})


Section2:AddButton({
	Name = "Map",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(0, -8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
  	end    
})

Section2:AddButton({
	Name = "XTale (WARNING: YOU WILL FALL!)",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(48608.8984, 123.550003, 26838.3008, -0.998772502, -0.00154217798, 0.049515713, -1.09560206e-05, 0.999522209, 0.0309093539, -0.0495397188, 0.0308708604, -0.998295307))
  	end    
})

Section2:AddButton({
	Name = "Judgement Hall",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(33382.6016, -300.813995, -20.2985992, -0.786295891, 0.00546765327, 0.617825866, -0.0983009636, 0.986116469, -0.133832842, -0.609979987, -0.16596511, -0.774841905))
  	end    
})

Section2:AddButton({
	Name = "Black (WARNING: YOU WILL FALL! 2X)",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(40159.8984, 125.550003, 16067.7998, -0.604410887, -0.086166352, 0.79199928, 0.0119306259, 0.993043303, 0.117143944, -0.796583474, 0.080252111, -0.599178195))
  	end    
})

Section2:AddButton({
	Name = "A-Train",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-477.556, 152.287003, -51588.8008, 1, 0, 0, 0, 1, 0, 0, 0, 1))
  	end    
})

Section2:AddButton({
	Name = "FNF (WARNING: YOU WILL FALL! 3X)",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(6624.87012, 6.84204006, -78.0588989, 0.950553119, -0.00252741901, 0.310551703, 3.00075626e-05, 0.999967635, 0.00804636907, -0.310562015, -0.00763918227, 0.950522423))
  	end    
})

Section2:AddButton({
	Name = "Challenge Box (NON FE)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-773.427979, 20.3535042, -2616.20166, 0, 0, -1, 0, 1, 0, 1, 0, 0))
  	end    
})

Section3:AddDropdown({
	Name = "Character (For spawning in)",
	Default = "",
	Options = {"Asgore", "Sans", "XTCross", "GTGaster", "GTFrisk", "SSChara", "XTFrisk"},
	Callback = function(Value)
	game:GetService("ReplicatedStorage").Char:FireServer(Value)

game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
	end    
})

Section4:AddButton({
	Name = "Last Breath Sans (Use with Sans)",
	Callback = function()
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.TextLabel.Text = "Last Breath Sans"
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.Health.Bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.Health.KR:Destroy()

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://9897957107"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

spawn(function()
			repeat wait()
				for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame:GetChildren()) do
					if v.Name == "Page" and v.Text == "Bones" then
                        v.Text = "Normal"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["1"].TextLabel.Text = "Z"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["1"].Holdable.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["2"].TextLabel.Text = "X"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["3"].TextLabel.Text = "C"
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["2"]:Destroy()
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["3"]:Destroy()
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["4"]:Destroy()
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["5"]:Destroy()
					end
				end
			until false
		end)

spawn(function()
			repeat wait()
				for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame:GetChildren()) do
					if v.Name == "Page" and v.Text == "Blasters" then
                        --v.Text = "Normal"
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["2"]:Destroy()
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["3"]:Destroy()
--game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["4"]:Destroy()
					end
				end
			until false
		end)

--[[
spawn(function()
			repeat wait()
				for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame:GetChildren()) do
					if v.Name == "Page" and v.Text == "Telekinesis" then
                        v.Text = "Normal"
					end
				end
			until false
		end)
--]]

game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Mode.Text = "Press Q or E to switch between modes."
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Mode.Font = Enum.Font.Arcade
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Text = "Normal"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Att.Text = "Attack: 1"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Def.Text = "Defense: 1"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Warn.Text = "Phase 1"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Warn.TextTransparency = 0
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.Level.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.Level.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.Level.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.Level.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina:WaitForChild("UICorner"):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina:WaitForChild("UIStroke"):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina:WaitForChild("UICorner"):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina:WaitForChild("UIStroke"):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT:WaitForChild("UICorner")
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT:WaitForChild("UIStroke")
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.Level:WaitForChild("UICorner")
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.Level:WaitForChild("UIGradient")
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.Level.BorderColor3 = Color3.fromRGB(255, 255, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.ULT.Level.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame:WaitForChild("UIGradient"):Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame:WaitForChild("UICorner"):Destroy()

local Highlight = Instance.new("Highlight", game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name))
Highlight.FillTransparency = 1
Highlight.OutlineColor = Color3.fromRGB(0, 0, 0)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "z" then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://9898013851"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)

local omgnil = nil
local omgstring = "Bones"
local omgstring2 = "Bonespam"
local omgvector = Vector3.new(252.7496795654297, 4.918358325958252, 93.03043365478516)

game:GetService("ReplicatedStorage").Sans.Projectile:FireServer(omgnil, omgstring, omgstring2, omgvector)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then

local omgnil = nil
local omgstring = "Blasters"
local omgstring2 = "Blast1"
local omgvector = Vector3.new(-434.47100830078125, 136.35198974609375, -51554.65234375)

game:GetService("ReplicatedStorage").Sans.Projectile:FireServer(omgnil, omgstring, omgstring2, omgvector)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then

local omgnil = nil
local omgvector = Vector3.new(-100.44563293457031, 8.750448226928711, 78.25902557373047)

game:GetService("ReplicatedStorage").Sans.Tele:FireServer(omgnil, omgvector)
	end
end)

wait(11.5)
k:Stop()
  	end    
})

Section4:AddButton({
	Name = "Ink Sans (Use with Sans)",
	Callback = function()
		loadstring(game:HttpGetAsync("https://pastebin.com/raw/PQE42DMn"))()
  	end    
})

Section5:AddButton({
	Name = "Quick Reset",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
  	end    
})

Section5:AddButton({
	Name = "Quick Reset V2",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):Destroy()
  	end    
})

Section5:AddButton({
	Name = "Say Text (NON-FE)",
	Callback = function()
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString
        wait(0.75)
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString2
        wait(0.75)
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString3
        wait(0.75)
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString4
        wait(0.75)
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString5
        wait(0.75)
        game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = ""
  	end    
})

Section5:AddButton({
	Name = "Say Text V2",
	Callback = function()
game.Players:Chat((TextString))
        wait(0.75)
game.Players:Chat((TextString2))
        wait(0.75)
game.Players:Chat((TextString3))
        wait(0.75)
game.Players:Chat((TextString4))
        wait(0.75)
game.Players:Chat((TextString5))
        wait(0.75)
game.Players:Chat((""))
  	end    
})

Section5:AddButton({
	Name = "Custom Humanoid (BUGGY)",
	Callback = function()
       game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Parent = workspace
   local OldHumanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")

local NewHumanoid = Instance.new("Humanoid")
NewHumanoid.MaxHealth = 100
NewHumanoid.Health = 100
NewHumanoid.JumpPower = 50
NewHumanoid.WalkSpeed = 16
--NewHumanoid.RigType = Enum.HumanoidRigType.R15
NewHumanoid.Parent = game:GetService("Players").LocalPlayer.Character

local HumanoidDescription = Instance.new("HumanoidDescription")
HumanoidDescription.Parent = NewHumanoid

-- Accessories
HumanoidDescription.BackAccessory = OldHumanoid.HumanoidDescription.BackAccessory
HumanoidDescription.FaceAccessory = OldHumanoid.HumanoidDescription.FaceAccessory
HumanoidDescription.FrontAccessory = OldHumanoid.HumanoidDescription.FrontAccessory
HumanoidDescription.HairAccessory = OldHumanoid.HumanoidDescription.HairAccessory
HumanoidDescription.HatAccessory = OldHumanoid.HumanoidDescription.HatAccessory
HumanoidDescription.NeckAccessory = OldHumanoid.HumanoidDescription.NeckAccessory
HumanoidDescription.ShouldersAccessory = OldHumanoid.HumanoidDescription.ShouldersAccessory
HumanoidDescription.WaistAccessory = OldHumanoid.HumanoidDescription.WaistAccessory
HumanoidDescription.BodyTypeScale = OldHumanoid.HumanoidDescription.BodyTypeScale

-- Scales
HumanoidDescription.DepthScale = OldHumanoid.HumanoidDescription.DepthScale
HumanoidDescription.HeadScale = OldHumanoid.HumanoidDescription.HeadScale
HumanoidDescription.HeightScale = OldHumanoid.HumanoidDescription.HeightScale
HumanoidDescription.ProportionScale = OldHumanoid.HumanoidDescription.ProportionScale
HumanoidDescription.WidthScale = OldHumanoid.HumanoidDescription.WidthScale

-- Animations
HumanoidDescription.ClimbAnimation = OldHumanoid.HumanoidDescription.ClimbAnimation
HumanoidDescription.FallAnimation = OldHumanoid.HumanoidDescription.FallAnimation
HumanoidDescription.IdleAnimation = OldHumanoid.HumanoidDescription.IdleAnimation
HumanoidDescription.JumpAnimation = OldHumanoid.HumanoidDescription.JumpAnimation
HumanoidDescription.MoodAnimation = OldHumanoid.HumanoidDescription.MoodAnimation
HumanoidDescription.RunAnimation = OldHumanoid.HumanoidDescription.RunAnimation
HumanoidDescription.SwimAnimation = OldHumanoid.HumanoidDescription.SwimAnimation
HumanoidDescription.WalkAnimation = OldHumanoid.HumanoidDescription.WalkAnimation

-- Body Parts
HumanoidDescription.Face = OldHumanoid.HumanoidDescription.Face
HumanoidDescription.Head = OldHumanoid.HumanoidDescription.Head
HumanoidDescription.LeftArm = OldHumanoid.HumanoidDescription.LeftArm
HumanoidDescription.LeftLeg = OldHumanoid.HumanoidDescription.LeftLeg
HumanoidDescription.RightArm = OldHumanoid.HumanoidDescription.RightArm
HumanoidDescription.RightLeg = OldHumanoid.HumanoidDescription.RightLeg
HumanoidDescription.Torso = OldHumanoid.HumanoidDescription.Torso

local Animator = OldHumanoid.Animator:Clone()
Animator.Parent = NewHumanoid
--Animator.EvaluationThrottled = OldHumanoid.Animator.EvaluationThrottled

OldHumanoid.Parent = workspace
OldHumanoid:Destroy()

workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head")

local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Space then
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)
  	end    
})

Section6:AddButton({
	Name = "Old Freeze (Use when spawned in)",
	Callback = function()
		game:GetService("Workspace").Players.LocalPlayer.Character:WaitForChild("Data"):Destroy()
	end    
})

Section6:AddButton({
	Name = "New Freeze (Use when spawned in 2X)",
	Callback = function()
		game:GetService("Workspace").Players.LocalPlayer.Character:WaitForChild("Humanoid").Animator:Destroy()
	end    
})

Section6:AddButton({
	Name = "Weird Rotation (Use when spawned in 3X) (NON-FE)",
	Callback = function()
		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("Part") and v.Name == "HumanoidRootPart" then
		v.Position -= Vector3.new(0.01, 0.01, 0.01)
					end
				end
			until false
			end)
		end 
})

Section6:AddButton({
	Name = "Anchor HumanoidRootPart",
	Callback = function()
		spawn(function()
			repeat wait()
		for _, v in pairs( game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("Part") and v.Name == "HumanoidRootPart" then
		v.Ancored = true
					end
				end
			until false
			end)
		end 
})

Section6:AddButton({
	Name = "Collide With HumanoidRootPart",
	Callback = function()
		spawn(function()
			repeat wait()
		for _, v in pairs( game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("Part") and v.Name == "HumanoidRootPart" then
		v.CanCollide = true
					end
				end
			until false
			end)
		end 
})

Section6:AddButton({
	Name = "Warn Sign (NON-FE)",
	Callback = function()
        local WarnSign = game:GetService("ReplicatedStorage").Warn:Clone()
		WarnSign.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head

		WarnSign.Enabled = true
  	end    
})

Section6:AddButton({
	Name = "Warn Effect (Requires Warn Sign)",
	Callback = function()
		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head:GetChildren()) do -- Change "Dietrich42478" with your username
		if v.Name == "Warn" then
			v.Enabled = true
			wait(.1)
			v.Enabled = false
			wait(.1)
			v.Enabled = true
			wait(.1)
			v.Enabled = false
			wait(.1)
			v.Enabled = true
			wait(.1)
			v.Enabled = false
			wait(.1)
			v.Enabled = true
			wait(.1)
			v.Enabled = false
					end
				end
			until false
			end)
  	end    
})

Section6:AddButton({
	Name = "RGB Soul",
	Callback = function()
        game.Players.LocalPlayer.Char.Value = "Marisa"
        game.Players.LocalPlayer.Character:WaitForChild("Torso"):Destroy()
  	end    
})

Section6:AddToggle({
	Name = "Locked View (Cutscene)",
	Default = false,
	Callback = function(Value)
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):WaitForChild("Data").Cutscene.Value = Value
  	end    
})


Section7:AddButton({
	Name = "Default Dance",
	Callback = function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://9239735674"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
  	end    
})

Section7:AddButton({
	Name = "A-Train",
	Callback = function()
		local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://11472288261"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
  	end    
})

Section7:AddButton({
	Name = "GT!Frisk Phase 2 Cutscene Idle",
	Callback = function()
		local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://9897957107"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
  	end    
})

Section7:AddButton({
	Name = "Shrug",
	Callback = function()
		local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://9898013851"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
  	end    
})

--[[
Section7:AddButton({
	Name = "Semi-Freeze Blasters",
	Callback = function()	
spawn(function()
	repeat wait()
for _, v in pairs(game:GetService("Workspace").Moves:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
if v.Name == "Blaster" or "Blaster2" then
	local Blaster = v
--[[
	Blaster.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
	Blaster.HumanoidRootPart.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
	Blaster.Head.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
--]]

--[[
	Blaster.AnimationController:Destroy()
	Blaster.AnimSaves:Destroy()
  --Blaster.Part.Size = Vector3.new(math.huge, math.huge, math.huge)
			end
		end
	until false
	end)
end
})
--]]
--]]


Section8:AddButton({
	Name = "Ghost!Sans (DON'T DASH OR TP, ELSE IT WILL BREAK!)",
	Callback = function()
		spawn(function()
			repeat wait()
				for _,v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do
					if v:IsA("Humanoid") then
						local omgnil1 = nil
local omgstring2 = "W"
local omgboolean3 = true

game:GetService("ReplicatedStorage").Sans.Dash:InvokeServer(omgnil1, omgstring2, omgboolean3)
wait(1)
local omgnil1 = nil
local omgstring2 = "W"
local omgboolean3 = true

game:GetService("ReplicatedStorage").Sans.Dash:InvokeServer(omgnil1, omgstring2, omgboolean3)
wait(1)
local omgnil1 = nil
local omgstring2 = "W"
local omgboolean3 = true

game:GetService("ReplicatedStorage").Sans.Dash:InvokeServer(omgnil1, omgstring2, omgboolean3)
wait(1)
local omgnil1 = nil
local omgstring2 = "W"
local omgboolean3 = true

game:GetService("ReplicatedStorage").Sans.Dash:InvokeServer(omgnil1, omgstring2, omgboolean3)
wait(1)
local omgnil1 = nil
local omgstring2 = "W"
local omgboolean3 = true

game:GetService("ReplicatedStorage").Sans.Dash:InvokeServer(omgnil1, omgstring2, omgboolean3)
wait(1)
					end
				end
			until game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Data.RunStamina <= 2
		end)

  	end    
})

Section8:AddButton({
	Name = "Spawn Bone",
	Callback = function()
local hehehehaw = "Bone"
local jajaez = true

game:GetService("ReplicatedStorage").Sans.Spawn:FireServer(hehehehaw, jajaez)
  	end    
})

Section8:AddButton({
	Name = "Despawn Bone",
	Callback = function()
local hehehehaw = "Bone"
local jajaez = false

game:GetService("ReplicatedStorage").Sans.Spawn:FireServer(hehehehaw, jajaez)
  	end    
})

Section9:AddButton({
	Name = "Use Akuma (Asgore)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.Asgore.Akuma.Value = true
game:GetService("Players").LocalPlayer.Skins.Asgore.Value = "Akuma"
  	end    
})

Section9:AddButton({
	Name = "Use OT (Sans)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.Sans.OT.Value = true
game:GetService("Players").LocalPlayer.Skins.Sans.Value = "OT"
  	end    
})

Section9:AddButton({
	Name = "Use Reapertale (XT Cross)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.XTCross.Reapertale.Value = true
game:GetService("Players").LocalPlayer.Skins.XTCross.Value = "Reapertale"
  	end    
})

Section9:AddButton({
	Name = "Use XGaster (GT Gaster)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.GTGaster.XGaster.Value = true
game:GetService("Players").LocalPlayer.Skins.GTGaster.Value = "XGaster"
  	end    
})

Section9:AddButton({
	Name = "Use Diamond Sword (GT Frisk)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.GTFrisk.DiamondSword.Value = true
game:GetService("Players").LocalPlayer.Skins.GTFrisk.Value = "DiamondSword"
  	end    
})

Section9:AddButton({
	Name = "Use VHS Sans (SS Chara)",
	Callback = function()
game:GetService("Players").LocalPlayer.Skins.SSChara.VHSSans.Value = true
game:GetService("Players").LocalPlayer.Skins.SSChara.Value = "VHSSans"
  	end    
})

Tab3:AddLabel("Total Features: 46")


Tab3:AddParagraph("UI Library", "shlexware (GitHub)")
Tab3:AddParagraph("Features", "idk.#5293 (Discord ofc)")

--[[
Section10:AddColorpicker({
	Name = "Set Soul Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.L.ImageColor3 = Value
		game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.R.ImageColor3 = Value
	end	  
})

Section10:AddColorpicker({
	Name = "Set Attacks Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("1"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)

				spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("2"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)

		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("3"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)

		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("4"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)

		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("5"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)

		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:FindFirstChild("6"):GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("TextLabel") then
			v.TextColor3 = Value
					end
				end
			until false
			end)
  	end 
})
Section10:AddColorpicker({
	Name = "Set Attacks Background Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		spawn(function()
			repeat wait()
		for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials:GetChildren()) do -- Change "Dietrich42478" with your username
		if v:IsA("Frame") then
			v.BackgroundTransparency = 0
            v.BackgroundColor3 = Value
					end
				end
			until false
			end)
  	end 
})
--]]

OrionLib:Init()