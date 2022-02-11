-- PropPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

PropPage = Roact.Component:extend(
    "PropPage"
)

function PropPage:init()
    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
end

function PropPage:render()
    return Roact.createFragment({
        mainSettings =  Roact.createElement(self.Group, {
            Text = "Main Prop Settings";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 100;
            Contents = nil;
        });
        props =  Roact.createElement(self.Group, {
            Text = "Props";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 200;
            Contents = nil;
        });
    })
end

function PropPage:didMount()
    
end

function PropPage:willUnmount()
    
end

return PropPage