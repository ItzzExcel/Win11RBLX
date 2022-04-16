-- // This script Open the ServiceFrame located on 'MainUI.ServiceTerms' and Destroys the ActivateFrame in 'MainUI.ActivateFrame'

local ContentActivate = script.Parent.Parent
local IDontBtn = script.Parent
local ServiceFrame = script.Parent.Parent.Parent.Parent.ServiceTerms

IDontBtn.MouseButton1Click : Connect (function ()
	ContentActivate : Destroy ()
	
	ServiceFrame.Visible = true
end)