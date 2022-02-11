-- VisualizeWidgetButton.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

VisualizeWidgetButton = Roact.Component:extend(
    "VisualizeWidgetButton"
)

function VisualizeWidgetButton:init()
    
end

function VisualizeWidgetButton:render()
    return Roact.createElement("TextButton", {
        Size = UDim2.new(0, 60, 30, 0);
        Position = UDim2.new(0, 5, 0, 5);
        
    })
end

function VisualizeWidgetButton:didMount()
    
end

function VisualizeWidgetButton:willUnmount()
    
end

return VisualizeWidgetButton