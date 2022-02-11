-- Axis.lua
-- ArsonistD
-- Started : 12/26/2021
-- Last Edit : 12/26/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Axis = Roact.Component:extend(
    "Axis"
)

function Axis:init()
    self.theme = framework.GetModule("Theme")
end

function Axis:render()
    return Roact.createFragment({
        X = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, 3);
            Position = UDim2.new(0, 0, 0.5, 0);
            BorderSizePixel = 0;
            BackgroundColor3 = self.theme.Group.BarBackground
        });
        Y = Roact.createElement("Frame", {
            Size = UDim2.new(0, 3, 1, 0);
            Position = UDim2.new(0.5, 0, 0, 0);
            BorderSizePixel = 0;
            BackgroundColor3 = self.theme.Group.BarBackground
        });
    })
end

return Axis