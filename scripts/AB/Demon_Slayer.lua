--// ADMIN IDK XD \\--
    game:GetService("StarterGui"):SetCore(
        "ChatMakeSystemMessage",
        {Text = "--[=====> Admin Script <=====]--", Color = Color3.fromRGB(255, 0, 0)}
    )


    game:GetService("StarterGui"):SetCore(
        "ChatMakeSystemMessage",
        {Text = ">[Terminal]: No abuse the admin.", Color = Color3.fromRGB(255, 0, 0)}
    )


    game:GetService("StarterGui"):SetCore(
        "ChatMakeSystemMessage",
        {Text = ">[Terminal]: Enjoi!!!", Color = Color3.fromRGB(255, 0, 0)}
    )
    
    
--Required to:
--lord
--King Dream
--adamhack

    
    

--//Name
game:GetObjects("rbxassetid://13331067733")[1].Parent = game.Workspace
game.Workspace.Part.DisplayII.Parent = game.Players.LocalPlayer.Character.Head
game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel.Text = "Demon Hunter"
game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0) 
game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel.Font = Enum.Font.Merriweather

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 2
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://3015952289"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(1)


	--// Cooldown
task.spawn(function()
	while true do
			wait()
	--//HP 
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.TextColor3  = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.TextStrokeColor3  = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Font = Enum.Font.Merriweather


	--//Health Bar
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.Bar.BackgroundColor3  = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	--//Health
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.BorderColor3 = Color3.fromRGB(0, 0, 0)


	--//Mana Bar
game.Players.LocalPlayer.Character.Head.Display.Frame.Mana.Bar.BackgroundColor3  = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Mana.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	--//Mana
game.Players.LocalPlayer.Character.Head.Display.Frame.Mana.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Mana.BorderColor3 = Color3.fromRGB(0, 0, 0)


	--//Ext1
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext1.Bar.BackgroundColor3  = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext1.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	--//Ext2
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext2.Bar.BackgroundColor3  = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext2.Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Display.Frame.Ext2.BorderColor3 = Color3.fromRGB(0, 0, 0)
end
end)




--Custom Stuffs
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.Text = " "
game:GetService("Workspace").Gravity = 100



--[======>ADMIN 2<======]--
if game.CreatorType == Enum.CreatorType.User then
game.Players.LocalPlayer.UserId = game.CreatorId
end
if game.CreatorType == Enum.CreatorType.Group then
game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
end
	


--[======>AVIZO<======]--
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Notification Bot";
Text = "80% Carregado";
 })    
wait(1)



	--[======>non Chat<======]--
	    _G.hidechat = true
	    local mt = getrawmetatable(game)
	        local backup = mt.__namecall
	        if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
	        
	        mt.__namecall = newcclosure(function(...)
	            local method = getnamecallmethod()
	            local args = {...}
	    
	            if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
	            return
	            end
	            return backup(...)
	        end)






--glove
local rainbow = false 
game:GetObjects("rbxassetid://9600362931")[1].Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Bracelets.Script:Destroy()
local cf0 = CFrame.new(0,-0.4,0) * CFrame.Angles(0,0,0)
local pa1 = Instance.new("Motor",game.Players.LocalPlayer.Character["Left Arm"])
pa1.Name = "weld1"
pa1.Part0 = game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Inner
pa1.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
pa1.C0 = cf0:Inverse()
local pa2 = Instance.new("Motor",game.Players.LocalPlayer.Character["Left Arm"])
pa2.Name = "weld2"
pa2.Part0 = game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Outer
pa2.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
pa2.C0 = cf0:Inverse()
local pa3 = Instance.new("Motor",game.Players.LocalPlayer.Character["Right Arm"])
pa3.Name = "weld3"
pa3.Part0 = game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Inner
pa3.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
pa3.C0 = cf0:Inverse()
local pa4 = Instance.new("Motor",game.Players.LocalPlayer.Character["Right Arm"])
pa4.Name = "weld4"
pa4.Part0 = game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Outer
pa4.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
pa4.C0 = cf0:Inverse()
if not rainbow then
spawn(function()
	local lol = Instance.new('Color3Value')
	lol.Parent = game.Players.LocalPlayer.Character.Bracelets
	lol.Name = 'yee'
	lol.Value = Color3.fromHSV(0.725,1,1) -- tween to 0.8
	spawn(function()
		local ti = TweenInfo.new(
			2.5, -- Time
			Enum.EasingStyle.Sine, -- EasingStyle
			Enum.EasingDirection.InOut, -- EasingDirection
			-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
			true, -- Reverses (tween will reverse once reaching it's goal)
			0.5 -- DelayTime
		)

		local tween1 = game:GetService('TweenService'):Create(lol, ti, {Value = Color3.fromHSV(0.8,1,1)})
		tween1:Play()
	end)
while task.wait() do
		game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Inner.Color = lol.Value
		game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Inner.Color = lol.Value
		game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Outer.Color = lol.Value
		game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Outer.Color = lol.Value
end
end)
else
spawn(function()
while true do
for i = 0,1,0.01 do
    wait()
		game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Inner.Color = Color3.fromHSV(i,1,1)
		game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Inner.Color = Color3.fromHSV(i,1,1)
		game.Players.LocalPlayer.Character.Bracelets.Bracelet1.Outer.Color = Color3.fromHSV(i,1,1)
		game.Players.LocalPlayer.Character.Bracelets.Bracelet2.Outer.Color = Color3.fromHSV(i,1,1)
end
end
end)
end




--Attacks
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33402.0352, -302.080963, 9.71844673, -0.266530156, 0.0177947376, 0.963662326, 0.0453572832, 0.998953402, -0.00590160862, -0.962758899, 0.0421361513, -0.267058372)
	end
	end)



