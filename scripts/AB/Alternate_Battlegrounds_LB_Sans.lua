       local omgreal = "Sans"
game:GetService("ReplicatedStorage").Char:FireServer(omgreal)

game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()

wait(1)

-- Change Name & Remove HP KR (visual ofc)
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.TextLabel.Text = "Last Breath Sans"
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.Health.Bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display.Frame.Health.KR.Parent = workspace

-- Start Animation
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://9897957107"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

game:GetService("Players").LocalPlayer.PlayerGui.Controller.Animations.idle.AnimationId = "rbxassetid://12268734200"
game:GetService("Players").LocalPlayer.PlayerGui.Controller.Animations.walk.AnimationId = "rbxassetid://12298946216"
--game:GetService("Players").LocalPlayer.PlayerGui.Controller.Animations.run.AnimationId = "rbxassetid://10351365583"

-- GUI Changes
spawn(function()
			repeat wait()
				for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame:GetChildren()) do
					if v.Name == "Page" and v.Text == "Bones" then
                        v.Text = "Normal"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["1"].TextLabel.Text = "Z"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["1"].Holdable.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["2"].TextLabel.Text = "X"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["3"].TextLabel.Text = "C"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Specials["5"].TextLabel.Text = "B"
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

-- More GUI Changes
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
local omgstring = "Bones"
local omgstring2 = "Bonebox"
local omgvector = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

game:GetService("ReplicatedStorage").Sans.Projectile:FireServer(omgnil, omgstring, omgstring2, omgvector)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "b" then

local omgnil = nil
local omgvector = Vector3.new(mouse.Hit.p, mouse.Hit.p, mouse.Hit.p)

game:GetService("ReplicatedStorage").Sans.Tele:FireServer(omgnil, omgvector)
	end
end)

wait(11.5)
k:Stop()