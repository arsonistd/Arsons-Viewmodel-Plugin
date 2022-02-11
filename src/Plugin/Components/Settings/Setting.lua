-- Settings.lua
-- ArsonistD
-- Started : 12/10/2021
-- Last Edit : 12/10/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

local function settingNameLabel(props)
    local theme = framework.GetModule("Theme")
    local text = props.Text
    local order = props.Order
    local isExtra = props.isExtraText

    local startingPoint = -30
    local increment = 30

    local function slope(m, x, b)
        return m*x+b
    end

    local indent = 10
    if isExtra then
        indent = 30
    end

    return Roact.createElement("TextLabel", {
        Size = UDim2.new(1, 150-indent, 0, 30);
        Position = UDim2.new(0, indent, 0, slope(order, increment, startingPoint));
        BackgroundTransparency = 1;
        Text = text;
        TextScaled = true;
        TextColor3 = theme.Item.Default.Text;
        TextXAlignment = Enum.TextXAlignment.Left;
        Font = Enum.Font.Arial;
     }, {
        TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
            MaxTextSize = 14;
            MinTextSize = 5;
        });
     });
end

Setting = function(props)
    local length = props.Length or 30
    local text = props.Text
    local content = props.Content
    local order = props.Order
    local extraText = props.ExtraText or {}
    
    local texts = {}
    for i,v in pairs(extraText) do
        texts[#texts+1] = v
    end

    local nameLabelComponents = {}
    for i,v in pairs(texts) do
        nameLabelComponents[#nameLabelComponents+1] = Roact.createElement(settingNameLabel, {
            Text = v;
            Order = i+1;
            isExtraText = true;
        })
    end

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, length);
        BackgroundTransparency = 1;
        LayoutOrder = order;
    }, {
        NameLabel = Roact.createElement(settingNameLabel, {
            Text = text;
            Order = 1;
            isExtraText = false;
        });
        ExtraNameLabel = Roact.createFragment(nameLabelComponents);
        ContentFrame = Roact.createElement("Frame", {
            Size = UDim2.new(1, -150, 1, 0);
            Position = UDim2.new(0, 150, 0, 0);
            BackgroundTransparency = 1;
        }, {
            Content = content;
        })
    })
end

return Setting