
function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

HumanDied = false for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") then  _G.netless=game:GetService("RunService").Heartbeat:connect(function() v.AssemblyLinearVelocity = Vector3.new(-30,0,0) sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999) end) end end  local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {}  char.Archivable = true local reanim = char:Clone() reanim.Name = 'Spirality '..plr.Name..'' fl=Instance.new('Folder',char) fl.Name ='Spirality' reanim.Animate.Disabled=true char.HumanoidRootPart:Destroy() char.Humanoid:ChangeState(16)  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  function create(part, parent, p, r) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignOrientation.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] part.AlignOrientation.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part[part.Name].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  char.Torso['Left Shoulder']:Destroy() char.Torso['Right Shoulder']:Destroy() char.Torso['Left Hip']:Destroy() char.Torso['Right Hip']:Destroy()  create(char['Torso'],reanim['Torso']) create(char['Left Arm'],reanim['Left Arm']) create(char['Right Arm'],reanim['Right Arm']) create(char['Left Leg'],reanim['Left Leg']) create(char['Right Leg'],reanim['Right Leg'])  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  reanim.Parent = fl  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  table.insert(ct,reanim.Humanoid.Died:Connect(function() plr.Character = char char:BreakJoints() reanim:Destroy() game.Players:Chat('-gr') _G.netless:Disconnect() HumanDied = true for _,v in pairs(ct) do v:Disconnect() end end))  plr.Character = reanim workspace.CurrentCamera.CameraSubject = reanim.Humanoid

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == '1' then
Mode='1'
elseif k == '2' then
Mode='2'
elseif k == '1' then
Mode='1'
elseif k == '3' then
Mode='3'
elseif k == '4' then
Mode='4'
elseif k == '5' then
Mode='5'
elseif k == '6' then
Mode='6'
elseif k == '7' then
Mode='7'
elseif k == '8' then
Mode='8'
elseif k == '9' then
Mode='9'
elseif k == '0' then
Mode='0'
elseif k == '-' then
Mode='-'
--funnymodes
elseif k == 'z' then
Mode = 'family guy !11!!1!'
elseif k == 'x' then
Mode = 'WHATTHEFUCKISTHAT'
elseif k == 'c' then
Mode = 'HELICOPTER'
elseif k == 'v' then
Mode = 'WOOM'
end
end)
---
local muter = false
local ORGID = 7356989682
local ORVOL = 1
local ORPIT = 1
local kan = Instance.new("Sound",char)
kan.Volume = 0
if not NoSound then
    kan.Volume = 1.15
