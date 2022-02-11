-- VisualizeWidgetMap.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

VisualizeWidgetMap = Roact.Component:extend(
    "VisualizeWidgetMap"
)

function VisualizeWidgetMap:init()
    self.Origin = framework.GetComponent("Origin")
    self.Axis = framework.GetComponent("Axis")


    self.theme = framework.GetModule("Theme")
end

function VisualizeWidgetMap:render()
    return Roact.createElement("Frame", {
        BorderSizePixel = 0;
        BackgroundColor3 = self.theme.RibbonButton.Hover.Background;
        Size = UDim2.new(1, 0, 1, -40);
        Position = UDim2.new(0, 0, 0, 40)
    }, {
        UIAspectRatio = Roact.createElement("UIAspectRatioConstraint")
    })
end

function VisualizeWidgetMap:didMount()
    
end

function VisualizeWidgetMap:willUnmount()
    
end

return VisualizeWidgetMap