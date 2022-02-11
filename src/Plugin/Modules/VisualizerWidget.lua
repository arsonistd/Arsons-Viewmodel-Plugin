-- VisualizerWidget.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.ArsonsPluginFramework)
local verson = require(script.Parent.Parent.Verison)
local Roact = require(script.Parent.Parent.Packages.Roact)
local Signal = require(script.Parent.Parent.Packages.Signal)

local VisualizerWidget = framework.CreateModule("VisualizerWidget")

VisualizerWidget.WidgetButtonPressed = Signal.new()

function VisualizerWidget:Init()
	local toolbar = framework.GetModule("Toolbar")
	local button = toolbar.visualizeButton


	local widgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, false, false, 200, 300, 320, 150)
	button.ClickableWhenViewportHidden = true
	button.Click:Connect(function() self.Widget.Enabled = not self.Widget.Enabled end)

	self.Widget = framework.plugin:CreateDockWidgetPluginGui("Viewmodels", widgetInfo)
	self.Widget.Title = "Arson's Viewmodel Plugin "..verson
	self.Widget:GetPropertyChangedSignal("Enabled"):Connect(function() if self.Widget.Enabled then button:SetActive(true) else button:SetActive(false) end end)

	local VisualizeApp = framework.GetComponent("VisualizeApp")

	Roact.mount(Roact.createElement(VisualizeApp), self.Widget)
end

return VisualizerWidget
