-- VisualizeWidgetBar.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

VisualizeWidgetBar = Roact.Component:extend(
    "VisualizeWidgetBar"
)

function VisualizeWidgetBar:init()
    self.theme = framework.GetModule("Theme")
end

function VisualizeWidgetBar:render()
    return Roact.createElement("Frame", {
        BackgroundColor3 = self.theme.Item.Default.Background;
        BorderColor3 = self.theme.Item.Default.Border;
        BorderSizePixel = 3;
        Size = UDim2.new(1, 0, 0, 40);
    }, {}, {
        UIGridLayout = Roact.createElement("UIGridLayout", {
            Padding = UDim.new(0, 5);
            FillDirection = Enum.FillDirection.Horizontal;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            VerticalAlignemnt = Enum.VerticalAlignment.Center;
        })
    })
end

function VisualizeWidgetBar:didMount()
    
end

function VisualizeWidgetBar:willUnmount()
    
end

return VisualizeWidgetBar