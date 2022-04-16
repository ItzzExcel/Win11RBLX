-- // This Script is the BlackScreen during process 'This isn't finished'

local CustomBtn = script.Parent
local InstallationFrame = script.Parent.Parent.Parent
local ProgressFrame = script.Parent.Parent.Parent.Parent.ProgressInstall
local SetupStarting = script.Parent.Parent.Parent.Parent.SetupStarting
local Foreground = SetupStarting.Parent.Frame
local LoadIcon = Foreground.LoadIcon

-- // --

local PIFrame = script.Parent.Parent.Parent.Parent.ProgressInstall

local GettinReady = PIFrame.ProgressInfo.GettinReady
local InstallUpdts = PIFrame.ProgressInfo.InstallUpdates
local InstallFtrs = PIFrame.ProgressInfo.InstallFtrs
local FinishingUp = PIFrame.ProgressInfo.FinishingUp
local WindowsFiles = PIFrame.ProgressInfo.WNDSFiles
local BlackLabel = script.Parent.Parent.Parent.Parent.Frame.ProgressInfo

local TweenService = game:GetService ('TweenService')

local TweenInfo = TweenInfo.new (
	1,
	Enum.EasingStyle.Circular,
	Enum.EasingDirection.InOut,
	-1,
	false,
	0
)

local Tween = TweenService : Create (LoadIcon, TweenInfo, {Rotation = 360})

CustomBtn.MouseButton1Click : Connect (function ()
	InstallationFrame.Visible = false
	ProgressFrame.Visible = true
	-- //  -- //
	
	WindowsFiles.Check.Visible = true
	
	wait (2)
	
	GettinReady.Check.Visible = true
	
	wait (2)
	
	InstallFtrs.Check.Visible = true
	
	wait (2)
	
	InstallUpdts.Check.Visible = true
	
	wait (2)
	
	FinishingUp.Check.Visible = true
	
	wait (2)
	
	-- //  -- //
	
	SetupStarting.Border.Visible = false
	Foreground.BackgroundColor = BrickColor.new (Color3.fromHex ("#000000"))
	ProgressFrame : Destroy ()
	LoadIcon.Visible = true
	Tween : Play()
	
	BlackLabel.Visible = true
	
	wait (2)
	
	BlackLabel.Text = "Starting services"
	
	wait (10)
	
	BlackLabel.Text = "Getting devices ready"
	
	wait (3)
	
	BlackLabel.Text = "Getting devices ready (100%)"
	
	wait (0.7)
	
	BlackLabel.Text = "Getting ready"
	
	wait (20)
	
	BlackLabel.Visible = false
	
	wait (10)
	
	LoadIcon.Position = UDim2.new (0.5, 0, 0.5, 0)
	wait (2)
	BlackLabel.Visible = true
	BlackLabel.Position = UDim2.new (0.5, 0, 0.58, 0)
	BlackLabel.Text = "Just a moment..."
	
	wait (25)
end)