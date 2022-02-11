-- Body.lua
-- ArsonistD
-- Started : 12/10/2021
-- Last Edit : 12/10/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)


Body = function(props)
    local theme = framework.GetModule("Theme")

    local Spacer = framework.GetComponent("Spacer")

    local text = props.Text
    local order = props.Order
    return Roact.createFragment({
        TopSpacer = Roact.createElement(Spacer, {
            Order = order;
            Length = 5;
        });
        Body = Roact.createElement("TextLabel", {
            Size = UDim2.new(1, 0, 0, 0);
            AutomaticSize = "Y";
            Text = text;
            BackgroundTransparency = 1;
            TextColor3 = theme.Item.Default.Text;
            TextSize = 15;
            Font = Enum.Font.Arial;
            TextWrapped = true;
            LayoutOrder = order;
        });
        BottomSpacer = Roact.createElement(Spacer, {
            Order = order;
            Length = 5;
        });
    })
end

return Body