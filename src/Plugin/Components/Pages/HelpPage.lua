-- HelpPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

HelpPage = Roact.Component:extend(
    "HelpPage"
)

function HelpPage:init()
    self.Spacer = framework.GetComponent("Spacer")
    self.Header = framework.GetComponent("Header")
    self.Bar = framework.GetComponent("Bar")
    self.Body = framework.GetComponent("Body")
end

function HelpPage:render()
    return Roact.createFragment({
        StartedSpacer = Roact.createElement(self.Spacer, {
            Length = 5;
            Order = 1;
        });
        StartedHeader =  Roact.createElement(self.Header, {
            Text = "Getting started";
            Order = 2;
        });
        StartedBar = Roact.createElement(self.Bar, {
            Order = 3;
        });
        StartedBody = Roact.createElement(self.Body, {
            Text = "This is a body component";
            Order = 4;
        });
        

        BiomeHeader =  Roact.createElement(self.Header, {
            Text = "Biomes";
            Order = 100;
        });
        BiomeBar = Roact.createElement(self.Bar, {
            Order = 101;
        });
        BiomeBody = Roact.createElement(self.Body, {
            Text = "If you have the LITE verison (Free verison) of the plugin then unfortunately you cannot add or create any biomes, You are restricted to only 1 biome. If you have the paid verison of the plugin then you are able to have as many biomes that you would like.";
            Order = 102;
        });
        BiomeBody2 = Roact.createElement(self.Body, {
            Text = "Each biome will have its own seperate terrain settings, material settings and prop settings. Only the seleted biome's settings will be shown.";
            Order = 103;
        });
        BiomeEndingSpacer = Roact.createElement(self.Spacer, {
            Length = 30;
            Order = 199;
        });


        TerrainHeader =  Roact.createElement(self.Header, {
            Text = "Terrain";
            Order = 200;
        });
        TerrainBar = Roact.createElement(self.Bar, {
            Order = 201;
        });

        MaterialHeader =  Roact.createElement(self.Header, {
            Text = "Materials";
            Order = 300;
        });
        MaterialBar = Roact.createElement(self.Bar, {
            Order = 301;
        });

        PropHeader =  Roact.createElement(self.Header, {
            Text = "Props";
            Order = 400;
        });
        PropBar = Roact.createElement(self.Bar, {
            Order = 401;
        });
    })
end

function HelpPage:didMount()
    
end

function HelpPage:willUnmount()
    
end

return HelpPage