end
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://9238192314"
kan.Name = "Music"
kan.Looped = true
kan:Play()
-----
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0, 3.5, 0)
naeeym2.Adornee = hed
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "spamg"
tecks2.Font = Enum.Font.Gotham
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1, 1, 1)
tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
tecks2.Size = UDim2.new(1,3,0.5,0)
tecks2.Parent = naeeym2
-----
-------------
coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mode:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
reanim.Humanoid.WalkSpeed = 16
kan.SoundId = "rbxassetid://9238676411"
--
tecks2.Text = "Power"
tecks2.Font = Enum.Font.Code
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1, 0, 1)
tecks2.TextStrokeColor3 = Color3.new(.5, 0, .5)
--
if reanim.Humanoid.Jump then -- jump
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),-1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),-1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),-1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),-1+0.05*math.sin(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(5+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/40),0.25+0.05*math.sin(sine/40),-0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(60+0*math.cos(sine/40)),math.rad(6+0*math.cos(sine/40)),math.rad(-70.83+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/40),0.25+0.05*math.sin(sine/40),-0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(66.72+0*math.cos(sine/40)),math.rad(5.58+0*math.cos(sine/40)),math.rad(59.08+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+-0.05*math.sin(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-5*math.cos(sine/40)),math.rad(-20+-4*math.cos(sine/30)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.05*math.sin(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-5*math.cos(sine/40)),math.rad(20+4*math.cos(sine/30)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),-1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1.1+-0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+0*math.cos(sine/20)),math.rad(0+5*math.cos(sine/20)),math.rad(0+5*math.cos(sine/20))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/20),-1+-0.2*math.sin(sine/20),0+-0.3*math.cos(sine/20))*CFrame.Angles(math.rad(0+60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/20),-1+0.2*math.sin(sine/20),0+0.3*math.cos(sine/20))*CFrame.Angles(math.rad(10+-60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
-------------
elseif Mode == '2' then
reanim.Humanoid.WalkSpeed = 50
kan.SoundId = "rbxassetid://10183422037"
--
tecks2.Text = "Justice"
tecks2.Font = Enum.Font.JosefinSans
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 0, .5)
tecks2.TextStrokeColor3 = Color3.new(0, 0, .25)
--
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.75+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(-10+0*math["rad"](sine/10))),false)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),4+2*math.sin(sine/50),0+0*math.sin(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(3.9+0*math.cos(sine/10)),math.rad(-82+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(-18+0*math.cos(sine/10)),math.rad(82+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(-10+0*math.cos(sine/10)),math.rad(10+-10*math.cos(sine/50))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(10+0*math.cos(sine/10)),math.rad(-10+-10*math.cos(sine/50))),0.5)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.75+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(-10+0*math["rad"](sine/10))),false)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),4+2*math.sin(sine/50),0+0*math.sin(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(3.9+0*math.cos(sine/10)),math.rad(-82+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(-18+0*math.cos(sine/10)),math.rad(82+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(-10+0*math.cos(sine/10)),math.rad(10+-10*math.cos(sine/50))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(10+0*math.cos(sine/10)),math.rad(-10+-10*math.cos(sine/50))),0.5)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Vector Arrow','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.75+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(-10+0*math["rad"](sine/10))),false)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),4+2*math.sin(sine/50),0+0*math.sin(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(3.9+0*math.cos(sine/10)),math.rad(-82+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(-18+0*math.cos(sine/10)),math.rad(82+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(-10+0*math.cos(sine/10)),math.rad(10+-10*math.cos(sine/50))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(10+0*math.cos(sine/10)),math.rad(-10+-10*math.cos(sine/50))),0.5)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('Vector Arrow','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.75+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(-10+0*math["rad"](sine/10))),false)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+2*math["cos"](sine/10),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-2*math["cos"](sine/10),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-3600*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),4+2*math.sin(sine/50),0+0*math.sin(sine/50))*CFrame.Angles(math.rad(-50+5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(3.9+0*math.cos(sine/10)),math.rad(-82+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0+0.1*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(160+0*math.cos(sine/10)),math.rad(-18+0*math.cos(sine/10)),math.rad(82+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(-10+0*math.cos(sine/10)),math.rad(10+-10*math.cos(sine/50))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/50)),math.rad(10+0*math.cos(sine/10)),math.rad(-10+-10*math.cos(sine/50))),0.5)
end
--------------
elseif Mode == '3' then
reanim.Humanoid.WalkSpeed = 25
kan.SoundId = "rbxassetid://9238192314"
--
tecks2.Text = "Toxic"
tecks2.Font = Enum.Font.SourceSansItalic
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, .5, 0)
tecks2.TextStrokeColor3 = Color3.new(0, 0.25, 0)
--
if reanim.Humanoid.Jump then -- jump
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-1*math["cos"](sine/15),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+1*math["cos"](sine/15),3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+640*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(25+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-25+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-1*math["cos"](sine/15),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+1*math["cos"](sine/15),3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+640*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(25+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-25+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(7+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-1*math["cos"](sine/15),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+1*math["cos"](sine/15),3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+640*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(2+-2*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/50)),math.rad(0+5*math.cos(sine/50)),math.rad(7+-2*math.cos(sine/50))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.2+0*math.cos(sine/10),0.3+0.05*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(141.6+0*math.cos(sine/50)),math.rad(180+-5*math.cos(sine/50)),math.rad(-49.4+2*math.cos(sine/50))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+-0.05*math.sin(sine/50),-0.4+0*math.cos(sine/10))*CFrame.Angles(math.rad(-12+2*math.cos(sine/50)),math.rad(-10+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+2*math.cos(sine/50)),math.rad(10+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-1*math["cos"](sine/15),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+1*math["cos"](sine/15),3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+640*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/5),-1+0.1*math.sin(sine/5),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/5)),math.rad(0+5*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.4+0.2*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+-50*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.4+-0.2*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+50*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+-0.3*math.sin(sine/10),0+-0.3*math.cos(sine/10))*CFrame.Angles(math.rad(0+45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0.3*math.sin(sine/10),0+0.3*math.cos(sine/10))*CFrame.Angles(math.rad(0+-45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0-1*math["cos"](sine/15),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+1*math["cos"](sine/15),3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+640*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/5),-1+0.1*math.sin(sine/5),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/5)),math.rad(0+5*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.4+0.2*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+-50*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.4+-0.2*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+50*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+-0.3*math.sin(sine/10),0+-0.3*math.cos(sine/10))*CFrame.Angles(math.rad(0+45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0.3*math.sin(sine/10),0+0.3*math.cos(sine/10))*CFrame.Angles(math.rad(0+-45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
end
--------------
elseif Mode == '4' then
reanim.Humanoid.WalkSpeed = 35
kan.SoundId = "rbxassetid://10084403984"
--
tecks2.Text = "Elevus"
tecks2.Font = Enum.Font.Bodoni
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.5, 0, 0)
tecks2.TextStrokeColor3 = Color3.new(0.25, 0, 0)
--
if reanim.Humanoid.Jump then -- jump
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.4*math.cos(sine/100),2+0.5*math.sin(sine/100),0+0*math.cos(sine/100))*CFrame.Angles(math.rad(10+5*math.cos(sine/100)),math.rad(0+-9.7*math.cos(sine/100)),math.rad(0+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0.25+0.05*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10)),math.rad(-55.55+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0.39+0.1*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(-10+5*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.4+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(51.43+5*math.cos(sine/50)),math.rad(20.87+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.4*math.cos(sine/100),2+0.5*math.sin(sine/100),0+0*math.cos(sine/100))*CFrame.Angles(math.rad(-20+5*math.cos(sine/100)),math.rad(0+-9.7*math.cos(sine/100)),math.rad(0+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0.25+0.05*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10)),math.rad(-55.55+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0.39+0.1*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(-10+5*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.4+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(51.43+5*math.cos(sine/50)),math.rad(20.87+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),1.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.4*math.cos(sine/100),2+0.5*math.sin(sine/100),0+0*math.cos(sine/100))*CFrame.Angles(math.rad(-20+5*math.cos(sine/100)),math.rad(0+-9.7*math.cos(sine/100)),math.rad(0+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0.25+0.05*math.sin(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10)),math.rad(-55.55+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0.05*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+0*math.cos(sine/10)),math.rad(28.51+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0.39+0.1*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(-10+5*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.4+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(51.43+5*math.cos(sine/50)),math.rad(20.87+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == '5' then
reanim.Humanoid.WalkSpeed = 18
kan.SoundId = "rbxassetid://9239227104"
--
tecks2.Text = "Cognition"
tecks2.Font = Enum.Font.Kalam
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.5, .5, .5)
tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
--
if reanim.Humanoid.Jump then -- jump
hat('fff_fox','Left Arm',CFrame.new(0,0,0),CFrame.new(-1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Arm',CFrame.new(0,0,0),CFrame.new(1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Left Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('fff_fox','Left Arm',CFrame.new(0,0,0),CFrame.new(-1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Arm',CFrame.new(0,0,0),CFrame.new(1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Left Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Left Arm',CFrame.new(0,0,0),CFrame.new(-1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Arm',CFrame.new(0,0,0),CFrame.new(1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Left Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/50),-1.1+0.05*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(5+-2*math.cos(sine/50)),math.rad(10+0*math.cos(sine/50)),math.rad(0+2*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/50),0.5+0.05*math.cos(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/50)),math.rad(0+5*math.cos(sine/50)),math.rad(10+-5*math.cos(sine/50))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/50),0.5+0.05*math.cos(sine/50),-0.5+0*math.cos(sine/50))*CFrame.Angles(math.rad(112.57+4*math.cos(sine/50)),math.rad(-17.34+4*math.cos(sine/50)),math.rad(-24.98+4*math.cos(sine/50))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/50),-1+-0.05*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(2+2*math.cos(sine/50)),math.rad(-9.7+0*math.cos(sine/50)),math.rad(5.58+-2*math.cos(sine/50))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/50),-1+-0.05*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-5+2*math.cos(sine/50)),math.rad(15+0*math.cos(sine/50)),math.rad(-5+-2*math.cos(sine/50))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('fff_fox','Left Arm',CFrame.new(0,0,0),CFrame.new(-1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Arm',CFrame.new(0,0,0),CFrame.new(1+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+360*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Left Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["rad"](sine/10),0+0*math["rad"](sine/10),0.5+0*math["rad"](sine/10))*CFrame.Angles(math.rad(90+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0.1*math.sin(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-10+5*math.cos(sine/30)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/20))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/50),0.5+-0.1*math.sin(sine/20),0+-0.1*math.cos(sine/20))*CFrame.Angles(math.rad(0+35*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/20),0.5+0.05*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(112.57+5.58*math.cos(sine/10)),math.rad(-17.34+0*math.cos(sine/10)),math.rad(-24.98+4*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/20),-1+0.2*math.sin(sine/20),0+0.3*math.cos(sine/20))*CFrame.Angles(math.rad(0+-45*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/20),-1+-0.2*math.sin(sine/20),0+-0.3*math.cos(sine/20))*CFrame.Angles(math.rad(0+45*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/20))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == '6' then
reanim.Humanoid.WalkSpeed = 60
    kan.SoundId = "rbxassetid://10200450400"
--
tecks2.Text = "Time Lord"
tecks2.Font = Enum.Font.Antique
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 1, .5)
tecks2.TextStrokeColor3 = Color3.new(0, .5, .25)
--
if reanim.Humanoid.Jump then -- jump
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-5+-1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),5+1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),false)
RH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
LH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),5+2*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+0*math.cos(sine/50)),math.rad(0+-10*math.cos(sine/50)),math.rad(0+15*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-75+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/50),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/50))*CFrame.Angles(math.rad(90+0*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50)),math.rad(65+0*math.cos(sine/50))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.25+0*math.cos(sine/10),-1+-0.25*math.cos(sine/50))*CFrame.Angles(math.rad(-15+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-5+-1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),5+1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),false)
RH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
LH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),5+2*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+0*math.cos(sine/50)),math.rad(0+-10*math.cos(sine/50)),math.rad(0+15*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-75+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/50),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/50))*CFrame.Angles(math.rad(90+0*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50)),math.rad(65+0*math.cos(sine/50))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.25+0*math.cos(sine/10),-1+-0.25*math.cos(sine/50))*CFrame.Angles(math.rad(-15+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-5+-1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),5+1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),false)
RH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
LH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),5+2*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+0*math.cos(sine/50)),math.rad(0+-10*math.cos(sine/50)),math.rad(0+15*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-75+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/50),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/50))*CFrame.Angles(math.rad(90+0*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50)),math.rad(65+0*math.cos(sine/50))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.25+0*math.cos(sine/10),-1+-0.25*math.cos(sine/50))*CFrame.Angles(math.rad(-15+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-5+-1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),5+1*math["cos"](sine/40),-3+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/100))),false)
RH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
LH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+2*math.cos(sine/50),5+2*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-50+0*math.cos(sine/50)),math.rad(0+-10*math.cos(sine/50)),math.rad(0+15*math.cos(sine/50))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-75+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/50),0+0.2*math.cos(sine/50),-0.5+0*math.cos(sine/50))*CFrame.Angles(math.rad(90+0*math.cos(sine/50)),math.rad(0+0*math.cos(sine/50)),math.rad(65+0*math.cos(sine/50))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.25+0*math.cos(sine/10),-1+-0.25*math.cos(sine/50))*CFrame.Angles(math.rad(-15+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-10+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5)
end
--------------
elseif Mode == '7' then
    reanim.Humanoid.WalkSpeed = 30
        kan.SoundId = "rbxassetid://10078237389"
--
tecks2.Text = "yippee"
tecks2.Font = Enum.Font.Cartoon
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.75, .75, 0)
tecks2.TextStrokeColor3 = Color3.new(.5, .5, .5)
--
if reanim.Humanoid.Jump then -- jump

elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall

elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Head',CFrame.new(0,0,0),CFrame.new(3+0*math["cos"](sine/10),0+-1*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Head',CFrame.new(0,0,0),CFrame.new(-3+0*math["cos"](sine/10),0+1*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1.5+-0.1*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/15),-1+0.2*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/20))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+-0.2*math.cos(sine/20),0+0.2*math.sin(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+10*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+-0.2*math.cos(sine/20),0+0.2*math.sin(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(90+10*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.6+0*math.cos(sine/15),-1+-0.2*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-10+0*math.cos(sine/10)),math.rad(0+-5*math.cos(sine/20))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.6+0*math.cos(sine/15),-1+-0.2*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(10+0*math.cos(sine/10)),math.rad(0+-5*math.cos(sine/20))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('SamuraiHat','Head',CFrame.new(0,0,0),CFrame.new(3+0*math["cos"](sine/10),0+-1*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Head',CFrame.new(0,0,0),CFrame.new(-3+0*math["cos"](sine/10),0+1*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1.5+-0.1*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.75+0.5*math.sin(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/10)),math.rad(0+10*math.cos(sine/20)),math.rad(0+5*math.cos(sine/20))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1+0*math.cos(sine/10),0.25+0*math.cos(sine/10),0.25+0*math.cos(sine/10))*CFrame.Angles(math.rad(-45+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-40+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0.25+0*math.cos(sine/10),0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(-45+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(40+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0.5*math.sin(sine/20),0+0.5*math.cos(sine/20))*CFrame.Angles(math.rad(0+-60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.5*math.sin(sine/20),0+-0.5*math.cos(sine/20))*CFrame.Angles(math.rad(0+60*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == '8' then
    reanim.Humanoid.WalkSpeed = 25
    kan.SoundId = "rbxassetid://9237455259"
--
tecks2.Text = "Chill"
tecks2.Font = Enum.Font.SpecialElite
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 0, 0)
tecks2.TextStrokeColor3 = Color3.new(1, 0, 1)
--
if reanim.Humanoid.Jump then -- jump
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.2*math.cos(sine/100),2+0.3*math.sin(sine/100),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/100)),math.rad(0+10*math.cos(sine/100)),math.rad(180+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-100+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(100+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.2*math.cos(sine/100),2+0.3*math.sin(sine/100),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/100)),math.rad(0+10*math.cos(sine/100)),math.rad(180+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-100+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(100+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.2*math.cos(sine/100),2+0.3*math.sin(sine/100),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/100)),math.rad(0+10*math.cos(sine/100)),math.rad(180+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-100+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(100+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.2*math.cos(sine/100),2+0.3*math.sin(sine/100),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/100)),math.rad(0+10*math.cos(sine/100)),math.rad(180+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-100+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(100+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),-4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.2*math.cos(sine/100),2+0.3*math.sin(sine/100),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/100)),math.rad(0+10*math.cos(sine/100)),math.rad(180+5*math.cos(sine/100))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-100+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),-1.25+0.2*math.cos(sine/100),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(100+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == '9' then
    reanim.Humanoid.WalkSpeed = 35
    kan.SoundId = "rbxassetid://9237726506"
--
tecks2.Text = "Mischief"
tecks2.Font = Enum.Font.GothamSemibold
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 1, 1)
tecks2.TextStrokeColor3 = Color3.new(0, .75, .75)
--
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10)),math.rad(45+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10)),math.rad(-45+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/35),-1.25+0.05*math.sin(sine/35),0+0*math.cos(sine/35))*CFrame.Angles(math.rad(0+2*math.cos(sine/35)),math.rad(0+0*math.cos(sine/35)),math.rad(0+2*math.sin(sine/35))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.4+0*math.cos(sine/35),0.5+0.05*math.cos(sine/35),0+0*math.cos(sine/35))*CFrame.Angles(math.rad(0+0*math.cos(sine/35)),math.rad(0+10*math.cos(sine/35)),math.rad(20+0*math.cos(sine/35))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.4+0*math.cos(sine/35),0.5+0.05*math.cos(sine/35),0+0*math.cos(sine/35))*CFrame.Angles(math.rad(0+0*math.cos(sine/35)),math.rad(0+-10*math.cos(sine/35)),math.rad(-20+0*math.cos(sine/35))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.6+0*math.cos(sine/10),-0.75+-0.05*math.sin(sine/35),-0.25+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-2*math.cos(sine/35)),math.rad(-10+0*math.cos(sine/10)),math.rad(0+-2*math.sin(sine/35))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-0.75+-0.05*math.sin(sine/35),-0.25+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+-2*math.cos(sine/35)),math.rad(10+0*math.cos(sine/10)),math.rad(0+-2*math.sin(sine/35))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0.2*math.cos(sine/5),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+5*math.cos(sine/5)),math.rad(0+10*math.cos(sine/10)),math.rad(0+5*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+60*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+-0.3*math.sin(sine/10),0+-0.4*math.cos(sine/10))*CFrame.Angles(math.rad(0+45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0.3*math.sin(sine/10),0+0.4*math.cos(sine/10))*CFrame.Angles(math.rad(0+-45*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == '-' then
reanim.Humanoid.WalkSpeed = 50
kan.SoundId = "rbxassetid://10066580551"
--nametag
tecks2.Text = "Aggression"
tecks2.Font = Enum.Font.Antique
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.75, 0, 0)
tecks2.TextStrokeColor3 = Color3.new(.5, 0, 0)
--
if reanim.Humanoid.Jump then -- jump
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/5),-1+0.2*math.sin(sine/5),0+0*math.cos(sine/5))*CFrame.Angles(math.rad(-20+2*math.cos(sine/5)),math.rad(0+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/5))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.25+-0.25*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.25+0.25*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0.4*math.sin(sine/10),0+0.5*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-5*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.4*math.sin(sine/10),0+-0.5*math.cos(sine/10))*CFrame.Angles(math.rad(20+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+5*math.cos(sine/10))),0.5)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/5),-1+0.2*math.sin(sine/5),0+0*math.cos(sine/5))*CFrame.Angles(math.rad(-20+2*math.cos(sine/5)),math.rad(0+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/5))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.25+-0.25*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.25+0.25*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0.4*math.sin(sine/10),0+0.5*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-5*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.4*math.sin(sine/10),0+-0.5*math.cos(sine/10))*CFrame.Angles(math.rad(20+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+5*math.cos(sine/10))),0.5)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.05*math.cos(sine/40),-1.2+0.05*math.sin(sine/40),0+0*math.cos(sine/40))*CFrame.Angles(math.rad(-2+2*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.25+0*math.cos(sine/10),0+0.1*math.sin(sine/40),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(140+5*math.cos(sine/40)),math.rad(35.2+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.25+0*math.cos(sine/10),0+0.1*math.sin(sine/40),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(132.2+8*math.cos(sine/40)),math.rad(-30.6+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.6+-0.05*math.cos(sine/40),-0.8+-0.05*math.sin(sine/40),-0.35+0*math.cos(sine/40))*CFrame.Angles(math.rad(-8.7+-2*math.cos(sine/40)),math.rad(-11.8+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+-0.05*math.cos(sine/40),-0.8+-0.05*math.sin(sine/40),0+0*math.cos(sine/40))*CFrame.Angles(math.rad(-18.1+-2*math.cos(sine/40)),math.rad(15+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),0.5)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/25),4+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),2.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),0.5) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/5),-1+0.2*math.sin(sine/5),0+0*math.cos(sine/5))*CFrame.Angles(math.rad(-20+2*math.cos(sine/5)),math.rad(0+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/5))),0.5) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.25+-0.25*math.sin(sine/10),0+-0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.25+0.25*math.sin(sine/10),0+0.2*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-15*math.cos(sine/10))),0.5) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0.4*math.sin(sine/10),0+0.5*math.cos(sine/10))*CFrame.Angles(math.rad(0+-60*math.cos(sine/10)),math.rad(0+10*math.cos(sine/10)),math.rad(0+-5*math.cos(sine/10))),0.5) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+-0.4*math.sin(sine/10),0+-0.5*math.cos(sine/10))*CFrame.Angles(math.rad(20+60*math.cos(sine/10)),math.rad(0+-10*math.cos(sine/10)),math.rad(0+5*math.cos(sine/10))),0.5)
end
--------------
elseif Mode == '0' then
reanim.Humanoid.WalkSpeed = 75
kan.SoundId = "rbxassetid://10064015859"
--nametag
tecks2.Text = "Nhelv"
tecks2.Font = Enum.Font.Bodoni
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 0, 0)
tecks2.TextStrokeColor3 = Color3.new(1, 1, 1)
--
if reanim.Humanoid.Jump then -- jump
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(-4+0*math["cos"](sine/10),0+-4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(4+0*math["cos"](sine/10),0+4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.4*math.cos(sine/70),4+0.6*math.sin(sine/70),0+0*math.cos(sine/70))*CFrame.Angles(math.rad(-50+5*math.cos(sine/70)),math.rad(0+4*math.cos(sine/70)),math.rad(0+0*math.cos(sine/70))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.1*math.cos(sine/70),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-10*math.cos(sine/70)),math.rad(-10+7*math.cos(sine/70)),math.rad(15+-5*math.cos(sine/70))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-0.75+0.1*math.cos(sine/70),0.75+0.1*math.sin(sine/70),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(20.87+0*math.cos(sine/10)),math.rad(75+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(-4+0*math["cos"](sine/10),0+-4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(4+0*math["cos"](sine/10),0+4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+1*math.cos(sine/70),4+1.5*math.sin(sine/70),0+0*math.cos(sine/70))*CFrame.Angles(math.rad(-50+5*math.cos(sine/70)),math.rad(0+4*math.cos(sine/70)),math.rad(0+0*math.cos(sine/70))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.1*math.cos(sine/70),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-10*math.cos(sine/70)),math.rad(-10+7*math.cos(sine/70)),math.rad(15+-5*math.cos(sine/70))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-0.75+0.1*math.cos(sine/70),0.75+0.1*math.sin(sine/70),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(20.87+0*math.cos(sine/10)),math.rad(75+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(-4+0*math["cos"](sine/10),0+-4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(4+0*math["cos"](sine/10),0+4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+1*math.cos(sine/70),4+1.5*math.sin(sine/70),0+0*math.cos(sine/70))*CFrame.Angles(math.rad(-20+5*math.cos(sine/70)),math.rad(0+4*math.cos(sine/70)),math.rad(0+0*math.cos(sine/70))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.1*math.cos(sine/70),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-10*math.cos(sine/70)),math.rad(-10+7*math.cos(sine/70)),math.rad(15+-5*math.cos(sine/70))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-0.75+0.1*math.cos(sine/70),0.75+0.1*math.sin(sine/70),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(20.87+0*math.cos(sine/10)),math.rad(75+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('fff_fox','Torso',CFrame.new(0,0,0),CFrame.new(-4+0*math["cos"](sine/10),0+-4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+-1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Torso',CFrame.new(0,0,0),CFrame.new(4+0*math["cos"](sine/10),0+4*math["cos"](sine/25),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/25)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+1280*math["rad"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+1*math.cos(sine/70),4+1.5*math.sin(sine/70),0+0*math.cos(sine/70))*CFrame.Angles(math.rad(-50+5*math.cos(sine/70)),math.rad(0+4*math.cos(sine/70)),math.rad(0+0*math.cos(sine/70))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0.1*math.cos(sine/70),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+-10*math.cos(sine/70)),math.rad(-10+7*math.cos(sine/70)),math.rad(15+-5*math.cos(sine/70))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-0.75+0.1*math.cos(sine/70),0.75+0.1*math.sin(sine/70),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(82+0*math.cos(sine/10)),math.rad(20.87+0*math.cos(sine/10)),math.rad(75+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+10*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+5*math.cos(sine/70)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
---------
--funnymodes
elseif Mode == 'family guy !11!!1!' then
reanim.Humanoid.WalkSpeed = 0
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-2.29+0*math["cos"](sine/10),1.35+0.1*math["cos"](sine/10))*CFrame.Angles(math.rad(30+0*math["cos"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.83+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-60+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+-15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+-10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-2.29+0*math["cos"](sine/10),1.35+0.1*math["cos"](sine/10))*CFrame.Angles(math.rad(30+0*math["cos"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.83+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-60+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+-15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+-10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Vector Arrow','Torso',CFrame.new(0,0,0),CFrame.new(-2.29+0*math["cos"](sine/10),-3.37+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(180+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10))*CFrame.Angles(math.rad(-24.98+0*math.cos(sine/10)),math.rad(-9.7+0*math.cos(sine/10)),math.rad(20.87+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(-70.83+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(82+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-15+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47+0*math.cos(sine/10)),math.rad(-10+0*math.cos(sine/10)),math.rad(20+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-2.29+0*math["cos"](sine/10),1.35+0.1*math["cos"](sine/10))*CFrame.Angles(math.rad(30+0*math["cos"](sine/10)),math.rad(0+0*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-2.83+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-60+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/100)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(115+-15*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-30+-10*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
elseif Mode == 'WHATTHEFUCKISTHAT' then
reanim.Humanoid.WalkSpeed = 35
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.7+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(135+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+0.1*math.cos(sine/40),0.93+0.1*math.cos(sine/40))*CFrame.Angles(math.rad(-131.97+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),2+0*math.cos(sine/40),0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(35+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0+0*math.sin(sine/20),-0.5+0*math.cos(sine/20))*CFrame.Angles(math.rad(30+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.75+0*math.cos(sine/10),0+0*math.sin(sine/20),-0.5+0*math.cos(sine/20))*CFrame.Angles(math.rad(30+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.7+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(135+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+0.1*math.cos(sine/40),0.93+0.1*math.cos(sine/40))*CFrame.Angles(math.rad(-131.97+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),2+0*math.cos(sine/40),0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(35+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0+0*math.sin(sine/20),-0.5+0*math.cos(sine/20))*CFrame.Angles(math.rad(30+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.75+0*math.cos(sine/10),0+0*math.sin(sine/20),-0.5+0*math.cos(sine/20))*CFrame.Angles(math.rad(30+0*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.7+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(135+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.5+0.1*math.cos(sine/40),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+0.1*math.cos(sine/40),0.93+0.1*math.cos(sine/40))*CFrame.Angles(math.rad(-131.97+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),2+0*math.cos(sine/40),0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(35+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0+0*math.cos(sine/40),-0.5+-0.1*math.cos(sine/40))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.75+0*math.cos(sine/10),0+0*math.cos(sine/10),-0.5+-0.1*math.cos(sine/40))*CFrame.Angles(math.rad(90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.7+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(135+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.5+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+0.1*math.cos(sine/40),0.93+0.1*math.cos(sine/40))*CFrame.Angles(math.rad(-131.97+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),2+0*math.cos(sine/40),0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(35+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0+0.3*math.sin(sine/20),-0.5+0.2*math.cos(sine/20))*CFrame.Angles(math.rad(90+30*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.75+0*math.cos(sine/10),0+-0.3*math.sin(sine/20),-0.5+-0.2*math.cos(sine/20))*CFrame.Angles(math.rad(90+-30*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.7+0*math["cos"](sine/10),1+0*math["cos"](sine/10))*CFrame.Angles(math.rad(135+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.5+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-90+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2.54+0.1*math.cos(sine/40),0.93+0.1*math.cos(sine/40))*CFrame.Angles(math.rad(-131.97+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/40),2+0*math.cos(sine/40),0.5+0*math.cos(sine/40))*CFrame.Angles(math.rad(35+5*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40)),math.rad(0+0*math.cos(sine/40))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.75+0*math.cos(sine/10),0+0.3*math.sin(sine/20),-0.5+0.2*math.cos(sine/20))*CFrame.Angles(math.rad(90+30*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.75+0*math.cos(sine/10),0+-0.3*math.sin(sine/20),-0.5+-0.2*math.cos(sine/20))*CFrame.Angles(math.rad(90+-30*math.cos(sine/20)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == 'HELICOPTER' then
reanim.Humanoid.WalkSpeed = 45
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.5*math.cos(sine/50),2+0.75*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-25+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-110+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),2.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1280*math.rad(sine/2)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.5*math.cos(sine/50),2+0.75*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-25+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-110+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),2.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1280*math.rad(sine/2)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.5*math.cos(sine/50),2+0.75*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-5+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-110+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),2.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1280*math.rad(sine/2)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.5*math.cos(sine/50),2+0.75*math.sin(sine/50),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-25+5*math.cos(sine/50)),math.rad(0+0*math.cos(sine/10)),math.rad(0+5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0*math.cos(sine/10),1+0*math.cos(sine/10))*CFrame.Angles(math.rad(-110+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),2.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+1280*math.rad(sine/2)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end
--------------
elseif Mode == 'WOOM' then
reanim.Humanoid.WalkSpeed = 45
if reanim.Humanoid.Jump then -- jump
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.3*math.cos(sine/50),4.5+0.3*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-90+-5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+-5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),-3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2)
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.3*math.cos(sine/50),4.5+0.3*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-90+-5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+-5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),-3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('fff_fox','Right Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('SamuraiHat','Left Leg',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0.5+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.3*math.cos(sine/50),4.5+0.3*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-90+-5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+-5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),-3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk

elseif Root.Velocity.Magnitude > 20 then -- run
hat('Vector Arrow','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.5+0*math["cos"](sine/10))*CFrame.Angles(math.rad(90+0*math["cos"](sine/10)),math.rad(0+6000*math["rad"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0.3*math.cos(sine/50),4.5+0.3*math.sin(sine/50),0+0*math.cos(sine/50))*CFrame.Angles(math.rad(-90+-5*math.cos(sine/50)),math.rad(0+10*math.cos(sine/50)),math.rad(0+-5*math.cos(sine/50))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-90+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),-3+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(90+0*math.cos(sine/10))),.2)
end
--------------
end
srv.RenderStepped:Wait()
end
end)()
--------------
