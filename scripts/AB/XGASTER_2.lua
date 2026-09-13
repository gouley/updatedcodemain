
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"

wait(1)
game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["1Theme"]:Destroy()
function Download(name,ext,link)
	local function ea(assetid)
		return string.format("rbxthumb://type=Asset&id=%s&w=420&h=420",assetid)
	end
	local function mf(tab)
		local t
		for i = 1,#tab do
			t = tab[i]
			if i > 1 then t = tab[1]..'/'..tab[i] end
			if not isfile(t) then
				makefolder(t)
			end
		end
		return t..'/'
	end
	local function wf(st,a)
		if not isfile(st) then local y = a
			if string.find(a,'https://www.mediafire') or string.find(a,'https://cdn.discordapp.com/attachments/') then 
				local request = request or syn.request 
				local response = request({Url = a, Method = "GET"}) 




				local url = response.Body
				if not string.find(a,'https://cdn.discordapp.com/attachments') then

					local split = string.split(url,"https://download")[2] 
					for i = 1,string.len(split) do
						local yes = string.sub(split,i,i)
						if string.find(yes,'"') then
							y = "https://download"..string.sub(split,1,i-1)
							break
						end
					end

					writefile(st,game:HttpGet(y))
				else 
					writefile(st,response.Body)

				end 


			else 
				error('Invalid link, Mediafire or discord attachment links only')
			end
		end
		local getasset = getsynasset or getcustomasset

		return getasset(st)
	end
	game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Music Loading.."; Text = "Downloading "..name.."."..ext; Duration = 5 })
	repeat wait() until wf(name..'.'..ext,link)
end

Download("XGaster","mp3","https://cdn.discordapp.com/attachments/1127884957914767392/1144250045160505426/UNDERVERSE_-_Mismatch_Dual_Mix.mp3")
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = getcustomasset("XGaster.mp3")
Sound.Name = "Gaster"
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "366168126"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()

game:GetService("Players").LocalPlayer.Character.Head.face:remove()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
			
if not _G.pas then 
	_G.pas = function() 
if not _G.passs then 
local mt = getrawmetatable(game)
   local back = mt.__namecall 
   
if setreadonly then setreadonly(mt,false) else make_writeable(mt,true) end 
   
mt.__namecall = newcclosure(function(...)
   
   local nc = getnamecallmethod() 
local args = {...} 
if tostring(args[1]) == 'Events' and args[2][2] == 'Chatted' and not _G.passs then 
_G.passs = args[2][1]
   return back(unpack(args))
end 
return back(...)
   
   
end)
game.Players:Chat((''))
repeat wait() until _G.passs
return _G.passs
else 
   
return _G.passs

end 

end 
end
local pass = _G.pas()
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
   local A_1 =  {
	   [1] = pass, 
	   [2] = "Chatted", 
	   [3] = ' < XGaster > *\n' ..Chat, 
	   [4] = Color3.fromRGB(255, 100, 100)
   }
   local Event = game:GetService("ReplicatedStorage").Remotes.Events
   Event:FireServer(A_1)
end)
local char = game.Players.LocalPlayer.Character
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local v21 = require(game:GetService("ReplicatedStorage").ClientModules.MainModule);
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local LoseMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

HealthBar.Name = "HealthBar"
HealthBar.Parent = player.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 6, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)

Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = ""
HealthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left
HealthLabel.TextYAlignment = Enum.TextYAlignment.Center

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Arcade
PName.Text = "X!GASTER"
PName.TextColor3 = Color3.fromRGB(255, 0, 255)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Center
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5

local part = PName
        
        local Info = TweenInfo.new(--- overwrite
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        }
        
        local nametween = TweenService:Create(part, Info, Goals)
        nametween:Play()
        
local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(1,0.5,1)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.97, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.94,0)
	end)

