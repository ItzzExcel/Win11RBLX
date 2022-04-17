local Hovered = script.Parent
local TweenService = game:GetService ('TweenService')

-- // Tween on MouseLeave

local TweenInfoExt = TweenInfo.new (0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)

local TweenExtAssets = {BackgroundColor3 = Color3.fromRGB(239, 239, 239), TextColor3 = Color3.fromRGB (0, 0, 0)
}

local TweenExt = TweenService : Create (Hovered, TweenInfoExt, TweenExtAssets)
-- // End of TweenExt

-- // Tween on MouseEnter

local TweenInfoEnt = TweenInfo.new (0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)

local TweenEntAssets = {BackgroundColor3 = Color3.fromRGB (0, 98, 200), TextColor3 = Color3.fromRGB (255, 255, 255)}

local TweenEnt = TweenService : Create (Hovered, TweenInfoEnt, TweenEntAssets)

-- // End of TweenEnt

Hovered.MouseEnter : Connect (function ()
	TweenEnt : Play ()
end)

Hovered.MouseLeave : Connect (function ()
	TweenExt : Play ()
end)