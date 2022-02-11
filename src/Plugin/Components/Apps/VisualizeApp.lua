-- VisualizeApp.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

VisualizeApp = Roact.Component:extend(
    "VisualizeApp"
)

function VisualizeApp:init()
    self.Bar = framework.GetComponent("VisualizeWidgetBar")
    self.Map = framework.GetComponent("VisualizeWidgetMap")
    self.VisualizeButton = framework.GetComponent("VisualizeWidgetButton")
end

function VisualizeApp:render()
    return Roact.createFragment({
        Bar = Roact.createElement(self.Bar, {}, {
            Button = Roact.createElement(self.VisualizeButton)
        });
        MapFrame = Roact.createElement("Frame", {
            
        }, {
            Map = Roact.createElement(self.Map, {}, {
                Origin = Roact.createElement(self.Origin);
                Axis = Roact.createElement(self.Axis);
            });
        });
    })
end

return VisualizeApp