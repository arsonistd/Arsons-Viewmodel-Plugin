-- Group.lua
-- ArsonistD
-- Started : 12/10/2021
-- Last Edit : 12/10/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

Group = Roact.Component:extend(
    "Group"
)

function Group:init()
    self:setState({
        contentY = 0;
        textState = "Default";
        open = true;
    })

    self.theme = framework.GetModule("Theme")

    self.Spacer = framework.GetComponent("Spacer")

    self.textRef = Roact.createRef()
    self.collapseButtonRef = Roact.createRef()
    self.contentRef = Roact.createRef()
end

function Group:render()
    local text = self.props.Text
    local locked = self.props.Locked
    local lockedReason = self.props.LockedReason
    local order = self.props.Order
    local content = self.props.Contents

    -- Colors
    local barColor = self.theme.Group.BarBackground
    local contentColor = self.theme.Group.ContentBackground


    local oppositeOpenState
    local toggleImage
    if self.state.open then
        oppositeOpenState = false
        toggleImage = self.theme.CollapseArrows.Close
    else
        oppositeOpenState = true
        toggleImage = self.theme.CollapseArrows.Open
    end

    local lockedVisibility
    if locked then
        if self.state.open then
            lockedVisibility = true
        else
            lockedVisibility = false
        end
    else
        lockedVisibility = false
    end

    return Roact.createFragment({
        TopSpacer = Roact.createElement(self.Spacer, {
            Length = 5;
            Order = order;
        });
        Bar = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, 30);
            BackgroundTransparency = 1;
            LayoutOrder = order+1;
        }, {
            Bar = Roact.createElement("TextButton", {
                Size = UDim2.new(1, -10, 1, 0);
                Position = UDim2.new(0, 5, 0, 0);
                BackgroundColor3 = barColor;
                BorderColor3 = self.theme.Category.Default.Border;
                AutoButtonColor = false;
                Text = "";
                [Roact.Event.MouseEnter] = function(rbx)
                    self:setState(function(state)
                        return {
                            contentY = state.contentY;
                            textState = "Hover";
                            open = state.open;
                        }
                    end)
                end;
                [Roact.Event.MouseLeave] = function(rbx)
                    self:setState(function(state)
                        return {
                            contentY = state.contentY;
                            textState = "Default";
                            open = state.open;
                        }
                    end)
                end;
                [Roact.Event.MouseButton1Up] = function(rbx)
                    self:setState(function(state)
                        return {
                            contentY = state.contentY;
                            textState = "Hover";
                            open = oppositeOpenState;
                        }
                    end)
                end;
                [Roact.Event.MouseButton1Down] = function(rbx)
                    self:setState(function(state)
                        return {
                            contentY = state.contentY;
                            textState = "Pressed";
                            open = state.open;
                        }
                    end)
                end;
            },{
                Text = Roact.createElement("TextLabel", {
                    BackgroundTransparency = 1;
                    Size = UDim2.new(1, -40, 1, 0);
                    Position = UDim2.new(0, 40, 0, 0);
                    TextColor3 = self.theme.Category[self.state.textState].Text;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    Text = text;
                    TextSize = 14;
                    Font = Enum.Font.ArialBold;
                    [Roact.Ref] = self.textRef;
                });
                CollapseButton = Roact.createElement("ImageLabel", {
                    Image = toggleImage;
                    ImageColor3 = self.theme.Category[self.state.textState].Text;
                    Size = UDim2.new(1, 0, 1, 0);
                    BackgroundTransparency = 1;
                    [Roact.Ref] = self.collapseButtonRef;
                }, {
                    UIAspectRatio = Roact.createElement("UIAspectRatioConstraint")
                });
                LockedIcon = Roact.createElement("ImageLabel", {
                    Image = self.theme.LockedIcon;
                    ImageColor3 = self.theme.Category[self.state.textState].Text;
                    Size = UDim2.new(1, 0, 1, 0);
                    AnchorPoint = Vector2.new(1, 0);
                    Position = UDim2.new(1, 0, 0, 0);
                    Visible = locked;
                    BackgroundTransparency = 1;
                    [Roact.Ref] = self.lockedIconRef;
                }, {
                    UIAspectRatio = Roact.createElement("UIAspectRatioConstraint")
                });
            });
        });
    
    
        ContentFrame = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, self.state.contentY);
            BackgroundTransparency = 1;
            Visible = self.state.open;
            LayoutOrder = order+2;
            [Roact.Ref] = self.contentRef;
        }, {
            AlignmentFrame = Roact.createElement("Frame", {
                Size = UDim2.new(1, -10, 1, 0);
                Position = UDim2.new(0, 5, 0, 0);
                BackgroundColor3 = contentColor;
                BorderColor3 = self.theme.Item.Default.Border;
            }, {
                LayoutContentFrame = Roact.createElement("Frame", {
                    Size = UDim2.new(1, 0, 1, 0);
                    BackgroundTransparency = 1;
                }, {
                    ListLayout = Roact.createElement("UIListLayout", {
                        SortOrder = Enum.SortOrder.LayoutOrder;
                        Padding = UDim.new(0, 1);
                        [Roact.Change.AbsoluteContentSize] = function(rbx)
                            self:setState({contentY = rbx.AbsoluteContentSize.Y})
                        end
                    });
                    Contents = content
                });

                LockedLabel = Roact.createElement("TextLabel", {
                    Size = UDim2.new(1, 0, 0.5, 0);
                    BackgroundTransparency = 0.25;
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0);
                    TextColor3 = self.theme.Item.Default.Text;
                    TextScaled = true;
                    Font = Enum.Font.ArialBold;
                    Text = "Locked";
                    Visible = lockedVisibility;
                    BorderSizePixel = 0;
                    ZIndex = 10;
                }, {
                    TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
                        MaxTextSize = 25;
                        MinTextSize = 10;
                    })
                });

                LockedReasonLabel = Roact.createElement("TextLabel", {
                    Size = UDim2.new(1, 0, 0.5, 0);
                    Position = UDim2.new(0, 0, 0.5, 0);
                    Text = lockedReason;
                    TextScaled = true;
                    TextColor3 = self.theme.Item.Default.Text;
                    BackgroundTransparency = 0.25;
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0);
                    BorderSizePixel = 0;
                    Visible = lockedVisibility;
                    ZIndex = 10;
                }, {
                    TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
                        MaxTextSize = 15;
                        MinTextSize = 1;
                    })
                });
            });
        });
    })
end

function Group:didMount()
    
end

function Group:willUnmount()
    
end

return Group