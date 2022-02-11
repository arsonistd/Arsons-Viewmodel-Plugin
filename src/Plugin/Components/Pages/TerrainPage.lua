-- TerrainPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

TerrainPage = Roact.Component:extend(
    "TerrainPage"
)

function TerrainPage:init()
    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
end

function TerrainPage:render()
    return Roact.createFragment({
        mainSettings =  Roact.createElement(self.Group, {
            Text = "Main Terrain Settings";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 1000;
            Contents = nil;
        });
        biomes =  Roact.createElement(self.Group, {
            Text = "Biomes";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 2000;
            Contents = nil;
        });
        noises =  Roact.createElement(self.Group, {
            Text = "Noises";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 3000;
            Contents = nil;
        });
        modifers =  Roact.createElement(self.Group, {
            Text = "Modifers";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 4000;
            Contents = nil;
        });
    })
end

function TerrainPage:didMount()
    
end

function TerrainPage:willUnmount()
    
end

return TerrainPage