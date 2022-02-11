-- GenerateWidgetButtonBar.lua
-- ArsonistD
-- Started : 12/07/2021
-- Last Edit : 12/07/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

GenerateWidgetButtonBar = Roact.Component:extend(
    "GenerateWidgetButtonBar"
)

function GenerateWidgetButtonBar:init()
    self:setState({currentPage = "Generate"})
    self.Button = framework.GetComponent("GenerateWidgetButton")
    self.Page = framework.GetComponent("GenerateWidgetPage")


    self.theme = framework.GetModule("Theme")
    self.widget = framework.GetModule("GeneratorWidget")
end

function GenerateWidgetButtonBar:render()
    local ButtonSize = self.props.ButtonSize

    local GenerateActive = false
    local TerrainActive = false
    local MaterialActive = false
    local HelpActive = false
    local PropActive = false
    if self.state.currentPage == "Generate" then
        GenerateActive = true
        TerrainActive = false
        MaterialActive = false
        HelpActive = false
        PropActive = false
    elseif self.state.currentPage == "Terrain" then
        GenerateActive = false
        TerrainActive = true
        MaterialActive = false
        HelpActive = false
        PropActive = false
    elseif self.state.currentPage == "Material" then
        GenerateActive = false
        TerrainActive = false
        MaterialActive = true
        HelpActive = false
        PropActive = false
    elseif self.state.currentPage == "Help" then
        GenerateActive = false
        TerrainActive = false
        MaterialActive = false
        HelpActive = true
        PropActive = false
    elseif self.state.currentPage == "Prop" then
        GenerateActive = false
        TerrainActive = false
        MaterialActive = false
        HelpActive = false
        PropActive = true
    end

    return Roact.createElement("Frame", {
        BackgroundTransparency = 1;
        BorderSizePixel = 1;
        Size = UDim2.new(1, 0, 0, 40);
    }, {
        Generate = Roact.createElement(self.Button, {
			Page = "Generate";
			Position = UDim2.new(0, 0, 0, 0);
			Size = UDim2.new(ButtonSize, 0, 1, 0);
            Selected = GenerateActive;
            Order = 1;
		});
        Terrain = Roact.createElement(self.Button, {
			Page = "Terrain";
			Position = UDim2.new(ButtonSize, 0, 0, 0);
			Size = UDim2.new(ButtonSize, 0, 1, 0);
            Selected = TerrainActive;
            Order = 2;
		});
		Material = Roact.createElement(self.Button, {
			Page = "Material";
			Position = UDim2.new(ButtonSize*2, 0, 0, 0);
			Size = UDim2.new(ButtonSize, 0, 1, 0);
            Selected = MaterialActive;
            Order = 3;
		});
        Prop = Roact.createElement(self.Button, {
			Page = "Prop";
			Position = UDim2.new(ButtonSize*3, 0, 0, 0);
			Size = UDim2.new(ButtonSize, 0, 1, 0);
            Selected = PropActive;
            Order = 4;
		});
		Help = Roact.createElement(self.Button, {
			Page = "Help";
			Position = UDim2.new(ButtonSize*4, 0, 0, 0);
			Size = UDim2.new(ButtonSize, 0, 1, 0);
            Selected = HelpActive;
            Order = 5;
		});
		ListLayout = Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal;
            Padding = UDim.new(0, 0);
            SortOrder = Enum.SortOrder.LayoutOrder;
        });
    })
end

function GenerateWidgetButtonBar:didMount()
    self.widget.WidgetButtonPressed:Connect(function(page)
        if page == self.state.currentPage then return end
        self:setState(function(state)
            return {
                currentPage = page
            }
        end)
    end)
end

function GenerateWidgetButtonBar:willUnmount()
    
end

return GenerateWidgetButtonBar 