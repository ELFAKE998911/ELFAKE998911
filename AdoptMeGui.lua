local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Adopt Me Gui", "Ocean")

-- Tabs

local Tab1 = Window:NewTab("Gingerbread")
local Tab1Section = Tab1:NewSection("Gingerbread")

local Tab2 = Window:NewTab("Jugador")
local Tab2Section = Tab2:NewSection("Jugador")

local Tab3 = Window:NewTab("Otros")
local Tab3Section = Tab3:NewSection("Otros")

local Tab4 = Window:NewTab("Teletransportes")
local Tab4Section = Tab4:NewSection("Próximamente...")

local Tab5 = Window:NewTab("Creditos")
local Tab5Section = Tab5:NewSection("Roblox: ELFAKE998911")
Tab5:NewSection("Discord: Not#2766")

-- Buttons/Windows/Idk

Tab1Section:NewButton("Autofarm Gingerbread", "Autofarm Gingerbread", function()
    getgenv().Start = true
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GingerbreadMarkers = ReplicatedStorage.Resources.IceSkating.GingerbreadMarkers


for i, v in pairs(debug.getupvalue(require(ReplicatedStorage.Fsys).load("RouterClient").init, 4)) do
   v.Name = i
end
spawn(function()
   while wait() and Start do
       pcall(function()
           for i,v in pairs(GingerbreadMarkers:GetChildren()) do
               if v:IsA("BasePart") then
                   ReplicatedStorage.API:FindFirstChild("WinterEventAPI/PickUpGingerbread"):InvokeServer(v.Name)
               end
           end
           ReplicatedStorage.API:FindFirstChild("WinterEventAPI/RedeemPendingGingerbread"):FireServer()
           ReplicatedStorage.API:FindFirstChild("WinterEventAPI/SubmitIceSkatingTime"):FireServer(0)
       end)
   end
end)
end)

Tab2Section:NewSlider("Speed", "Sussy Speed", 250, 120, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

Tab3Section:NewButton("Infinite Yield", "Barra de comandos", function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Tab2Section:NewButton("Anti Akf", "Anti Kick/afk", function()
    wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti kick/afk Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="By ELFAKE998911"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Anti AFK"wait(2)ab.Text="Script Activado"end)
end)

Tab2Section:NewButton("Inf Jumps", "Enables Inf Jumps", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)
