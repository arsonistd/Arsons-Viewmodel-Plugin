
-- GenerateWidgetPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

GenerateWidgetPage = Roact.Component:extend(
    "GenerateWidgetPage"
)

function GenerateWidgetPage:init()
    self:setState({
        currentPage = "Generate";
        contentSizeY = 0;
    })

    self.generatePage = framework.GetComponent("GeneratePage")
    self.terrainPage = framework.GetComponent("TerrainPage")
    self.materialPage = framework.GetComponent("MaterialPage")
    self.propPage = framework.GetComponent("PropPage")
    self.helpPage = framework.GetComponent("HelpPage")
    
    self.listLayoutRef = Roact.createRef()

    self.theme = framework.GetModule("Theme")
    self.widget = framework.GetModule("GeneratorWidget")
end

function GenerateWidgetPage:render()
    local ContentSizeY = self.state.contentSizeY

    local Page = self.generatePage
    if self.state.currentPage == "Generate" then
        Page = self.generatePage
    elseif self.state.currentPage == "Terrain" then
        Page = self.terrainPage
    elseif self.state.currentPage == "Material" then
        Page = self.materialPage
    elseif self.state.currentPage == "Help" then
        Page = self.helpPage
    elseif self.state.currentPage == "Prop" then
        Page = self.propPage
    end

    return Roact.createElement("ScrollingFrame", {
        BackgroundColor3 = self.theme.Background;
        BorderColor3 = self.theme.Item.Default.Border;
        BorderSizePixel = 2;
        ScrollBarImageColor3 = self.theme.ScrollBar;
        VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar;
        Position = UDim2.new(0, 0, 0, 40);
        Size = UDim2.new(1, 0, 1, -40);
        CanvasSize = UDim2.new(0, 0, 0, ContentSizeY);
    }, {
        ListLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, 1);
            SortOrder = Enum.SortOrder.LayoutOrder;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            VerticalAlignment = Enum.VerticalAlignment.Top;
            [Roact.Change.AbsoluteContentSize] = function(rbx)
                self:setState(function(state)
                    return {
                        currentPage = state.currentPage;
                        contentSizeY = rbx.AbsoluteContentSize.Y;
                    }
                end)
            end;
        });
        Page = Roact.createElement(Page);
    })
end

function GenerateWidgetPage:didMount()
    self.widget.UpdateScrollingFrame:Connect(function(contentSize)
        self:setState(function(state)
            return {
                currentPage = state.currentPage;
                contentSizeY = contentSize;
            }
        end)
    end)
    self.widget.WidgetButtonPressed:Connect(function(page)
        if page == self.state.currentPage then return end
        self:setState(function(state)
            return {
                currentPage = page;
                contentSizeY = state.contentSize;
            }
        end)
    end)
end

function GenerateWidgetPage:willUnmount()
    
end

return GenerateWidgetPage