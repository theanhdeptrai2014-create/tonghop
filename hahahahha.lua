local genv = getgenv()
local fenv = getfenv()

-- Debug
fenv.printf = function(msg)
    print("DEBUG:", msg)
end

-- Config
fenv.troi = function()
    genv.Config = {
        AutoRipIndra = false,
        AutoSoulReaper = false,
        HopSelected = 'Dough King',
        AutoCursedCaptain = false,
        AutoDoughKing = false,
        AutoHop = false,
        AutoDarkbeard = false,
    }
end

-- Save config
fenv.saveconfig = function()
    local HttpService = game:GetService('HttpService')
    writefile('noguchi/saved.config', HttpService:JSONEncode(genv.Config))
end

print('DEBUG: executed')
print('DEBUG: LOADING . . .')

-- Load UI
local WindUI = loadstring(game:HttpGet('https://github.com/Footagesus/WindUI/releases/latest/download/main.lua'))()
WindUI:SetTheme('Dark')

-- Window
local Window = WindUI:CreateWindow({
    Folder = '[10101010101010101]',
    Title = '[SCRIPT TỔNG HỢP] - [Blox Fruit]',
    Transparent = true,
    SideBarWidth = 200,
    Author = 'TAhub  [ THEANH ]',
    Theme = 'Dark',
    Size = UDim2.fromOffset(580, 400),
})

-- Tab 0
local Tab0 = Window:Tab({
    Title = 'THÔNG TIN',
})

-- Tab 1
local Tab1 = Window:Tab({
    Title = 'BLOX Fruits',
})

-- Nội dung Tab0
Tab0:Paragraph({
    Color = 'Grey',
    Title = 'This Script Made by Noguchi Hyuga',
    Desc = 'status: working',
})

Tab0:Paragraph({
    Title = "Discord",
    Desc = "discord.gg/dUXxxgdQ",
})

-- ===== NÚT ẢNH DISCORD =====
local ScreenGui = Instance.new("ScreenGui")
local btn = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

btn.Parent = ScreenGui
btn.Size = UDim2.new(0, 150, 0, 40)
btn.Position = UDim2.new(0.1, 0, 0.2, 0)
btn.Image = "rbxassetid://96392939384443" -- FIX link
btn.BackgroundColor3 = Color3.fromRGB(20,20,20)
btn.BorderSizePixel = 0
btn.Draggable = true

UICorner.Parent = btn
UICorner.CornerRadius = UDim.new(0, 10)

-- CLICK → COPY
btn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/dUXxxgdQ")
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Copied!",
            Text = "Đã copy link Discord",
            Duration = 3
        })
    else
        warn("❌ Executor không hỗ trợ setclipboard")
    end
end)
Tab1:Button({
    Title = "🖼️ Hiện Ảnh",
    Callback = function()

        local ScreenGui = Instance.new("ScreenGui")
        local Image = Instance.new("ImageLabel")
        local UICorner = Instance.new("UICorner")
        local UIStroke = Instance.new("UIStroke")
        local Text = Instance.new("TextLabel")

        ScreenGui.Parent = game.CoreGui

        -- ẢNH
        Image.Parent = ScreenGui
        Image.Size = UDim2.new(0, 300, 0, 150)
        Image.Position = UDim2.new(0.3, 0, 0.2, 0)
        Image.Image = "rbxassetid://91670762720701"
        Image.BackgroundColor3 = Color3.fromRGB(20,20,20)
        Image.BorderSizePixel = 0

        -- BO GÓC
        UICorner.Parent = Image
        UICorner.CornerRadius = UDim.new(0, 20)

        -- VIỀN
        UIStroke.Parent = Image
        UIStroke.Thickness = 2
        UIStroke.Color = Color3.fromRGB(255,255,255)

        -- CHỮ TRÊN VIỀN
        Text.Parent = Image
        Text.Size = UDim2.new(0, 150, 0, 25)
        Text.Position = UDim2.new(0.5, -75, 0, -12)
        Text.BackgroundColor3 = Color3.fromRGB(20,20,20)
        Text.Text = "THẾ ANH"
        Text.TextColor3 = Color3.fromRGB(255,255,255)
        Text.TextScaled = true
        Text.BorderSizePixel = 0
        Text.Font = Enum.Font.GothamBold

        local textCorner = Instance.new("UICorner")
        textCorner.Parent = Text
        textCorner.CornerRadius = UDim.new(0, 10)

    end
})
Tab1:Button({
    Title = "",
    Desc = "Click để load script",
    Callback = function()
      
    end
})