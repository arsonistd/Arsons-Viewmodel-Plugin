-- Bool.lua
-- ArsonistD
-- Started : 12/11/2021
-- Last Edit : 12/11/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Bool = Roact.Component:extend(
    "Bool"
)

function Bool:init()
    local value = self.props.Value

    self:setState({
        activated = value;
        boolState = "Default";
    })
    self.Generate = framework.GetModule("Generate")
    self.theme = framework.GetModule("Theme")
end

function Bool:render()
    local boolState = self.state.boolState

    local type = self.props.Type
    local value = self.props

    local oppositeActive
    if self.state.activated then
        oppositeActive = false
    else
        oppositeActive = true
    end

    local boolImage
    if self.state.activated then
        boolImage = self.theme.Bool.Enabled
    else
        boolImage = self.theme.Bool.Disabled
    end

    return Roact.createElement("ImageButton", {
        Size = UDim2.new(1, -8, 1, -8);
        Position = UDim2.new(0.5, 0, 0, 5);
        AnchorPoint = Vector2.new(0.5, 0);
        BorderSizePixel = 0;
        ImageTransparency = 0.5;
        BackgroundColor3 = self.theme.Bool.Colors[boolState].Background;
        Image = self.theme.Bool.Border;
        ImageColor3 = self.theme.Bool.Colors[boolState].Border;
        BackgroundTransparency = 0;
        AutoButtonColor = false;
        [Roact.Event.MouseEnter] = function(rbx)
            self:setState(function(state)
                return {
                    activated = state.activated;
                    boolState = "Hover";
                }
            end)
        end;
        [Roact.Event.MouseLeave] = function(rbx)
            self:setState(function(state)
                return {
                    activated = state.activated;
                    boolState = "Default";
                }
            end)
        end;
        [Roact.Event.MouseButton1Up] = function(rbx)
            self:setState(function(state)
                return {
                    activated = state.activated;
                    boolState = "Hover";
                }
            end)
        end;
        [Roact.Event.MouseButton1Down] = function(rbx)
            self:setState(function(state)
                self.Generate:UpdateSetting(type, value)
                return {
                    activated = oppositeActive;
                    boolState = "Pressed";
                }
            end)
        end;
    }, {
        UIAspectRatio = Roact.createElement("UIAspectRatioConstraint");
        Image = Roact.createElement("ImageLabel", {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 1, 0);
            ImageColor3 = self.theme.SelectedColor;
            Image = boolImage;
        })
    })
end

function Bool:didMount()
    
end

function Bool:willUnmount()
    
end

return Bool