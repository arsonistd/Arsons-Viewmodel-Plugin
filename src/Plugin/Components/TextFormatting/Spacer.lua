-- Spacer.lua
-- ArsonistD
-- Started : 12/10/2021
-- Last Edit : 12/10/2021

local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Spacer = function(props)
    local order = props.Order
    local length = props.Length or 8

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, length);
        BackgroundTransparency = 1;
        LayoutOrder = order;
    })
end

return Spacer