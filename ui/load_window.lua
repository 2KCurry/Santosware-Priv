local library31 = loadstring(game:HttpGet("https://raw.githubusercontent.com/2KCurry/Santosware-Priv/main/ui/lib.lua"))()

local Config = {
    WindowName = "Santosware.cc - phantom forces",
	Color = Color3.fromRGB(255,0,255),
	Keybind = Enum.KeyCode.RightShift
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

Window:SetBackground("2151741365")

local Tab1 = Window:CreateTab("aimbot")
local Tab2 = Window:CreateTab("character")
local Tab3 = Window:CreateTab("Misc")

-- Aimbot Section9

local silentaim_sector = Tab1:CreateSection("Silent Aim")
silentaim_sector:CreateToggle("enabled", false, function(state)
        config.aimbot.silent_aim = state
    end)
local Section9 = Tab3:CreateSection("UI Toggle")

local Toggle31 = Section9:CreateToggle("", nil, function(State)
	Window:Toggle(State)
end)
Toggle31:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle31:SetState(true)
