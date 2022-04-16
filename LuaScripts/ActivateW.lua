-- // This script makes usable the button 'Install now' located on 'MainUI.NextInstall.InstallButton'

local GUI = game.Players.LocalPlayer.PlayerGui.MainUI
local SetupText = GUI.SetupStarting.SetupText
local Value = GUI.SetupStarting.idk

Value.Changed : Connect (function ()
	wait (3)
	SetupText : Destroy ()
	GUI.SetupStarting.Visible = true
	GUI.SetupStarting.ActivateFrame.Visible = true
end)