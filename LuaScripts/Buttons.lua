-- // This script make the buttons usable 

local LocalPlayer = game.Players.LocalPlayer
local GUI = LocalPlayer.PlayerGui
local CloseButton = GUI.MainUI.Frame.Border.Icons.Close
local MaximizeButton = GUI.MainUI.Frame.Border.Icons.Maximize
local Minimizebutton = GUI.MainUI.Frame.Border.Icons.Minimize
local NextButton = GUI.MainUI.Frame.MainInstall.Next
local InstallButton = GUI.MainUI.NextInstall.InstallButon
local NextFrame = GUI.MainUI.NextInstall
local YoValue = GUI.MainUI.YoValue

-- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 

CloseButton.MouseButton1Click : Connect (function ()
	LocalPlayer : Kick ("Setup Cancelled")
end)

-- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 

MaximizeButton.MouseButton1Click : Connect (function ()
	GUI.MainUI.Frame.MainInstall : TweenSizeAndPosition (UDim2.new (1, 0, 1, 0), UDim2.new (0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint)
	YoValue.Value = true
	wait ()
end)

MaximizeButton.MouseButton1Click : Connect (function ()
	if YoValue.Value == true then
		GUI.MainUI.NextInstall : TweenSizeAndPosition (UDim2.new (1, 0, 1, 0), UDim2.new (0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint)
	end
end)

-- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 

Minimizebutton.MouseButton1Click : Connect (function ()
	print ("We can't do that!")
end)

-- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 

NextButton.MouseButton1Click : Connect (function ()
	GUI.MainUI.Frame.MainInstall : Destroy ()
	GUI.MainUI.NextInstall.ZIndex = 1
end)

-- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 

InstallButton.MouseButton1Click : Connect (function ()
	NextFrame : Destroy ()
	GUI.MainUI.Frame.Border : Destroy ()
	local StartingSetup = GUI.MainUI.SetupStarting.SetupText
	StartingSetup.Visible = true
	GUI.MainUI.SetupStarting.idk.Value = true
end)