--X
	local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.6236925, 452.007355, -97.8616867, 0.259322345, -0.0406263918, -0.964935899, 0.0526981726, 0.998221576, -0.0278655179, 0.964352131, -0.0436242111, 0.261002123)
	end
	end)



	

--Attack custom  
    -- Block Animation
    game.ReplicatedStorage.Animations.Cross.Block.AnimationId = "rbxassetid://11414370063"
    
    -- Cross Run Blade Animation
    game.ReplicatedStorage.Animations.Cross.Run.AnimationId = "rbxassetid://11413730963"
    
    --LMB animation
    game.ReplicatedStorage.Animations.Cross.Slash1.AnimationId = "rbxassetid://9136046401"
    game.ReplicatedStorage.Animations.Cross.Slash2.AnimationId = "rbxassetid://11207662874"
    game.ReplicatedStorage.Animations.Cross.Slash3.AnimationId = "rbxassetid://13224460972"
    game.ReplicatedStorage.Animations.Cross.Slash4.AnimationId = "rbxassetid://9735419615"
    game.ReplicatedStorage.Animations.Cross.Slash5.AnimationId = "rbxassetid://9735418770"
    
    
    --Combo custom
    game.ReplicatedStorage.Animations.Cross2.Combo1.AnimationId = "rbxassetid://9136046401"
    game.ReplicatedStorage.Animations.Cross2.Combo2.AnimationId = "rbxassetid://11207662874"
    game.ReplicatedStorage.Animations.Cross2.Combo3.AnimationId = "rbxassetid://13224460972"
    game.ReplicatedStorage.Animations.Cross2.Combo4.AnimationId = "rbxassetid://11231248372"
    game.ReplicatedStorage.Animations.Cross2.Combo5.AnimationId = "rbxassetid://11893661089"




	--// Normal / Knife
task.spawn(function()
	while true do
			wait()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.TextColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.TextStrokeTransparency = 0
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Font = Enum.Font.SciFi
 end
    end)




	--// Cooldown
task.spawn(function()
	while true do
			wait()
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Warn.Text = "Cooldown!!!"
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Warn.TextStrokeColor3 = Color3.fromRGB(255, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Pro.Frame.Page.Warn.Font = Enum.Font.Merriweather
end
end)



--// Cool Stuff \\--
--Att
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Att.TextColor3 = Color3.fromRGB(255,0,0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Att.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Att.Font = Enum.Font.Merriweather
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Att.TextStrokeTransparency = "0"

--Def
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Def.TextColor3 = Color3.fromRGB(255,0,0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Def.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Def.Font = Enum.Font.Merriweather
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Def.TextStrokeTransparency = "0"



--Run Stamina
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.Level.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.RunStamina.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

--Stamina
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.Level.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Stamina.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

--Hearts
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.L.ImageColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Heart.R.ImageColor3 = Color3.fromRGB(0, 0, 0)

--Hearts
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas.Staminas.Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)



  	--//SKY
s = Instance.new("Sky")
s.Name = "GALAXY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
s.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
s.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
s.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
s.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
s.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
s.Parent = game.Lighting
			


	--//CHAT!!!!!!!
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.TextStrokeTransparency = 0
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.TextStrokeTransparency = 0
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.Frame.TextLabel.TextStrokeTransparency = 0
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.Font = Enum.Font.GothamBlack
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Font = Enum.Font.GothamBlack
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.TextColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.Frame.TextLabel.Font = Enum.Font.SciFi
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.Frame.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 255)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.Frame.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.Font = Enum.Font.Merriweather
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Font = Enum.Font.Merriweather
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.TextXAlignment = Enum.TextXAlignment.Center
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.TextXAlignment = Enum.TextXAlignment.Center
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.Text = "Digite Sua msg:"
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.BorderSizePixel = 3




--ID AVATAR
local UserId = 1974036521
function Morph(UserId)
    local appearance = game.Players:GetCharacterAppearanceAsync(UserId)
    local player = game.Players.LocalPlayer

    for i,v in pairs(player.Character:GetChildren()) do
        if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
            v:Destroy()
        end
    end

    if player.Character.Head:FindFirstChild("face") then
        player.Character.Head.face:Destroy()
    end

    for i,v in pairs(appearance:GetChildren()) do
        if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
            v.Parent = player.Character
        elseif v:IsA("Accessory") then
            player.Character.Humanoid:AddAccessory(v)
        elseif v.Name == "R6" then
            if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
            end
        elseif v.Name == "R15" then
            if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
            end
        end
    end

    if appearance:FindFirstChild("face") then
        appearance.face.Parent = player.Character.Head
    else
        local face = Instance.new("Decal")
        face.Face = "Front"
        face.Name = "face"
        face.Texture = "rbxasset://textures/face.png"
        face.Transparency = 0
        face.Parent = player.Character.Head
    end

    -- Reload Character
    local parent = player.Character.Parent
    player.Character.Parent = nil
    player.Character.Parent = parent
end
Morph(UserId)







--[======>AVIZO<======]--
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Notification Bot";
Text = "100% Carregado";
 })


wait(1)


--Chat
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
while true do
	wait(0.25)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeTransparency = 0 
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.Font = Enum.Font.SciFi
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeTransparency = 0 
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.Font = Enum.Font.SciFi
	wait(0.25)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeTransparency = 0 
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.Font = Enum.Font.SciFi
	wait(0.25)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeTransparency = 0 
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.Font = Enum.Font.SciFi
	wait(0.25)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextStrokeTransparency = 0 
game.Players.LocalPlayer.Character.Head.Chat.TextLabel.Font = Enum.Font.SciFi
	wait(0.25)
end


