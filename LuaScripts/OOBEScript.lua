local OOBEFrame = script.Parent.Parent.OOBEFrame
local OOBEValue = script.Parent.Parent.OOBEValue
local LoadOOBE = script.Parent.LoadOOBE
local Sound = script.Parent.Startup
local WinIcon = script.Parent.Parent.WinIcon
local Gradients = script.Parent.Parent.Frame.UIGradient
local TweenService = game:GetService ('TweenService')
local OldLoad = script.Parent.Parent.Frame.LoadIcon
local JustA = OldLoad.Parent.ProgressInfo
local RightCountry = script.Parent.Parent.RightCountry

local TweenInfoLoad = TweenInfo.new (
	1,
	Enum.EasingStyle.Circular,
	Enum.EasingDirection.InOut,
	-1,
	false,
	0
)

local TweenLoad = TweenService:Create (LoadOOBE, TweenInfoLoad, {Rotation = 360})

OOBEValue.Changed : Connect (function ()
	JustA.Visible = false
	OldLoad.Visible = false
	Gradients.Enabled = true
	WinIcon.Visible = true
	WinIcon : TweenSizeAndPosition(UDim2.new (0, 192, 0, 130), UDim2.new (0.5, 0, 0.334, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.8)
	Sound : Play ()
	wait (3)
	OOBEFrame.Visible = true
	wait (0.4)
	TweenLoad : Play ()
	wait (4)
	TweenLoad : Pause()
	local ParentScript = script.Parent
	ParentScript.Visible = false
	LoadOOBE.Visible = false
	WinIcon.Visible = false
	RightCountry.Visible = true
end)