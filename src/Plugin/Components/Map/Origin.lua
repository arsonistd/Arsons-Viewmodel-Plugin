-- Origin.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Origin = function(props)
    return Roact.createElement("Frame", {
        Position = UDim2.new(0.5, 0, 0.5, 0);
        Size = UDim2.new(0, 6, 0, 6);
        BackgroundColor3 = Color3.fromRGB(255, 0, 0);
        BorderSizePixel = 0;
    })
end

return Origin