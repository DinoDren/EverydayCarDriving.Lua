game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Everyday Car Driving GUI",
    Text = "Made By DINO#1390",
    Button1 = "Ok",
    Duration = 5
    })

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Made By DINO#1390 | Everyday Car Driving", "BloodTheme")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Main")

Section:NewToggle("Infinite Money", "Toggle Infinite Money", function(state)
    if state then
        _G.InfCash = true
    while _G.InfCash do
wait()
game:GetService("ReplicatedStorage").GetCash:FireServer()
end
    else
        _G.InfCash = false
    end
end)

Section:NewButton("Infinite Cash (Click 10 Times = 100k Per Second)", "Infinite Cash But Just Better When Clicked More", function()
    while true do
wait()
game:GetService("ReplicatedStorage").GetCash:FireServer()
end
end)

Section:NewButton("Unlock GamePass Cars", "Unlocks All GamePass Cars For Free", function()
    		    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame["Le Verare GAMEPASS"]:Destroy()
		    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame["RST9 GAMEPASS"]:Destroy()
		    game:GetService("ReplicatedStorage")["Le_Verare"].Parent =  game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame
		    game:GetService("ReplicatedStorage")["RST9"].Parent =  game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame
end)
