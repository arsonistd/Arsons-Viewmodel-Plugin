-- MaterialPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

MaterialPage = Roact.Component:extend(
    "MaterialPage"
)

function MaterialPage:init()
    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
end

function MaterialPage:render()
    return Roact.createFragment({
        mainSettings =  Roact.createElement(self.Group, {
            Text = "Main Material Settings";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 100;
            Contents = nil;
        });
        materials =  Roact.createElement(self.Group, {
            Text = "Materials";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 200;
            Contents = nil;
        });
    })
end

function MaterialPage:didMount()
    
end

function MaterialPage:willUnmount()
    
end

return MaterialPage