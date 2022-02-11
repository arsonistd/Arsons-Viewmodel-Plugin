-- NumberBox.lua
-- ArsonistD
-- Started : 12/11/2021
-- Last Edit : 12/11/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

NumberBox = Roact.Component:extend(
    "NumberBox"
)

function NumberBox:init()
    self:setState({
        boxState = "Default";
    })
    self.theme = framework.GetModule("Theme")
end

function NumberBox:render()
    local yOffset = self.props.YOffset
    local value = self.props.Value

    return Roact.createElement("TextBox", {
        Size = UDim2.new(0, 50, 0, 20);
        Position = UDim2.new(0.5, 0, 0, yOffset);
        AnchorPoint = Vector2.new(0.5, 0);
        Text = value;
        BorderSizePixel = 2;
        BackgroundColor3 = self.theme.TextBox[self.state.boxState].Background;
        BorderColor3 = self.theme.TextBox[self.state.boxState].Border;
        TextColor3 = self.theme.TextBox[self.state.boxState].Text;
        [Roact.Event.MouseEnter] = function(rbx)
            self:setState(function(state)
                return {
                    boxState = "Hover";
                }
            end)
        end;
        [Roact.Event.MouseLeave] = function(rbx)
            self:setState(function(state)
                return {
                    boxState = "Default";
                }
            end)
        end;
    })
end

function NumberBox:didMount()
    
end

function NumberBox:willUnmount()
    
end

return NumberBox