-- GenerateWidgetButton.lua
-- ArsonistD
-- Started : 12/08/2021
-- Last Edit : 12/25/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

GenerateWidgetButton = Roact.Component:extend(
    "GenerateWidgetButton"
)

function GenerateWidgetButton:init()
    self.theme = framework.GetModule("Theme")
    self.widget = framework.GetModule("GeneratorWidget")
end

function GenerateWidgetButton:render()
    local selected = self.props.Selected
    local page = self.props.Page
    local size = self.props.Size
    local positon = self.props.Position
    local order = self.props.Order

    local ButtonBackgroundColor3 = self.theme.Item.Default.Background
    local ButtonTextColor3 = self.theme.Item.Default.Text
    if selected then
        ButtonBackgroundColor3 = self.theme.RibbonButton.Hover.Background
        ButtonTextColor3 = self.theme.Item.Selected.Text
    end
    
    return Roact.createElement("TextButton", {
        Text = page;
        TextSize = 12;
        Font = Enum.Font.Arial;
        BackgroundColor3 = ButtonBackgroundColor3;
        TextColor3 = ButtonTextColor3;
        BorderSizePixel = 0;
        AutoButtonColor = false;
        Size = size;
        Position = positon;
        LayoutOrder = order;
        [Roact.Event.MouseEnter] = function(rbx)
            if selected then return end
            rbx.BackgroundColor3 = self.theme.Item.Hover.Background
            rbx.TextColor3 = self.theme.Item.Hover.Text
        end;
        [Roact.Event.MouseLeave] = function(rbx)
            if selected then return end
            rbx.BackgroundColor3 = self.theme.Item.Default.Background
            rbx.TextColor3 = self.theme.Item.Default.Text
        end;
        [Roact.Event.MouseButton1Up] = function(rbx)
            if selected then return end
            self.widget.WidgetButtonPressed:Fire(page)
        end;
        [Roact.Event.MouseButton1Down] = function(rbx)
            if selected then return end
            rbx.BackgroundColor3 = self.theme.Item.Pressed.Background
            rbx.TextColor3 = self.theme.Item.Pressed.Text
        end;
    },{
        SelectedLine = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, 6);
            Position = UDim2.new(0, 0, 1, 0);
            BorderSizePixel = 0;
            BackgroundColor3 = self.theme.SelectedColor;
            Visible = selected;
            AnchorPoint = Vector2.new(0, 1);
        })
    })
end

function GenerateWidgetButton:didMount()
    
end

function GenerateWidgetButton:willUnmount()
    
end

return GenerateWidgetButton