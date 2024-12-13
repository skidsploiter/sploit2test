print("Loaded")
-- // pls dont skid

--[[ 

hi iusethis!\pls dont fuck my code up <3

]]
-- REQUIRED
-- This basically adds a lot of UNC Functions and patches vulns.
-- thanks to raz for this (owner of scorpion)
-- fixing this loadstring soon :)
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/RazAPI/Scorpion/refs/heads/main/Debug/x64/Model/MainEnvironment.lua"))()
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/RazAPI/Scorpion/refs/heads/main/Debug/x64/Model/ProtectedEnvironment.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/skidsploiter/sploit2test/refs/heads/main/env.lua"))()
function getsenv(script_instance)
	local env = getfenv(debug.info(2, 'f'))
	return setmetatable({
		script = script_instance,
	}, {
		__index = function(self, index)
			return env[index] or rawget(self, index)
		end,
		__newindex = function(self, index, value)
			xpcall(function()
				env[index] = value
			end, function()
				rawset(self, index, value)
			end)
		end,
	})
end

function getrunningscripts()
    local scripts = {}
    for _, script in ipairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
        if script:IsA("LocalScript") or script:IsA("ModuleScript") or script:IsA("Script") then
            scripts[#scripts + 1] = script
        end
    end
    return scripts
  end

  function getrunningscript()
    return getrunningscripts
  end

  getconnections = newcclosure(function(Event) -- hi
    assert(typeof(Event) == "RBXScriptSignal", "Argument must be a RBXScriptSignal")

    local Connections = {}

    local Connection = Event:Connect(function() end)
    
    local ConnectionInfo = {
        ["Enabled"] = true,
        ["ForeignState"] = false,
        ["LuaConnection"] = true,
        ["Function"] = function() end,
        ["Thread"] = getrenv()["coroutine"].create(function() end),
        ["Fire"] = function() Connection:Fire() end,
        ["Defer"] = function() task.defer(Connection["Fire"], Connection) end,
        ["Disconnect"] = function() Connection:Disconnect() end,
        ["Disable"] = function() ConnectionInfo["Enabled"] = false end,
        ["Enable"] = function() ConnectionInfo["Enabled"] = true end,
    }

    getrenv()["table"].insert(Connections, ConnectionInfo)

    Connection:Disconnect()
    return Connections
end)

function getconnection()
    return getconnections
end

function get_connections()
    return  getconnections
end

function getconnect()
    return getconnections
end

-- setclipboard("https://discord.gg/VxhjCgcj")
-- this bad

sploit = function(text)
    print(text)
    task.wait(.025)
    local msg = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI:WaitForChild("MainView").ClientLog[tostring(#game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog:GetChildren())-1].msg
    for i, x in pairs({TextColor3 = Color3.fromRGB(69, 165, 236)}) do
        msg[i] = x
    end
    msg.Parent.image.Image = "rbxasset://textures/DevConsole/Info.png"
end







-- // CONFIG
function identifyexecutor()
	 return 'Sploit v1.0.1'
end


local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Sploit";
    Text = "Loading UI elements...";
    Icon = "";
    Duration = 5;
})
task.wait(0.4)

if game:GetService("CoreGui"):FindFirstChild("Bar") then return end
local Converted = {
	["_Bar"] = Instance.new("ScreenGui");
	["_Blur"] = Instance.new("Frame");
	["_BarFrame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_DropShadowHolder"] = Instance.new("Frame");
	["_DropShadow"] = Instance.new("ImageLabel");
	["_UIStroke"] = Instance.new("UIStroke");
	["_time"] = Instance.new("TextLabel");
	["_LocalScript"] = Instance.new("LocalScript");
	["_Home"] = Instance.new("ImageButton");
	["_UICorner1"] = Instance.new("UICorner");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_LPLR"] = Instance.new("ImageButton");
	["_UICorner2"] = Instance.new("UICorner");
	["_LocalScript2"] = Instance.new("LocalScript");
	["_Executor"] = Instance.new("ImageButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_LocalScript3"] = Instance.new("LocalScript");
	["_ScriptHub"] = Instance.new("ImageButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_LocalScript4"] = Instance.new("LocalScript");
	["_Home1"] = Instance.new("Folder");
	["_Player"] = Instance.new("Frame");
	["_UICorner5"] = Instance.new("UICorner");
	["_UIGradient"] = Instance.new("UIGradient");
	["_ImageLabel"] = Instance.new("ImageLabel");
	["_UICorner6"] = Instance.new("UICorner");
	["_LocalScript5"] = Instance.new("LocalScript");
	["_Display"] = Instance.new("TextLabel");
	["_LocalScript6"] = Instance.new("LocalScript");
	["_User"] = Instance.new("TextLabel");
	["_LocalScript7"] = Instance.new("LocalScript");
	["_Information"] = Instance.new("Frame");
	["_UICorner7"] = Instance.new("UICorner");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_Session Info"] = Instance.new("TextLabel");
	["_Executor1"] = Instance.new("TextLabel");
	["_Name"] = Instance.new("TextLabel");
	["_UITextSizeConstraint"] = Instance.new("UITextSizeConstraint");
	["_Time"] = Instance.new("TextLabel");
	["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint");
	["_Name1"] = Instance.new("TextLabel");
	["_UITextSizeConstraint2"] = Instance.new("UITextSizeConstraint");
	["_UiKeybind"] = Instance.new("Frame");
	["_UICorner8"] = Instance.new("UICorner");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_Keybind"] = Instance.new("TextLabel");
	["_Description"] = Instance.new("TextLabel");
	["_TextBox"] = Instance.new("TextBox");
	["_UICorner9"] = Instance.new("UICorner");
	["_LocalScript8"] = Instance.new("LocalScript");
	["_LocalScript9"] = Instance.new("LocalScript");
	["_Lplr"] = Instance.new("Frame");
	["_UICorner10"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_Panel"] = Instance.new("Frame");
	["_LPLRLAbel"] = Instance.new("TextLabel");
	["_WalkSpeed"] = Instance.new("Frame");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_FillThing"] = Instance.new("Frame");
	["_UICorner12"] = Instance.new("UICorner");
	["_slidermain"] = Instance.new("TextButton");
	["_UICorner13"] = Instance.new("UICorner");
	["_LocalScript10"] = Instance.new("LocalScript");
	["_Val"] = Instance.new("TextLabel");
	["_JumpPower"] = Instance.new("Frame");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_FillThing1"] = Instance.new("Frame");
	["_UICorner15"] = Instance.new("UICorner");
	["_slidermain1"] = Instance.new("TextButton");
	["_UICorner16"] = Instance.new("UICorner");
	["_LocalScript11"] = Instance.new("LocalScript");
	["_Val1"] = Instance.new("TextLabel");
	["_FOV"] = Instance.new("Frame");
	["_UICorner17"] = Instance.new("UICorner");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_FillThing2"] = Instance.new("Frame");
	["_UICorner18"] = Instance.new("UICorner");
	["_slidermain2"] = Instance.new("TextButton");
	["_UICorner19"] = Instance.new("UICorner");
	["_LocalScript12"] = Instance.new("LocalScript");
	["_Val2"] = Instance.new("TextLabel");
	["_DropShadowHolder1"] = Instance.new("Frame");
	["_DropShadow1"] = Instance.new("ImageLabel");
	["_ExecutorFR"] = Instance.new("Frame");
	["_UICorner20"] = Instance.new("UICorner");
	["_DropShadowHolder2"] = Instance.new("Frame");
	["_DropShadow2"] = Instance.new("ImageLabel");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_Panel1"] = Instance.new("Frame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_TextBox1"] = Instance.new("TextBox");
	["_UICorner21"] = Instance.new("UICorner");
	["_Execute"] = Instance.new("ImageButton");
	["_UICorner22"] = Instance.new("UICorner");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_LocalScript13"] = Instance.new("LocalScript");
	["_Clear"] = Instance.new("ImageButton");
	["_UICorner23"] = Instance.new("UICorner");
	["_UIStroke7"] = Instance.new("UIStroke");
	["_LocalScript14"] = Instance.new("LocalScript");
	["_ScriptHubFR"] = Instance.new("Frame");
	["_UICorner24"] = Instance.new("UICorner");
	["_DropShadowHolder3"] = Instance.new("Frame");
	["_DropShadow3"] = Instance.new("ImageLabel");
	["_Panel2"] = Instance.new("Frame");
	["_UIStroke8"] = Instance.new("UIStroke");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_VapeV4"] = Instance.new("Frame");
	["_UICorner25"] = Instance.new("UICorner");
	["_UIStroke9"] = Instance.new("UIStroke");
	["_Text"] = Instance.new("TextLabel");
	["_Execute1"] = Instance.new("TextButton");
	["_UICorner26"] = Instance.new("UICorner");
	["_UITextSizeConstraint3"] = Instance.new("UITextSizeConstraint");
	["_LocalScript15"] = Instance.new("LocalScript");
	["_Dex"] = Instance.new("Frame");
	["_UICorner27"] = Instance.new("UICorner");
	["_UIStroke10"] = Instance.new("UIStroke");
	["_Text1"] = Instance.new("TextLabel");
	["_Execute2"] = Instance.new("TextButton");
	["_UICorner28"] = Instance.new("UICorner");
	["_UITextSizeConstraint4"] = Instance.new("UITextSizeConstraint");
	["_LocalScript16"] = Instance.new("LocalScript");
}
-- Properties:

local UserInputService = game:GetService("UserInputService")

local function toggleVisibility()
    _BarFrame.Visible = not _BarFrame.Visible
    _BarFrame.Visible = _BarFrame.Visible
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.Delete then
            toggleVisibility()
        end
    end
end)

Converted["_Bar"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_Bar"].Name = "Bar"
Converted["_Bar"].Parent = game:GetService("CoreGui")
Converted["_Blur"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Blur"].BackgroundTransparency = 0.6000000238418579
Converted["_Blur"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Blur"].BorderSizePixel = 0
Converted["_Blur"].Position = UDim2.new(0, 0, -0.13909775, 0)
Converted["_Blur"].Size = UDim2.new(1, 0, 1.13909769, 0)
Converted["_Blur"].Name = "Blur"
Converted["_Blur"].Parent = Converted["_Bar"]
Converted["_BarFrame"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_BarFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BarFrame"].BorderSizePixel = 0
Converted["_BarFrame"].Position = UDim2.new(0.354667366, 0, 0.923469663, 0)
Converted["_BarFrame"].Size = UDim2.new(0.290053159, 0, 0.0638448074, 0)
Converted["_BarFrame"].Name = "BarFrame"
Converted["_BarFrame"].Parent = Converted["_Blur"]
Converted["_UICorner"].Parent = Converted["_BarFrame"]
Converted["_DropShadowHolder"].BackgroundTransparency = 1
Converted["_DropShadowHolder"].BorderSizePixel = 0
Converted["_DropShadowHolder"].Size = UDim2.new(1, 0, 1, 0)
Converted["_DropShadowHolder"].ZIndex = 0
Converted["_DropShadowHolder"].Name = "DropShadowHolder"
Converted["_DropShadowHolder"].Parent = Converted["_BarFrame"]
Converted["_DropShadow"].Image = "rbxassetid://6014261993"
Converted["_DropShadow"].ImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropShadow"].ImageTransparency = 0.5
Converted["_DropShadow"].ScaleType = Enum.ScaleType.Slice
Converted["_DropShadow"].SliceCenter = Rect.new(49, 49, 450, 450)
Converted["_DropShadow"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DropShadow"].BackgroundTransparency = 1
Converted["_DropShadow"].BorderSizePixel = 0
Converted["_DropShadow"].Position = UDim2.new(0.5, 0, 0.479984999, 0)
Converted["_DropShadow"].Size = UDim2.new(1, 47, 1, 47)
Converted["_DropShadow"].ZIndex = 0
Converted["_DropShadow"].Name = "DropShadow"
Converted["_DropShadow"].Parent = Converted["_DropShadowHolder"]
Converted["_UIStroke"].Color = Color3.fromRGB(127.00000762939453, 127.00000762939453, 127.00000762939453)
Converted["_UIStroke"].Parent = Converted["_BarFrame"]
Converted["_time"].Font = Enum.Font.SourceSansBold
Converted["_time"].Text = "time"
Converted["_time"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_time"].TextScaled = true
Converted["_time"].TextSize = 14
Converted["_time"].TextWrapped = true
Converted["_time"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_time"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_time"].BackgroundTransparency = 1
Converted["_time"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_time"].BorderSizePixel = 0
Converted["_time"].Position = UDim2.new(0.0359461904, 0, 0.258063942, 0)
Converted["_time"].Size = UDim2.new(0.167160287, 0, 0.467741907, 0)
Converted["_time"].Name = "time"
Converted["_time"].Parent = Converted["_BarFrame"]
Converted["_Home"].Image = "rbxassetid://6026568198"
Converted["_Home"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_Home"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Home"].BorderSizePixel = 0
Converted["_Home"].Position = UDim2.new(0.225679412, 0, 0.177418575, 0)
Converted["_Home"].Size = UDim2.new(0.0826078281, 0, 0.629032254, 0)
Converted["_Home"].Name = "Home"
Converted["_Home"].Parent = Converted["_BarFrame"]
Converted["_UICorner1"].CornerRadius = UDim.new(0, 6)
Converted["_UICorner1"].Parent = Converted["_Home"]
Converted["_LPLR"].Image = "rbxassetid://6022668898"
Converted["_LPLR"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_LPLR"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LPLR"].BorderSizePixel = 0
Converted["_LPLR"].Position = UDim2.new(0.330391437, 0, 0.177418575, 0)
Converted["_LPLR"].Size = UDim2.new(0.0826078281, 0, 0.629032254, 0)
Converted["_LPLR"].Name = "LPLR"
Converted["_LPLR"].Parent = Converted["_BarFrame"]
Converted["_UICorner2"].CornerRadius = UDim.new(0, 6)
Converted["_UICorner2"].Parent = Converted["_LPLR"]
Converted["_Executor"].Image = "rbxassetid://6022668955"
Converted["_Executor"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_Executor"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Executor"].BorderSizePixel = 0
Converted["_Executor"].Position = UDim2.new(0.4324857, 0, 0.177418575, 0)
Converted["_Executor"].Size = UDim2.new(0.0826078281, 0, 0.629032254, 0)
Converted["_Executor"].Name = "Executor"
Converted["_Executor"].Parent = Converted["_BarFrame"]
Converted["_UICorner3"].CornerRadius = UDim.new(0, 6)
Converted["_UICorner3"].Parent = Converted["_Executor"]
Converted["_ScriptHub"].Image = "rbxassetid://6022668883"
Converted["_ScriptHub"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_ScriptHub"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptHub"].BorderSizePixel = 0
Converted["_ScriptHub"].Position = UDim2.new(0.537197709, 0, 0.177418575, 0)
Converted["_ScriptHub"].Size = UDim2.new(0.0826078281, 0, 0.629032254, 0)
Converted["_ScriptHub"].Name = "ScriptHub"
Converted["_ScriptHub"].Parent = Converted["_BarFrame"]
Converted["_UICorner4"].CornerRadius = UDim.new(0, 6)
Converted["_UICorner4"].Parent = Converted["_ScriptHub"]
Converted["_Home1"].Name = "Home"
Converted["_Home1"].Parent = Converted["_Blur"]
Converted["_Player"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player"].BorderSizePixel = 0
Converted["_Player"].Position = UDim2.new(0.00911161769, 1, 0.138749331, 0)
Converted["_Player"].Size = UDim2.new(0.207289293, 0, 0.0894499943, 0)
Converted["_Player"].Visible = false
Converted["_Player"].Name = "Player"
Converted["_Player"].Parent = Converted["_Home1"]
Converted["_UICorner5"].Parent = Converted["_Player"]
Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135))
}
Converted["_UIGradient"].Parent = Converted["_Player"]
Converted["_ImageLabel"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
Converted["_ImageLabel"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
Converted["_ImageLabel"].BackgroundTransparency = 0.5
Converted["_ImageLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel"].BorderSizePixel = 0
Converted["_ImageLabel"].Position = UDim2.new(0.0256410185, 0, 0.114285715, 0)
Converted["_ImageLabel"].Size = UDim2.new(0.197802201, 0, 0.771428585, 0)
Converted["_ImageLabel"].Parent = Converted["_Player"]
Converted["_UICorner6"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner6"].Parent = Converted["_ImageLabel"]
Converted["_Display"].Font = Enum.Font.SourceSansBold
Converted["_Display"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Display"].TextScaled = true
Converted["_Display"].TextSize = 14
Converted["_Display"].TextWrapped = true
Converted["_Display"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Display"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Display"].BackgroundTransparency = 1
Converted["_Display"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Display"].BorderSizePixel = 0
Converted["_Display"].Position = UDim2.new(0.249084249, 0, 0.200000003, 0)
Converted["_Display"].Size = UDim2.new(0.710622728, 0, 0.342857152, 0)
Converted["_Display"].Name = "Display"
Converted["_Display"].Parent = Converted["_Player"]
Converted["_User"].Font = Enum.Font.SourceSans
Converted["_User"].TextColor3 = Color3.fromRGB(118.00000816583633, 118.00000816583633, 118.00000816583633)
Converted["_User"].TextScaled = true
Converted["_User"].TextSize = 14
Converted["_User"].TextWrapped = true
Converted["_User"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_User"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_User"].BackgroundTransparency = 1
Converted["_User"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_User"].BorderSizePixel = 0
Converted["_User"].Position = UDim2.new(0.249084249, 0, 0.54285717, 0)
Converted["_User"].Size = UDim2.new(0.710622728, 0, 0.22857143, 0)
Converted["_User"].Name = "User"
Converted["_User"].Parent = Converted["_Player"]
Converted["_Information"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Information"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Information"].BorderSizePixel = 0
Converted["_Information"].Position = UDim2.new(0.00987091847, 0, 0.239225417, 0)
Converted["_Information"].Size = UDim2.new(0.207289293, 0, 0.132897139, 0)
Converted["_Information"].Visible = false
Converted["_Information"].Name = "Information"
Converted["_Information"].Parent = Converted["_Home1"]
Converted["_UICorner7"].Parent = Converted["_Information"]
Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(57.00000040233135, 57.00000040233135, 57.00000040233135))
}
Converted["_UIGradient1"].Parent = Converted["_Information"]
Converted["_Session Info"].Font = Enum.Font.SourceSansBold
Converted["_Session Info"].Text = "Information"
Converted["_Session Info"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Session Info"].TextScaled = true
Converted["_Session Info"].TextSize = 14
Converted["_Session Info"].TextWrapped = true
Converted["_Session Info"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Session Info"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Session Info"].BackgroundTransparency = 1
Converted["_Session Info"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Session Info"].BorderSizePixel = 0
Converted["_Session Info"].Position = UDim2.new(0.0476190485, 0, 0.0409356728, 0)
Converted["_Session Info"].Size = UDim2.new(0.732600749, 0, 0.259615391, 0)
Converted["_Session Info"].Name = "Session Info"
Converted["_Session Info"].Parent = Converted["_Information"]
Converted["_Executor1"].Font = Enum.Font.SourceSans
Converted["_Executor1"].Text = "Sploit:"
Converted["_Executor1"].TextColor3 = Color3.fromRGB(175.00000476837158, 175.00000476837158, 175.00000476837158)
Converted["_Executor1"].TextScaled = true
Converted["_Executor1"].TextSize = 14
Converted["_Executor1"].TextWrapped = true
Converted["_Executor1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Executor1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Executor1"].BackgroundTransparency = 1
Converted["_Executor1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Executor1"].BorderSizePixel = 0
Converted["_Executor1"].Position = UDim2.new(0.0476190485, 0, 0.294984221, 0)
Converted["_Executor1"].Size = UDim2.new(0.230769232, 0, 0.317307681, 0)
Converted["_Executor1"].Name = "Executor"
Converted["_Name"].Font = Enum.Font.Code
Converted["_Name"].Text = ""
Converted["_Name"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Name"].TextScaled = true
Converted["_Name"].TextSize = 16
Converted["_Name"].TextWrapped = true
Converted["_Name"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Name"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Name"].BackgroundTransparency = 1
Converted["_Name"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Name"].BorderSizePixel = 0
Converted["_Name"].Position = UDim2.new(0.296703309, 0, 0.312528014, 0)
Converted["_Name"].Size = UDim2.new(0.538461566, 0, 0.288461536, 0)
Converted["_Name"].Name = "Name"
Converted["_Name"].Parent = Converted["_Information"]
Converted["_UITextSizeConstraint"].MaxTextSize = 20
Converted["_UITextSizeConstraint"].Parent = Converted["_Name"]
Converted["_Time"].Font = Enum.Font.SourceSans
Converted["_Time"].Text = "Version:"
Converted["_Time"].TextColor3 = Color3.fromRGB(175.00000476837158, 175.00000476837158, 175.00000476837158)
Converted["_Time"].TextScaled = true
Converted["_Time"].TextSize = 14
Converted["_Time"].TextWrapped = true
Converted["_Time"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Time"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Time"].BackgroundTransparency = 1
Converted["_Time"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Time"].BorderSizePixel = 0
Converted["_Time"].Position = UDim2.new(0.0476190485, 0, 0.594503522, 0)
Converted["_Time"].Size = UDim2.new(0.230769232, 0, 0.317307681, 0)
Converted["_Time"].Name = "Time"
Converted["_Time"].Parent = Converted["_Information"]
Converted["_UITextSizeConstraint1"].MaxTextSize = 20
Converted["_UITextSizeConstraint1"].Parent = Converted["_Time"]
Converted["_Name1"].Font = Enum.Font.Code
Converted["_Name1"].Text = "Sploit 1.0.1"
Converted["_Name1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Name1"].TextScaled = true
Converted["_Name1"].TextSize = 14
Converted["_Name1"].TextWrapped = true
Converted["_Name1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Name1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Name1"].BackgroundTransparency = 1
Converted["_Name1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Name1"].BorderSizePixel = 0
Converted["_Name1"].Position = UDim2.new(0.270000011, 0, 0.599923074, 0)
Converted["_Name1"].Size = UDim2.new(0.549450576, 0, 0.288461536, 0)
Converted["_Name1"].Name = "Name"
Converted["_Name1"].Parent = Converted["_Information"]
Converted["_UITextSizeConstraint2"].MaxTextSize = 20
Converted["_UITextSizeConstraint2"].Parent = Converted["_Name1"]
Converted["_UiKeybind"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_UiKeybind"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_UiKeybind"].BorderSizePixel = 0
Converted["_UiKeybind"].Position = UDim2.new(0.224753231, 1, 0.138749331, 0)
Converted["_UiKeybind"].Size = UDim2.new(0.207289293, 0, 0.117562853, 0)
Converted["_UiKeybind"].Visible = false
Converted["_UiKeybind"].Name = "UiKeybind"
Converted["_UiKeybind"].Parent = Converted["_Home1"]
Converted["_UICorner8"].Parent = Converted["_UiKeybind"]
Converted["_UIGradient2"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(72.00000330805779, 72.00000330805779, 72.00000330805779))
}
Converted["_UIGradient2"].Parent = Converted["_UiKeybind"]
Converted["_Keybind"].Font = Enum.Font.Gotham
Converted["_Keybind"].Text = "Keybind"
Converted["_Keybind"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Keybind"].TextScaled = true
Converted["_Keybind"].TextSize = 14
Converted["_Keybind"].TextWrapped = true
Converted["_Keybind"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Keybind"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Keybind"].BackgroundTransparency = 1
Converted["_Keybind"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Keybind"].BorderSizePixel = 0
Converted["_Keybind"].Position = UDim2.new(0.051282052, 0, 0.0898954794, 0)
Converted["_Keybind"].Size = UDim2.new(0.710622728, 0, 0.260869563, 0)
Converted["_Keybind"].Name = "Keybind"
Converted["_Keybind"].Parent = Converted["_UiKeybind"]
Converted["_Description"].Font = Enum.Font.SourceSans
Converted["_Description"].Text = "Main UI Keybind"
Converted["_Description"].TextColor3 = Color3.fromRGB(118.00000816583633, 118.00000816583633, 118.00000816583633)
Converted["_Description"].TextScaled = true
Converted["_Description"].TextSize = 14
Converted["_Description"].TextWrapped = true
Converted["_Description"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Description"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Description"].BackgroundTransparency = 1
Converted["_Description"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Description"].BorderSizePixel = 0
Converted["_Description"].Position = UDim2.new(0.051282052, 0, 0.341819435, 0)
Converted["_Description"].Size = UDim2.new(0.710622728, 0, 0.173913047, 0)
Converted["_Description"].Name = "Description"
Converted["_Description"].Parent = Converted["_UiKeybind"]
Converted["_TextBox"].Font = Enum.Font.SourceSans
Converted["_TextBox"].PlaceholderColor3 = Color3.fromRGB(166.00000530481339, 166.00000530481339, 166.00000530481339)
Converted["_TextBox"].PlaceholderText = "DEL"
Converted["_TextBox"].MultiLine = true
Converted["_TextBox"].Text = ""
Converted["_TextBox"].TextColor3 = Color3.fromRGB(166.00000530481339, 166.00000530481339, 166.00000530481339)
Converted["_TextBox"].TextScaled = true
Converted["_TextBox"].TextSize = 14
Converted["_TextBox"].TextWrapped = true
Converted["_TextBox"].ClearTextOnFocus = false
Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(61.00000016391277, 61.00000016391277, 61.00000016391277)
Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox"].BorderSizePixel = 0
Converted["_TextBox"].Interactable = false
Converted["_TextBox"].Position = UDim2.new(0.051282052, 0, 0.593319297, 0)
Converted["_TextBox"].Size = UDim2.new(0.0879120901, 0, 0.260869563, 0)
Converted["_TextBox"].Parent = Converted["_UiKeybind"]
Converted["_UICorner9"].Parent = Converted["_TextBox"]
Converted["_Lplr"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_Lplr"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Lplr"].BorderSizePixel = 0
Converted["_Lplr"].Position = UDim2.new(0.354593784, 0, 0.700265706, 0)
Converted["_Lplr"].Size = UDim2.new(0.290053159, 0, 0.213402137, 0)
Converted["_Lplr"].Visible = false
Converted["_Lplr"].Name = "Lplr"
Converted["_Lplr"].Parent = Converted["_Blur"]
Converted["_UICorner10"].Parent = Converted["_Lplr"]
Converted["_UIStroke1"].Color = Color3.fromRGB(127.00000762939453, 127.00000762939453, 127.00000762939453)
Converted["_UIStroke1"].Parent = Converted["_Lplr"]
Converted["_Panel"].BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456)
Converted["_Panel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Panel"].BorderSizePixel = 0
Converted["_Panel"].Position = UDim2.new(0, 0, 0.19760479, 0)
Converted["_Panel"].Size = UDim2.new(1, 0, 0.00598802418, 0)
Converted["_Panel"].Name = "Panel"
Converted["_Panel"].Parent = Converted["_Lplr"]
Converted["_LPLRLAbel"].Font = Enum.Font.BuilderSans
Converted["_LPLRLAbel"].Text = "Miscellanous - Sploit"
Converted["_LPLRLAbel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LPLRLAbel"].TextScaled = false
Converted["_LPLRLAbel"].TextSize = 14
Converted["_LPLRLAbel"].TextWrapped = false
Converted["_LPLRLAbel"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_LPLRLAbel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LPLRLAbel"].BackgroundTransparency = 1
Converted["_LPLRLAbel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LPLRLAbel"].BorderSizePixel = 0
Converted["_LPLRLAbel"].Position = UDim2.new(0.0399999991, 0, 0.00999999978, 0)
Converted["_LPLRLAbel"].Size = UDim2.new(0.222513095, 0, 0.161676645, 0)
Converted["_LPLRLAbel"].Name = "LPLRLAbel"
Converted["_LPLRLAbel"].Parent = Converted["_Lplr"]
Converted["_WalkSpeed"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_WalkSpeed"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_WalkSpeed"].BorderSizePixel = 0
Converted["_WalkSpeed"].Position = UDim2.new(0.018324608, 0, 0.263473064, 0)
Converted["_WalkSpeed"].Size = UDim2.new(0.963350773, 0, 0.179640725, 0)
Converted["_WalkSpeed"].Name = "WalkSpeed"
Converted["_WalkSpeed"].Parent = Converted["_Lplr"]
Converted["_UICorner11"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner11"].Parent = Converted["_WalkSpeed"]
Converted["_UIStroke2"].Color = Color3.fromRGB(67.00000360608101, 67.00000360608101, 67.00000360608101)
Converted["_UIStroke2"].Parent = Converted["_WalkSpeed"]
Converted["_FillThing"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485)
Converted["_FillThing"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FillThing"].BorderSizePixel = 0
Converted["_FillThing"].Size = UDim2.new(0.00999999978, 0, 1, 0)
Converted["_FillThing"].Name = "FillThing"
Converted["_FillThing"].Parent = Converted["_WalkSpeed"]
Converted["_UICorner12"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner12"].Parent = Converted["_FillThing"]
Converted["_slidermain"].Font = Enum.Font.SourceSans
Converted["_slidermain"].Text = ""
Converted["_slidermain"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain"].TextSize = 14
Converted["_slidermain"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_slidermain"].BackgroundTransparency = 1
Converted["_slidermain"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain"].BorderSizePixel = 0
Converted["_slidermain"].Size = UDim2.new(1, 0, 1, 0)
Converted["_slidermain"].Name = "slidermain"
Converted["_slidermain"].Parent = Converted["_WalkSpeed"]
Converted["_UICorner13"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner13"].Parent = Converted["_slidermain"]
Converted["_Val"].Font = Enum.Font.SourceSans
Converted["_Val"].Text = ""
Converted["_Val"].TextColor3 = Color3.fromRGB(131.00000739097595, 131.00000739097595, 131.00000739097595)
Converted["_Val"].TextScaled = true
Converted["_Val"].TextSize = 14
Converted["_Val"].TextWrapped = true
Converted["_Val"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Val"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Val"].BackgroundTransparency = 1
Converted["_Val"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Val"].BorderSizePixel = 0
Converted["_Val"].Position = UDim2.new(0.0217391308, 0, 0.200000003, 0)
Converted["_Val"].Size = UDim2.new(0.543478251, 0, 0.566666663, 0)
Converted["_Val"].Name = "Val"
Converted["_Val"].Parent = Converted["_WalkSpeed"]
Converted["_JumpPower"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_JumpPower"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpPower"].BorderSizePixel = 0
Converted["_JumpPower"].Position = UDim2.new(0.018324608, 0, 0.508982062, 0)
Converted["_JumpPower"].Size = UDim2.new(0.963350773, 0, 0.179640725, 0)
Converted["_JumpPower"].Name = "JumpPower"
Converted["_JumpPower"].Parent = Converted["_Lplr"]
Converted["_UICorner14"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner14"].Parent = Converted["_JumpPower"]
Converted["_UIStroke3"].Color = Color3.fromRGB(67.00000360608101, 67.00000360608101, 67.00000360608101)
Converted["_UIStroke3"].Parent = Converted["_JumpPower"]
Converted["_FillThing1"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485)
Converted["_FillThing1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FillThing1"].BorderSizePixel = 0
Converted["_FillThing1"].Size = UDim2.new(0.00999999978, 0, 1, 0)
Converted["_FillThing1"].Name = "FillThing"
Converted["_FillThing1"].Parent = Converted["_JumpPower"]
Converted["_UICorner15"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner15"].Parent = Converted["_FillThing1"]
Converted["_slidermain1"].Font = Enum.Font.SourceSans
Converted["_slidermain1"].Text = ""
Converted["_slidermain1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain1"].TextSize = 14
Converted["_slidermain1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_slidermain1"].BackgroundTransparency = 1
Converted["_slidermain1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain1"].BorderSizePixel = 0
Converted["_slidermain1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_slidermain1"].Name = "slidermain"
Converted["_slidermain1"].Parent = Converted["_JumpPower"]
Converted["_UICorner16"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner16"].Parent = Converted["_slidermain1"]
Converted["_Val1"].Font = Enum.Font.SourceSans
Converted["_Val1"].Text = ""
Converted["_Val1"].TextColor3 = Color3.fromRGB(131.00000739097595, 131.00000739097595, 131.00000739097595)
Converted["_Val1"].TextScaled = true
Converted["_Val1"].TextSize = 14
Converted["_Val1"].TextWrapped = true
Converted["_Val1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Val1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Val1"].BackgroundTransparency = 1
Converted["_Val1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Val1"].BorderSizePixel = 0
Converted["_Val1"].Position = UDim2.new(0.0217391308, 0, 0.200000003, 0)
Converted["_Val1"].Size = UDim2.new(0.543478251, 0, 0.566666663, 0)
Converted["_Val1"].Name = "Val"
Converted["_Val1"].Parent = Converted["_JumpPower"]
Converted["_FOV"].BackgroundColor3 = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
Converted["_FOV"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FOV"].BorderSizePixel = 0
Converted["_FOV"].Position = UDim2.new(0.018324608, 0, 0.760479033, 0)
Converted["_FOV"].Size = UDim2.new(0.963350773, 0, 0.179640725, 0)
Converted["_FOV"].Name = "FOV"
Converted["_FOV"].Parent = Converted["_Lplr"]
Converted["_UICorner17"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner17"].Parent = Converted["_FOV"]
Converted["_UIStroke4"].Color = Color3.fromRGB(67.00000360608101, 67.00000360608101, 67.00000360608101)
Converted["_UIStroke4"].Parent = Converted["_FOV"]
Converted["_FillThing2"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 74.0000031888485, 74.0000031888485)
Converted["_FillThing2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FillThing2"].BorderSizePixel = 0
Converted["_FillThing2"].Size = UDim2.new(0.00999999978, 0, 1, 0)
Converted["_FillThing2"].Name = "FillThing"
Converted["_FillThing2"].Parent = Converted["_FOV"]
Converted["_UICorner18"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner18"].Parent = Converted["_FillThing2"]
Converted["_slidermain2"].Font = Enum.Font.SourceSans
Converted["_slidermain2"].Text = ""
Converted["_slidermain2"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain2"].TextSize = 14
Converted["_slidermain2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_slidermain2"].BackgroundTransparency = 1
Converted["_slidermain2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_slidermain2"].BorderSizePixel = 0
Converted["_slidermain2"].Size = UDim2.new(1, 0, 1, 0)
Converted["_slidermain2"].Name = "slidermain"
Converted["_slidermain2"].Parent = Converted["_FOV"]
Converted["_UICorner19"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner19"].Parent = Converted["_slidermain2"]
Converted["_Val2"].Font = Enum.Font.SourceSans
Converted["_Val2"].Text = ""
Converted["_Val2"].TextColor3 = Color3.fromRGB(131.00000739097595, 131.00000739097595, 131.00000739097595)
Converted["_Val2"].TextScaled = true
Converted["_Val2"].TextSize = 14
Converted["_Val2"].TextWrapped = true
Converted["_Val2"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Val2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Val2"].BackgroundTransparency = 1
Converted["_Val2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Val2"].BorderSizePixel = 0
Converted["_Val2"].Position = UDim2.new(0.0217391308, 0, 0.200000003, 0)
Converted["_Val2"].Size = UDim2.new(0.543478251, 0, 0.566666663, 0)
Converted["_Val2"].Name = "Val"
Converted["_Val2"].Parent = Converted["_FOV"]
Converted["_DropShadowHolder1"].BackgroundTransparency = 1
Converted["_DropShadowHolder1"].BorderSizePixel = 0
Converted["_DropShadowHolder1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_DropShadowHolder1"].ZIndex = 0
Converted["_DropShadowHolder1"].Name = "DropShadowHolder"
Converted["_DropShadowHolder1"].Parent = Converted["_Lplr"]
Converted["_DropShadow1"].Image = "rbxassetid://6014261993"
Converted["_DropShadow1"].ImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropShadow1"].ImageTransparency = 0.5
Converted["_DropShadow1"].ScaleType = Enum.ScaleType.Slice
Converted["_DropShadow1"].SliceCenter = Rect.new(49, 49, 450, 450)
Converted["_DropShadow1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DropShadow1"].BackgroundTransparency = 1
Converted["_DropShadow1"].BorderSizePixel = 0
Converted["_DropShadow1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_DropShadow1"].Size = UDim2.new(1, 47, 1, 47)
Converted["_DropShadow1"].ZIndex = 0
Converted["_DropShadow1"].Name = "DropShadow"
Converted["_DropShadow1"].Parent = Converted["_DropShadowHolder1"]
Converted["_ExecutorFR"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_ExecutorFR"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ExecutorFR"].BorderSizePixel = 0
Converted["_ExecutorFR"].Position = UDim2.new(0.354593784, 0, 0.673430681, 0)
Converted["_ExecutorFR"].Size = UDim2.new(0.290053159, 0, 0.232569993, 0)
Converted["_ExecutorFR"].Visible = false
Converted["_ExecutorFR"].Name = "ExecutorFR"
Converted["_ExecutorFR"].Parent = Converted["_Blur"]
Converted["_UICorner20"].Parent = Converted["_ExecutorFR"]
Converted["_DropShadowHolder2"].BackgroundTransparency = 1
Converted["_DropShadowHolder2"].BorderSizePixel = 0
Converted["_DropShadowHolder2"].Size = UDim2.new(1, 0, 1, 0)
Converted["_DropShadowHolder2"].ZIndex = 0
Converted["_DropShadowHolder2"].Name = "DropShadowHolder"
Converted["_DropShadowHolder2"].Parent = Converted["_ExecutorFR"]
Converted["_DropShadow2"].Image = "rbxassetid://6014261993"
Converted["_DropShadow2"].ImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropShadow2"].ImageTransparency = 0.5
Converted["_DropShadow2"].ScaleType = Enum.ScaleType.Slice
Converted["_DropShadow2"].SliceCenter = Rect.new(49, 49, 450, 450)
Converted["_DropShadow2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DropShadow2"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_DropShadow2"].BackgroundTransparency = 1
Converted["_DropShadow2"].BorderSizePixel = 0
Converted["_DropShadow2"].Position = UDim2.new(0.5, 0, 0.516483545, 0)
Converted["_DropShadow2"].Size = UDim2.new(1, 47, 1, 47)
Converted["_DropShadow2"].ZIndex = 0
Converted["_DropShadow2"].Name = "DropShadow"
Converted["_DropShadow2"].Parent = Converted["_DropShadowHolder2"]
Converted["_UIStroke5"].Color = Color3.fromRGB(127.00000002980232, 127.00000002980232, 127.00000002980232)
Converted["_UIStroke5"].Parent = Converted["_ExecutorFR"]
Converted["_Panel1"].BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456)
Converted["_Panel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Panel1"].BorderSizePixel = 0
Converted["_Panel1"].Position = UDim2.new(0, 0, 0.225274727, 0)
Converted["_Panel1"].Size = UDim2.new(1, 0, 0.00600000005, 0)
Converted["_Panel1"].Name = "Panel"
Converted["_Panel1"].Parent = Converted["_ExecutorFR"]
Converted["_TextLabel"].Font = Enum.Font.BuilderSans
Converted["_TextLabel"].Text = "Editor - Sploit"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextScaled = false
Converted["_TextLabel"].TextSize = 25
Converted["_TextLabel"].TextWrapped = false
Converted["_TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0.0340314135, 0, 0.0494505502, 0)
Converted["_TextLabel"].Size = UDim2.new(0.376963347, 0, 0.137362644, 0)
Converted["_TextLabel"].Parent = Converted["_ExecutorFR"]
Converted["_TextBox1"].CursorPosition = -1
Converted["_TextBox1"].Font = Enum.Font.Code
Converted["_TextBox1"].PlaceholderText = "Paste your script here"
Converted["_TextBox1"].MultiLine = true
Converted["_TextBox1"].Text = ""
Converted["_TextBox1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox1"].TextSize = 16
Converted["_TextBox1"].TextWrapped = true
Converted["_TextBox1"].ClearTextOnFocus = false
Converted["_TextBox1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextBox1"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_TextBox1"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_TextBox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox1"].BorderSizePixel = 0
Converted["_TextBox1"].Position = UDim2.new(0.0340314135, 0, 0.269230783, 0)
Converted["_TextBox1"].Size = UDim2.new(0.931937158, 0, 0.67032969, 0)
Converted["_TextBox1"].Parent = Converted["_ExecutorFR"]
Converted["_UICorner21"].Parent = Converted["_TextBox1"]
Converted["_Execute"].Image = "rbxassetid://6026663699"
Converted["_Execute"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
Converted["_Execute"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute"].BorderSizePixel = 0
Converted["_Execute"].Position = UDim2.new(1.03141356, 0, 0.269230783, 0)
Converted["_Execute"].Size = UDim2.new(0.104712039, 0, 0.219780222, 0)
Converted["_Execute"].Name = "Execute"
Converted["_Execute"].Parent = Converted["_ExecutorFR"]
Converted["_UICorner22"].Parent = Converted["_Execute"]
Converted["_UIStroke6"].Color = Color3.fromRGB(127.00000002980232, 127.00000002980232, 127.00000002980232)
Converted["_UIStroke6"].Parent = Converted["_Execute"]
Converted["_Clear"].Image = "rbxassetid://6035047409"
Converted["_Clear"].BackgroundColor3 = Color3.fromRGB(34.00000177323818, 34.00000177323818, 34.00000177323818)
Converted["_Clear"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Clear"].BorderSizePixel = 0
Converted["_Clear"].Position = UDim2.new(1.03141356, 0, 0.543956041, 0)
Converted["_Clear"].Size = UDim2.new(0.104712039, 0, 0.219780222, 0)
Converted["_Clear"].Name = "Clear"
Converted["_Clear"].Parent = Converted["_ExecutorFR"]
Converted["_UICorner23"].Parent = Converted["_Clear"]
Converted["_UIStroke7"].Color = Color3.fromRGB(127.00000002980232, 127.00000002980232, 127.00000002980232)
Converted["_UIStroke7"].Parent = Converted["_Clear"]
Converted["_ScriptHubFR"].BackgroundColor3 = Color3.fromRGB(42.000001296401024, 42.000001296401024, 42.000001296401024)
Converted["_ScriptHubFR"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScriptHubFR"].BorderSizePixel = 0
Converted["_ScriptHubFR"].Position = UDim2.new(0.354593784, 0, 0.743712842, 0)
Converted["_ScriptHubFR"].Size = UDim2.new(0.290053159, 0, 0.169955, 0)
Converted["_ScriptHubFR"].Visible = false
Converted["_ScriptHubFR"].Name = "ScriptHubFR"
Converted["_ScriptHubFR"].Parent = Converted["_Blur"]
Converted["_UICorner24"].Parent = Converted["_ScriptHubFR"]
Converted["_DropShadowHolder3"].BackgroundTransparency = 1
Converted["_DropShadowHolder3"].BorderSizePixel = 0
Converted["_DropShadowHolder3"].Size = UDim2.new(1, 0, 1, 0)
Converted["_DropShadowHolder3"].ZIndex = 0
Converted["_DropShadowHolder3"].Name = "DropShadowHolder"
Converted["_DropShadowHolder3"].Parent = Converted["_ScriptHubFR"]
Converted["_DropShadow3"].Image = "rbxassetid://6014261993"
Converted["_DropShadow3"].ImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropShadow3"].ImageTransparency = 0.5
Converted["_DropShadow3"].ScaleType = Enum.ScaleType.Slice
Converted["_DropShadow3"].SliceCenter = Rect.new(49, 49, 450, 450)
Converted["_DropShadow3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_DropShadow3"].BackgroundTransparency = 1
Converted["_DropShadow3"].BorderSizePixel = 0
Converted["_DropShadow3"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_DropShadow3"].Size = UDim2.new(1, 47, 1, 47)
Converted["_DropShadow3"].ZIndex = 0
Converted["_DropShadow3"].Name = "DropShadow"
Converted["_DropShadow3"].Parent = Converted["_DropShadowHolder3"]
Converted["_Panel2"].BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456)
Converted["_Panel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Panel2"].BorderSizePixel = 0
Converted["_Panel2"].Position = UDim2.new(0, 0, 0.261523247, 0)
Converted["_Panel2"].Size = UDim2.new(1, 0, 0.00600000005, 0)
Converted["_Panel2"].Name = "Panel"
Converted["_Panel2"].Parent = Converted["_ScriptHubFR"]
Converted["_UIStroke8"].Color = Color3.fromRGB(127.00000762939453, 127.00000762939453, 127.00000762939453)
Converted["_UIStroke8"].Parent = Converted["_ScriptHubFR"]
Converted["_TextLabel1"].Font = Enum.Font.Gotham
Converted["_TextLabel1"].Text = "Script Hub - Sploit"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextScaled = false
Converted["_TextLabel1"].TextSize = 14
Converted["_TextLabel1"].TextWrapped = false
Converted["_TextLabel1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Position = UDim2.new(0.0270000007, 0, 0.0225563906, 0)
Converted["_TextLabel1"].Size = UDim2.new(0.272251308, 0, 0.187969923, 0)
Converted["_TextLabel1"].Parent = Converted["_ScriptHubFR"]
Converted["_VapeV4"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_VapeV4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_VapeV4"].BorderSizePixel = 0
Converted["_VapeV4"].Position = UDim2.new(0.0261780098, 0, 0.300751865, 0)
Converted["_VapeV4"].Size = UDim2.new(0.947643995, 0, 0.308270663, 0)
Converted["_VapeV4"].Name = "VapeV4"
Converted["_VapeV4"].Parent = Converted["_ScriptHubFR"]
Converted["_UICorner25"].Parent = Converted["_VapeV4"]
Converted["_UIStroke9"].Color = Color3.fromRGB(67.00000360608101, 67.00000360608101, 67.00000360608101)
Converted["_UIStroke9"].Parent = Converted["_VapeV4"]
Converted["_Text"].Font = Enum.Font.SourceSansBold
Converted["_Text"].Text = "VapeV4"
Converted["_Text"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Text"].TextScaled = true
Converted["_Text"].TextSize = 14
Converted["_Text"].TextWrapped = true
Converted["_Text"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Text"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Text"].BackgroundTransparency = 1
Converted["_Text"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Text"].BorderSizePixel = 0
Converted["_Text"].Position = UDim2.new(0.0105756056, 0, 0.170731708, 0)
Converted["_Text"].Size = UDim2.new(0.541436493, 0, 0.634146333, 0)
Converted["_Text"].Name = "Text"
Converted["_Text"].Parent = Converted["_VapeV4"]
Converted["_Execute1"].Font = Enum.Font.SourceSansBold
Converted["_Execute1"].Text = "Execute"
Converted["_Execute1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute1"].TextScaled = true
Converted["_Execute1"].TextSize = 14
Converted["_Execute1"].TextWrapped = true
Converted["_Execute1"].BackgroundColor3 = Color3.fromRGB(116.00000828504562, 116.00000828504562, 116.00000828504562)
Converted["_Execute1"].BackgroundTransparency = 0.800000011920929
Converted["_Execute1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute1"].BorderSizePixel = 0
Converted["_Execute1"].Position = UDim2.new(0.737569034, 0, 0.140000001, 0)
Converted["_Execute1"].Size = UDim2.new(0.243093923, 0, 0.707317054, 0)
Converted["_Execute1"].Name = "Execute"
Converted["_Execute1"].Parent = Converted["_VapeV4"]
Converted["_UICorner26"].Parent = Converted["_Execute1"]
Converted["_UITextSizeConstraint3"].MaxTextSize = 20
Converted["_UITextSizeConstraint3"].Parent = Converted["_Execute1"]
Converted["_Dex"].BackgroundColor3 = Color3.fromRGB(47.0000009983778, 47.0000009983778, 47.0000009983778)
Converted["_Dex"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dex"].BorderSizePixel = 0
Converted["_Dex"].Position = UDim2.new(0.0261780098, 0, 0.649999976, 0)
Converted["_Dex"].Size = UDim2.new(0.947643995, 0, 0.308270663, 0)
Converted["_Dex"].Name = "Dex"
Converted["_Dex"].Parent = Converted["_ScriptHubFR"]
Converted["_UICorner27"].Parent = Converted["_Dex"]
Converted["_UIStroke10"].Color = Color3.fromRGB(67.00000360608101, 67.00000360608101, 67.00000360608101)
Converted["_UIStroke10"].Parent = Converted["_Dex"]
Converted["_Text1"].Font = Enum.Font.SourceSansBold
Converted["_Text1"].Text = "DexExplorer"
Converted["_Text1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Text1"].TextScaled = true
Converted["_Text1"].TextSize = 14
Converted["_Text1"].TextWrapped = true
Converted["_Text1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Text1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Text1"].BackgroundTransparency = 1
Converted["_Text1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Text1"].BorderSizePixel = 0
Converted["_Text1"].Position = UDim2.new(0.0105756056, 0, 0.170731708, 0)
Converted["_Text1"].Size = UDim2.new(0.541436493, 0, 0.634146333, 0)
Converted["_Text1"].Name = "Text"
Converted["_Text1"].Parent = Converted["_Dex"]
Converted["_Execute2"].Font = Enum.Font.SourceSansBold
Converted["_Execute2"].Text = "Execute"
Converted["_Execute2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute2"].TextScaled = true
Converted["_Execute2"].TextSize = 14
Converted["_Execute2"].TextWrapped = true
Converted["_Execute2"].BackgroundColor3 = Color3.fromRGB(116.00000828504562, 116.00000828504562, 116.00000828504562)
Converted["_Execute2"].BackgroundTransparency = 0.800000011920929
Converted["_Execute2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute2"].BorderSizePixel = 0
Converted["_Execute2"].Position = UDim2.new(0.737569034, 0, 0.140000001, 0)
Converted["_Execute2"].Size = UDim2.new(0.243093923, 0, 0.707317054, 0)
Converted["_Execute2"].Name = "Execute"
Converted["_Execute2"].Parent = Converted["_Dex"]
Converted["_UICorner28"].Parent = Converted["_Execute2"]
Converted["_UITextSizeConstraint4"].MaxTextSize = 20
Converted["_UITextSizeConstraint4"].Parent = Converted["_Execute2"]
-- Fake Module Scripts:
local fake_module_scripts = {}
-- Fake Local Scripts:
local function XJAMBH_fake_script() -- Fake Script: StarterGui.Bar.Blur.BarFrame.time.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_time"]
    local req = require



	local timecount = script.Parent
	
	function timeupdate()
		local current = os.date("*t") 
		local hours = current.hour
		local minutes = current.min
		local formatted = string.format("%02d:%02d", hours, minutes)
		timecount.Text = formatted
	end
	
	while wait() do
		timeupdate()
	end
	
end
local function IARMZP_fake_script() -- Fake Script: StarterGui.Bar.Blur.BarFrame.Home.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Home"]
	local home = script.Parent 
	local homegui = script.Parent.Parent.Parent.Home 
	local toggled = false 
	home.MouseButton1Click:Connect(function() 
		toggled = not toggled 
		if toggled then 
			for _, child in ipairs(homegui:GetChildren()) do 
				child.Visible = true 
			end
			home.ImageColor3 = Color3.fromRGB(42, 42, 42)
			home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		else 
			for _, child in ipairs(homegui:GetChildren()) do 
				child.Visible = false 
			end
			home.ImageColor3 = Color3.fromRGB(255, 255, 255)
			home.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
		end
	end)
end
local function KNOF_fake_script() -- Fake Script: StarterGui.Bar.Blur.BarFrame.LPLR.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_LPLR"]
    local req = require
   
	local lplr = script.Parent 
	local lplrthings = lplr.Parent.Parent.Lplr
	local exec = script.Parent.Parent.Parent.ExecutorFR
	local execbutton = script.Parent.Parent.Executor
	local scripthub = script.Parent.Parent.ScriptHub
	local scripthubFR = script.Parent.Parent.Parent.ScriptHubFR
	shared.toggled = false 
	lplr.MouseButton1Click:Connect(function() 
		shared.toggled = not shared.toggled 
		if shared.toggled then 
			lplrthings.Visible = true 
			exec.Visible = false 
			scripthubFR.Visible = false 
			execbutton.ImageColor3 = Color3.fromRGB(255, 255, 255)
			execbutton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			scripthub.ImageColor3 = Color3.fromRGB(255, 255, 255)
			scripthub.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			shared.extoggled = false
			shared.sctoggled = false 
			lplr.ImageColor3 = Color3.fromRGB(42, 42, 42)
			lplr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		else 
			lplrthings.Visible = false 
			lplr.ImageColor3 = Color3.fromRGB(255, 255, 255)
			lplr.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
		end
	end)
end
local function VRNOG_fake_script() -- Fake Script: StarterGui.Bar.Blur.BarFrame.Executor.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Executor"]
    local req = require
   


	local exec = script.Parent 
	local executor = exec.Parent.Parent.ExecutorFR
	local lplr = exec.Parent.Parent.Lplr
	local lplrbutton = exec.Parent.LPLR
	local scripthubn = exec.Parent.ScriptHub
	local scripthub = exec.Parent.Parent.ScriptHubFR
	shared.extoggled = false 
	exec.MouseButton1Click:Connect(function() 
		shared.extoggled = not shared.extoggled 
		if shared.extoggled then 
			executor.Visible = true 
			lplr.Visible = false
			scripthub.Visible = false 
			lplrbutton.ImageColor3 = Color3.fromRGB(255, 255, 255)
			lplrbutton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			scripthubn.ImageColor3 = Color3.fromRGB(255, 255, 255)
			scripthubn.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			shared.toggled = false
			shared.sctoggled = false 
			exec.ImageColor3 = Color3.fromRGB(42, 42, 42)
			exec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		else 
			executor.Visible = false 
			exec.ImageColor3 = Color3.fromRGB(255, 255, 255)
			exec.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
		end
	end)
end
local function KKOGF_fake_script() -- Fake Script: StarterGui.Bar.Blur.BarFrame.ScriptHub.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_ScriptHub"]
    local req = require
   

	local scripthub = script.Parent 
	local scripthubf = scripthub.Parent.Parent.ScriptHubFR
	local lplr = scripthub.Parent.Parent.Lplr
	local lplrbutton = scripthub.Parent.LPLR
	local exec = scripthub.Parent.Parent.ExecutorFR
	local execbutton = scripthub.Parent.Executor 
	shared.sctoggled = false 
	scripthub.MouseButton1Click:Connect(function() 
		shared.sctoggled = not shared.sctoggled 
		if shared.sctoggled then 
			scripthubf.Visible = true 
			lplr.Visible = false
			exec.Visible = false 
			lplrbutton.ImageColor3 = Color3.fromRGB(255, 255, 255)
			lplrbutton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			execbutton.ImageColor3 = Color3.fromRGB(255, 255, 255)
			execbutton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			shared.toggled = false
			shared.extoggled = false 
			scripthub.ImageColor3 = Color3.fromRGB(42, 42, 42)
			scripthub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		else 
			scripthubf.Visible = false 
			scripthub.ImageColor3 = Color3.fromRGB(255, 255, 255)
			scripthub.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
		end
	end)
end
local function XBXFNXA_fake_script() -- Fake Script: StarterGui.Bar.Blur.Home.Player.ImageLabel.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_ImageLabel"]
    local req = require
   
	local img = script.Parent
	local userid = game.Players.LocalPlayer.UserId
	while wait() do 
		img.Image = "rbxthumb://type=AvatarHeadShot&w=420&h=420&id="..userid
	end
end
local function MRFND_fake_script() -- Fake Script: StarterGui.Bar.Blur.Home.Player.Display.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Display"]
    local req = require
    
	local plr = game.Players.LocalPlayer.DisplayName
	local user = script.Parent 
	while wait() do 
		user.Text = plr
	end
	
end
local function FUXUOXV_fake_script() -- Fake Script: StarterGui.Bar.Blur.Home.Player.User.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_User"]
    local req = require
    
	local plr = game.Players.LocalPlayer.Name
	local user = script.Parent 
	while wait() do 
		user.Text = plr
	end
	
end
local function UTTJLHY_fake_script() -- Fake Script: StarterGui.Bar.Blur.Home.UiKeybind.TextBox.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_TextBox"]
    local req = require
    
	local keybind = script.Parent
	local uis = game:GetService("UserInputService")
	
	local function uppercase()
		if keybind:IsFocused() then
			if #keybind.Text > 2 then
				keybind.Text = string.sub(keybind.Text, 1, 1)
			end
			keybind.Text = string.upper(keybind.Text)
			keybind:ReleaseFocus()
		end
	end
	
	local function updatetxtboxyes(input)
		if keybind:IsFocused() then
			if input.KeyCode == Enum.KeyCode.LeftShift then
				keybind.Text = "LS"
			elseif input.KeyCode == Enum.KeyCode.RightShift then
				keybind.Text = "RS"
			elseif input.KeyCode == Enum.KeyCode.LeftAlt then
				keybind.Text = "LA"
			elseif input.KeyCode == Enum.KeyCode.RightAlt then
				keybind.Text = "RA"
			end
		end
	end
	
	keybind:GetPropertyChangedSignal("Text"):Connect(uppercase)
	uis.InputBegan:Connect(function(input)
		updatetxtboxyes(input)
	end)
	
end
local function XUYJMN_fake_script() -- Fake Script: StarterGui.Bar.Blur.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Blur"]
    local req = require
    
	local textBox = script.Parent.Home.UiKeybind.TextBox
	local uis = game:GetService("UserInputService")
	
	local function getKeyCodeFromChar(char)
		local keyMap = {
			a = Enum.KeyCode.A,
			b = Enum.KeyCode.B,
			c = Enum.KeyCode.C,
			d = Enum.KeyCode.D,
			e = Enum.KeyCode.E,
			f = Enum.KeyCode.F,
			g = Enum.KeyCode.G,
			h = Enum.KeyCode.H,
			i = Enum.KeyCode.I,
			j = Enum.KeyCode.J,
			k = Enum.KeyCode.K,
			l = Enum.KeyCode.L,
			m = Enum.KeyCode.M,
			n = Enum.KeyCode.N,
			o = Enum.KeyCode.O,
			p = Enum.KeyCode.P,
			q = Enum.KeyCode.Q,
			r = Enum.KeyCode.R,
			s = Enum.KeyCode.S,
			t = Enum.KeyCode.T,
			u = Enum.KeyCode.U,
			v = Enum.KeyCode.V,
			w = Enum.KeyCode.W,
			x = Enum.KeyCode.X,
			y = Enum.KeyCode.Y,
			z = Enum.KeyCode.Z,
			rs = Enum.KeyCode.RightShift,
			ls = Enum.KeyCode.LeftShift,
			la = Enum.KeyCode.LeftAlt,
			ins = Enum.KeyCode.Insert,
			del = Enum.KeyCode.Delete,
			ra = Enum.KeyCode.RightAlt
		}
		return keyMap[char:lower()] or Enum.KeyCode.Delete
	end
	local currentKeybind = Enum.KeyCode.Delete
	local function updateKeybind()
		local text = textBox.Text
		currentKeybind = getKeyCodeFromChar(text)
	end
	
	updateKeybind()
	
	textBox:GetPropertyChangedSignal("Text"):Connect(updateKeybind)
	
	uis.InputBegan:Connect(function(input)
		if input.KeyCode == currentKeybind then
			if script.Parent.Parent.Enabled then 
				script.Parent.Parent.Enabled = false 
			else 
				script.Parent.Parent.Enabled = true 
			end
		end
	end)
	
end
local function WWARFJ_fake_script() -- Fake Script: StarterGui.Bar.Blur.Lplr.WalkSpeed.slidermain.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_slidermain"]
    local req = require
    
	local slider = script.Parent.Parent 
	local fillThing = slider:FindFirstChild("FillThing")
	local slideMain = script.Parent
	local mouse = game.Players.LocalPlayer:GetMouse()
	local plr = game.Players.LocalPlayer.Name 
	local slidertext = script.Parent.Parent.Val 
	
	local UserInputService = game:GetService("UserInputService")
	
	local sliderSize = slider.AbsoluteSize
	local sliderPos = slider.AbsolutePosition
	local dragging = false
	local mouseInsideSlider = false
	local leftMouseButtonDown = false
	
	local minValue = 16
	local maxValue = 100
	
	local function updateFill(positionX)
		local clampedX = math.clamp(positionX, sliderPos.X, sliderPos.X + sliderSize.X)
		local fillWidth = clampedX - sliderPos.X
		fillThing.Size = UDim2.new(0, fillWidth, 1, 0)
		local sliderValue = minValue + (fillWidth / sliderSize.X) * (maxValue - minValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sliderValue
		slidertext.Text = "WalkSpeed: "..math.floor(sliderValue)
	end
	
	slideMain.MouseButton1Down:Connect(function()
		if mouseInsideSlider and leftMouseButtonDown then
			dragging = true
		end
	end)
	
	slideMain.MouseLeave:Connect(function()
		mouseInsideSlider = false
		dragging = false 
	end)
	
	slideMain.MouseEnter:Connect(function()
		mouseInsideSlider = true
	end)
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = true
			if mouseInsideSlider then
				dragging = true
			end
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = false
			dragging = false
		end
	end)
	
	mouse.Move:Connect(function()
		if dragging then
			updateFill(mouse.X)
		end
	end)
	
	updateFill(slideMain.Position.X.Offset + sliderPos.X)
	
end
local function EFXZOZ_fake_script() -- Fake Script: StarterGui.Bar.Blur.Lplr.JumpPower.slidermain.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_slidermain1"]

	local slider = script.Parent.Parent 
	local fillThing = slider:FindFirstChild("FillThing")
	local slideMain = script.Parent
	local mouse = game.Players.LocalPlayer:GetMouse()
	local plr = game.Players.LocalPlayer.Name 
	local slidertext = script.Parent.Parent.Val 
	
	local UserInputService = game:GetService("UserInputService")
	
	local sliderSize = slider.AbsoluteSize
	local sliderPos = slider.AbsolutePosition
	local dragging = false
	local mouseInsideSlider = false
	local leftMouseButtonDown = false
	
	local minValue = 50
	local maxValue = 150
	
	local function updateFill(positionX)
		local clampedX = math.clamp(positionX, sliderPos.X, sliderPos.X + sliderSize.X)
		local fillWidth = clampedX - sliderPos.X
		fillThing.Size = UDim2.new(0, fillWidth, 1, 0)
		local sliderValue = minValue + (fillWidth / sliderSize.X) * (maxValue - minValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = sliderValue
		slidertext.Text = "JumpPower: "..math.floor(sliderValue)
	end
	
	slideMain.MouseButton1Down:Connect(function()
		if mouseInsideSlider and leftMouseButtonDown then
			dragging = true
		end
	end)
	
	slideMain.MouseLeave:Connect(function()
		mouseInsideSlider = false
		dragging = false 
	end)
	
	slideMain.MouseEnter:Connect(function()
		mouseInsideSlider = true
	end)
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = true
			if mouseInsideSlider then
				dragging = true
			end
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = false
			dragging = false
		end
	end)
	
	mouse.Move:Connect(function()
		if dragging then
			updateFill(mouse.X)
		end
	end)
	
	updateFill(slideMain.Position.X.Offset + sliderPos.X)
	
end
local function SWUB_fake_script() -- Fake Script: StarterGui.Bar.Blur.Lplr.FOV.slidermain.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_slidermain2"]
    local req = require
   
	
	local slider = script.Parent.Parent 
	local fillThing = slider:FindFirstChild("FillThing")
	local slideMain = script.Parent
	local mouse = game.Players.LocalPlayer:GetMouse()
	local plr = game.Players.LocalPlayer.Name 
	local slidertext = script.Parent.Parent.Val 
	
	local UserInputService = game:GetService("UserInputService")
	
	local sliderSize = slider.AbsoluteSize
	local sliderPos = slider.AbsolutePosition
	local dragging = false
	local mouseInsideSlider = false
	local leftMouseButtonDown = false
	
	local minValue = 70
	local maxValue = 120
	
	local function updateFill(positionX)
		local clampedX = math.clamp(positionX, sliderPos.X, sliderPos.X + sliderSize.X)
		local fillWidth = clampedX - sliderPos.X
		fillThing.Size = UDim2.new(0, fillWidth, 1, 0)
		local sliderValue = minValue + (fillWidth / sliderSize.X) * (maxValue - minValue)
		game.Workspace.Camera.FieldOfView = sliderValue
		slidertext.Text = "FOV: "..math.floor(sliderValue)
	end
	
	slideMain.MouseButton1Down:Connect(function()
		if mouseInsideSlider and leftMouseButtonDown then
			dragging = true
		end
	end)
	
	slideMain.MouseLeave:Connect(function()
		mouseInsideSlider = false
		dragging = false 
	end)
	
	slideMain.MouseEnter:Connect(function()
		mouseInsideSlider = true
	end)
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = true
			if mouseInsideSlider then
				dragging = true
			end
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			leftMouseButtonDown = false
			dragging = false
		end
	end)
	
	mouse.Move:Connect(function()
		if dragging then
			updateFill(mouse.X)
		end
	end)
	
	updateFill(slideMain.Position.X.Offset + sliderPos.X)
	
end
local function BSQQK_fake_script() -- Fake Script: StarterGui.Bar.Blur.ExecutorFR.Execute.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Execute"]
    local req = require
   
	local execute = script.Parent.Parent.TextBox
	local exec = script.Parent 
	
	exec.MouseButton1Click:Connect(function()
		local success, result = pcall(function()
			assert(loadstring(execute.Text))()
		end)
	
		if success then
			Converted["_TextLabel"].Text = "Editor - Sploit (Script ran successfully!)"
			task.wait(0.4)
			Converted["_TextLabel"].Text = "Editor - Sploit"
		else
			Converted["_TextLabel"].Text = "Error occurred: " .. result
			task.wait(1)
			Converted["_TextLabel"].Text = "Editor - Sploit"
		end
	end)
	

local function PLWSDQ_fake_script() -- Fake Script: StarterGui.Bar.Blur.ExecutorFR.Clear.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Clear"]
	local textbox = script.Parent.Parent.TextBox
	local clear = script.Parent 
	
	clear.MouseButton1Click:Connect(function()
		execute.Text = ""
	end)
end

local function BYEUD_fake_script() -- Fake Script: StarterGui.Bar.Blur.ScriptHubFR.VapeV4.Execute.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Execute1"]
	local execute = script.Parent 
	execute.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
	end)
end
local function TUPTJBR_fake_script() -- Fake Script: StarterGui.Bar.Blur.ScriptHubFR.Dex.Execute.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Execute2"]
    local req = require

function request()
return {
 StatusCode = 200,
 Body = '{"User-Agent"": "Sploit v1.0.0'
}
end

http_request = request

	local execute = script.Parent
	execute.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/JepDeveloper/Dex-Explorer-V4/main/EEE.lua"))()
	end)
end
end

-- internal ui end -- 
local StarterGui = game:GetService("StarterGui")


StarterGui:SetCore("SendNotification", {
    Title = "Sploit";
    Text = "Successfully loaded!\nDeveloper: kz0x1";
    Icon = ""; -- Optional, you can put an image asset ID here.
    Duration = 5; -- Time in seconds the notification will be displayed.
})

coroutine.wrap(XJAMBH_fake_script)()
coroutine.wrap(IARMZP_fake_script)()
coroutine.wrap(KNOF_fake_script)()
coroutine.wrap(VRNOG_fake_script)()
coroutine.wrap(KKOGF_fake_script)()
coroutine.wrap(XBXFNXA_fake_script)()
coroutine.wrap(MRFND_fake_script)()
coroutine.wrap(FUXUOXV_fake_script)()
coroutine.wrap(UTTJLHY_fake_script)()
coroutine.wrap(XUYJMN_fake_script)()
coroutine.wrap(WWARFJ_fake_script)()
coroutine.wrap(EFXZOZ_fake_script)()
coroutine.wrap(SWUB_fake_script)()
coroutine.wrap(BSQQK_fake_script)()
coroutine.wrap(BYEUD_fake_script)()
coroutine.wrap(TUPTJBR_fake_script)()
