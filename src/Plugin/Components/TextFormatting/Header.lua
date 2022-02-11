-- Header.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Header = function(props)
    local theme = framework.GetModule("Theme")

    local text = props.Text
    local order = props.Order

    return Roact.createElement("TextLabel", {
        Size = UDim2.new(1, -10, 0, 40);
        Position = UDim2.new(0, 10, 0, 0);
        BackgroundTransparency = 1;
        TextColor3 = theme.Item.Default.Text;
        Font = Enum.Font.ArialBold;
        TextSize = 25;
        Text = text;
        LayoutOrder = order;
        TextXAlignment = Enum.TextXAlignment.Left;
    })
end

return Header