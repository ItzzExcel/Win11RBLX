-- // This script Destroy the 'ServiceTerms' Frame located on 'MainUI.ServiceTerms'

local NxtBtn = script.Parent
local ServiceFrame = script.Parent.Parent
local InstallationFrameMode = script.Parent.Parent.Parent.InstallationFrame

NxtBtn.MouseButton1Click : Connect (function ()
	ServiceFrame : Destroy ()
	print ()
	InstallationFrameMode.Visible = true
end)