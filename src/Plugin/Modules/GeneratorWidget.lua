-- GeneratorWidget.lua
-- ArsonistD
-- Started : 12/07/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.ArsonsPluginFramework)
local verson = require(script.Parent.Parent.Verison)
local Roact = require(script.Parent.Parent.Packages.Roact)
local Signal = require(script.Parent.Parent.Packages.Signal)

local GeneratorWidget = framework.CreateModule("GeneratorWidget")

GeneratorWidget.WidgetButtonPressed = Signal.new()
GeneratorWidget.UpdateScrollingFrame = Signal.new()

function GeneratorWidget:Init()
	local toolbar = framework.GetModule("Toolbar")
	local button = toolbar.generateButton


    local widgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, false, false, 200, 300, 320, 150)
	button.ClickableWhenViewportHidden = true
	button.Click:Connect(function() self.Widget.Enabled = not self.Widget.Enabled end)

	self.Widget = framework.plugin:CreateDockWidgetPluginGui("Generator", widgetInfo)
	self.Widget.Title = "LandscapeX Generator "..verson
	self.Widget:GetPropertyChangedSignal("Enabled"):Connect(function() if self.Widget.Enabled then button:SetActive(true) else button:SetActive(false) end end)

	local GenerateApp = framework.GetComponent("GenerateApp")

	Roact.mount(Roact.createElement(GenerateApp), self.Widget)
end


return GeneratorWidget