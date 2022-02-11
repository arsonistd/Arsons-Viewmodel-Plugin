-- GenerateApp.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

GenerateApp = Roact.Component:extend(
    "GenerateApp"
)

function GenerateApp:init()
    self.Bar = framework.GetComponent("GenerateWidgetButtonBar")
    self.Page = framework.GetComponent("GenerateWidgetPage")

end

function GenerateApp:render()
    return Roact.createFragment({
		WidgetBar = Roact.createElement(self.Bar, {
			ButtonSize = 1/5;
		});
		WidgetPage = Roact.createElement(self.Page, {
			
		});
    })
end

return GenerateApp