wait(12)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["1"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["2"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["3"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["4"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["5"]:Destroy()

local Player = game.Players.LocalPlayer
local Backpack = Player.Backpack
wait()

game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://4459132147"

local player = game:GetService("Players").LocalPlayer
local MoveAnimations = player.Backpack.Main.XSansMoves.Animations
local ClickAnimations = player.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat
local pass = _G.pas()
local remote = game.ReplicatedStorage.Remotes["Events"]

ClickAnimations.Light1.AnimationId = "rbxassetid://5770352035"
ClickAnimations.Light2.AnimationId = "rbxassetid://5770385566"
ClickAnimations.Light3.AnimationId = "rbxassetid://5770410811"
ClickAnimations.Light4.AnimationId = "rbxassetid://5770416576"
ClickAnimations.Light5.AnimationId = "rbxassetid://5770437587"
ClickAnimations.Light6:Destroy()
MoveAnimations.Block.AnimationId = "rbxassetid://4290724438"

visualizer = true -- Change true to false to get rid of the visualizer
-- key
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local CurrentCharacter = game:GetService("Players").LocalPlayer.PlayerData.CurrentCharacter.Value
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local UIS = game:GetService("UserInputService")

wait(10)

game.Workspace.ServerEffects.ServerCooldown:Destroy()

      local CAS = game:GetService("ContextActionService")
            local FREEZE_COMMAND = "CantAttack"
            CAS:BindActionAtPriority(
                FREEZE_COMMAND,
                function()
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.ContextActionPriority.High.Value,
                Enum.KeyCode.F,
                Enum.KeyCode.E,
                Enum.KeyCode.Q
                )
                
local A_1 = 
{
	[1] = pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then

			print("mouse cframe teleport")

			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else

			print("player cframe teleport")

			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
workspace[game.Players.LocalPlayer.Name].CrossSansBlade:Destroy()
local animation1 = Instance.new("Animation")
animation1.AnimationId = "rbxassetid://4928592851"
local anim1 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation1)
anim1:Play()
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "Dead timeline?",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(3)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "Soulshatters?",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
    wait(4)
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Neon,
    Color = Color3.fromRGB(25, 41, 88),
    Transparency = 0
    }                   
wait(0)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "I need to create my perfect timeline...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects    
wait(4)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "I will destroy all useless timelines...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(5)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "I will destroy this timeline!",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(8)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "Get Erased",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)

local A_1 = 
{
	[1] = pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["J"] then
local args = {
    [1] = {
        [1] = pass,
        [2] = "TakeStamina",
        [3] = -650
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' and boneCloned2 == false then
    boneCloned2 = true
    print("f")
clone = v:Clone()
clone.Color = Color3.new(0,0,255)
clone.Parent = char
clone.Anchored = false
clone.CanCollide = false
weld = Instance.new('Weld',clone)
weld.Part0 = clone
weld.Part1 = char['Right Arm']
An = {0,0,110}
clone.Size = clone.Size/4
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0,0,0)*Angle
weld.C0 = weld.C0*CFrame.new(-0.3,1.5,0)
clone.Name = 'SpkBone2'
clone.Transparency = 0
end
end
end)
--Def
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects:GetChildren()) do
if v.Name == 'OverwriteButton' then
clone = v:Clone()
clone.Parent = char
clone.HumanoidRootPart.Anchored = false
clone.OverwriteButton.CanCollide = false
clone.HumanoidRootPart.CanCollide = false
clone.OverwriteButton.Anchored = false
weld = Instance.new('Weld',clone.OverwriteButton)
weld.Part0 = clone.OverwriteButton
weld.Part1 = char['HumanoidRootPart']
An = {0,85,-35}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(-0.1,1.5,3)*Angle
weld.C0 = weld.C0*CFrame.new(1,1.7,-.3)

clone.OverwriteButton.Color = Color3.fromRGB(255,200,0)
clone.OverwriteButton.PointLight.Color = Color3.fromRGB(255,255,0)
end
end
end)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.KeypadZero then

		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		
	end	
-- Blaster
end)                          

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "h" then
		if db == true then
local A_1 = 
{
	[1] = pass, 
	[2] = "Chatted", 
	[3] = "[ OverWrite ] Heal 40 Hp", 
	[4] = Color3.new(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
	[1] = pass, 
	[2] = "Overwrite", 
	[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["J"] then
local args = {
    [1] = {
        [1] = pass,
        [2] = "TakeStamina",
        [3] = 650
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "Phase 1"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help:Destroy()

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:GASTER"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:5000"
             
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Created By MAnitosik#0548", Text = "It is a free script"})

repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 0

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 38

game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["Gaster"]:Destroy()

wait(2)
local A_1 = 
{
	[1] = pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)

char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara:GetChildren()) do
if v.Name == 'SlashEffect' then
clone = v:Clone()
clone.Parent = char.Torso
end
end

local Player = game.Players.LocalPlayer.Character
wait(2)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4928592851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "I am bored...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(5)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "I will show you my DETERMINATION...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects    
wait(5)
    local A_1 = {
        [1] = pass,
        [2] = "Chatted",
        [3] = "i'll Show You TRUE!! POWER",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6347876717" 
Sound.Name = "Gaster"    
wait(8)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657147855"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

PName.Text = "Determinated X!Gaster"
PName.TextColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 255)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "Phase 2"
        local p = game.Players.LocalPlayer
        local char = p.Character
        local mouse = p:GetMouse()
        local larm = char["Left Arm"]
        local rarm = char["Right Arm"]
        local lleg = char["Left Leg"]
        local rleg = char["Right Leg"]
        local hed = char.HumanoidRootPart
        local torso = char.Torso
        local hum = char.Humanoid
        local root = char.HumanoidRootPart
        local rs = game:GetService("RunService").RenderStepped
        local new = Instance.new
        local v3 = Vector3.new
        local ns = NumberSequence.new
        local nr = NumberRange.new
        local bc = BrickColor.new
        local cf = CFrame.new
        local cfa = CFrame.Angles
        local rad = math.rad

        a1 = new("Part", char)
        a1.Name = "H1"
        a1.BrickColor = BrickColor.new("White")
        a1.Material = "Neon"
        a1.Transparency = 0
        aa1 = new("SpecialMesh", a1)
        aa1.MeshType = "FileMesh"
        aa1.Offset = v3(7, 3, -0.1)
        aa1.Scale = v3(0.1, 0.1, 0.1)
        aa1.MeshId = "rbxassetid://2267134290"
        aaa1 = new("Weld", a1)
        aaa1.Part0 = hed
        aaa1.Part1 = a1
        aaa1.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2 = new("Part", char)
        a2.Name = "H2"
        a2.BrickColor = BrickColor.new("White")
        a2.Material = "Neon"
        a2.Transparency = 0
        aa2 = new("SpecialMesh", a2)
        aa2.MeshType = "FileMesh"
        aa2.Offset = v3(9.1, 2.01, -0.2)
        aa2.Scale = v3(0.07, 0.07, 0.07)
        aa2.MeshId = "rbxassetid://2267146284"
        aaa2 = new("Weld", a2)
        aaa2.Part0 = hed
        aaa2.Part1 = a2
        aaa2.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3 = new("Part", char)
        a3.Name = "H3"
        a3.BrickColor = BrickColor.new("White")
        a3.Material = "Neon"
        a3.Transparency = 0
        aa3 = new("SpecialMesh", a3)
        aa3.MeshType = "FileMesh"
        aa3.Offset = v3(5, 2.01, -0.2)
        aa3.Scale = v3(0.07, 0.07, 0.07)
        aa3.MeshId = "rbxassetid://2267147917"
        aaa3 = new("Weld", a3)
        aaa3.Part0 = hed
        aaa3.Part1 = a3
        aaa3.C0 = CFrame.Angles(0, math.rad(0), 0)

        a4 = new("Part", char)
        a4.Name = "H4"
        a4.BrickColor = BrickColor.new("White")
        a4.Material = "Neon"
        a4.Transparency = 0
        aa4 = new("SpecialMesh", a4)
        aa4.MeshType = "FileMesh"
        aa4.Offset = v3(7, 3, -0.1)
        aa4.Scale = v3(0.1, 0.1, 0.1)
        aa4.MeshId = "rbxassetid://2267130588"
        aaa4 = new("Weld", a4)
        aaa4.Part0 = hed
        aaa4.Part1 = a4
        aaa4.C0 = CFrame.Angles(0, math.rad(0), 0)

        a5 = new("Part", char)
        a5.Name = "H5"
        a5.BrickColor = BrickColor.new("White")
        a5.Material = "Neon"
        a5.Transparency = 0
        aa5 = new("SpecialMesh", a5)
        aa5.MeshType = "FileMesh"
        aa5.Offset = v3(7, 3, -0.1)
        aa5.Scale = v3(0.1, 0.1, 0.1)
        aa5.MeshId = "rbxassetid://2267130588"
        aaa5 = new("Weld", a5)
        aaa5.Part0 = hed
        aaa5.Part1 = a5
        aaa5.C0 = CFrame.Angles(0, math.rad(0), 0)

        a1e = new("Part", char)
        a1e.Name = "H6"
        a1e.BrickColor = BrickColor.new("White")
        a1e.Material = "Neon"
        a1e.Transparency = 0
        aa1e = new("SpecialMesh", a1e)
        aa1e.MeshType = "FileMesh"
        aa1e.Offset = v3(-7, 3, -0.1)
        aa1e.Scale = v3(0.1, 0.1, 0.1)
        aa1e.MeshId = "rbxassetid://2267134290"
        aaa1e = new("Weld", a1e)
        aaa1e.Part0 = hed
        aaa1e.Part1 = a1e
        aaa1e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2e = new("Part", char)
        a2e.Name = "H7"
        a2e.BrickColor = BrickColor.new("White")
        a2e.Material = "Neon"
        a2e.Transparency = 0
        aa2e = new("SpecialMesh", a2e)
        aa2e.MeshType = "FileMesh"
        aa2e.Offset = v3(-5, 2.01, -0.2)
        aa2e.Scale = v3(0.07, 0.07, 0.07)
        aa2e.MeshId = "rbxassetid://2267146284"
        aaa2e = new("Weld", a2e)
        aaa2e.Part0 = hed
        aaa2e.Part1 = a2e
        aaa2e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3e = new("Part", char)
        a3e.Name = "H8"
        a3e.BrickColor = BrickColor.new("White")
        a3e.Material = "Neon"
        a3e.Transparency = 0
        aa3e = new("SpecialMesh", a3e)
        aa3e.MeshType = "FileMesh"
        aa3e.Offset = v3(-9.1, 2.01, -0.2)
        aa3e.Scale = v3(0.07, 0.07, 0.07)
        aa3e.MeshId = "rbxassetid://2267147917"
        aaa3e = new("Weld", a3e)
        aaa3e.Part0 = hed
        aaa3e.Part1 = a3e
        aaa3e.C0 = CFrame.Angles(0, math.rad(0), 0)