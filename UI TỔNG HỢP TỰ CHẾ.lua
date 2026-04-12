

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:SetTheme("Dark")

local Window = WindUI:CreateWindow({
    Title = "TA Hub UI",
    Author = "Clean Version",
    Size = UDim2.fromOffset(580, 400),
    Transparent = true,
})

-- TAB INFO
local 1 = Window:Tab({
    Title = "Thông tin",
})


1:Button({
    Name = "Quang Huy ☑",             
    Bio = "I LOVE VIETNAM'S", 
    Avatar = "rbxassetid://75089236463451", 
    Cover = "rbxassetid://113942234405258", 
    Verified = true 
})
1:Button({
"Huy Script 🇻🇳",
        "Follow our TikTok channel for the latest updates!!!",
        "rbxassetid://75089236463451",
        "rbxassetid://125520177394706",
        2000,
        10000,
        "https://tiktok.me/group/ZSm9FrLKD/"
})

1:Button({
    "Thông báo",
    "•Bear hub\n• Script by Quang Huy\n• Creation Date: 7-6-2026\n• Last updated date: 7-6-2026\n• Aura gun hiện chưa bắn được thuyền và leviathan"
})

-- 1. Tạo Discord Invite Container với 2 card
local discordContainer = 1:Button({
    -- Card 1
    {
        "Join the TikTok Group",
        "Follow our TikTok channel for the latest updates!!!",
        "rbxassetid://134852113716171",
        "rbxassetid://84636833673111",
        500,
        1500,
        "https://tiktok.me/group/ZSm9FrLKD/"
    },
    -- Card 2
    {
        "Join the Discord group",
        "Join the Discord group to stay updated with the latest announcements.",
        "rbxassetid://134852113716171",
        "rbxassetid://123427419242741",
        250,
        1000,
        "https://discord.gg/4XtcBYZ89"
    }
})