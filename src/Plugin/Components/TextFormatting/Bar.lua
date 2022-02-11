-- Bar.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Bar = function(props)
    local theme = framework.GetModule("Theme")

    local order = props.Order 

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, 8);
        BackgroundTransparency = 1;
        LayoutOrder = order;
    }, {
        Roact.createElement("Frame", {
            Size = UDim2.new(1, -20, 0, 3);
            Position = UDim2.new(0.5, 0, 0.5, 0);
            AnchorPoint = Vector2.new(0.5, 0.5);
            BackgroundColor3 = theme.Item.Default.Border;
            BorderSizePixel = 0;
        })
    })
end

return Bar