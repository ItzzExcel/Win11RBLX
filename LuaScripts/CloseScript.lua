-- // This script makes usable the Close Icon located on 'MainUI.Frame.Border.Icons.Close' 'and MainUI.SetupStaring.Border.Icons.Close'

local CloseIcon = script.Parent.Frame.Border.Icons.Close
local CloseV2 = script.Parent.SetupStarting.Border.Icons.Close

CloseIcon.MouseButton1Click : Connect (function ()
	game.Players.LocalPlayer : Kick ("Setup Cancelled")
end)

CloseV2.MouseButton1Click : Connect (function ()
	game.Players.LocalPlayer : Kick ("Setup Cancelled")
end)