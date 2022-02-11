-- MainApp.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

MainApp = Roact.Component:extend(
    "MainApp"
)

function MainApp:init()
    self.Bar = framework.GetComponent("MainWidgetButtonBar")
    self.Page = framework.GetComponent("MainWidgetPage")

end

function MainApp:render()
    return Roact.createFragment({
		WidgetBar = Roact.createElement(self.Bar, {
			ButtonSize = 1/5;
		});
		WidgetPage = Roact.createElement(self.Page, {
			
		});
    })
end

return MainApp
