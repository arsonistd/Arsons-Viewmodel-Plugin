
-- ItemPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

ItemPage = Roact.Component:extend(
    "ItemPage"
)

function ItemPage:init()
    self.Generate = framework.GetModule("Generate")

    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
    self.Bool = framework.GetComponent("Bool")
    self.NumberBox = framework.GetComponent("NumberBox")
end

function ItemPage:render()

    local InfiniteTerrainLocked
    if self.Generate.Settings.InfiniteTerrain then
        InfiniteTerrainLocked = false
    else
        InfiniteTerrainLocked = true
    end

    local WaterLocked
    if self.Generate.Settings.Water then
        WaterLocked = false
    else
        WaterLocked = true
    end


    return Roact.createFragment({
        mainSettings =  Roact.createElement(self.Group, {
            Text = "Main Generation Settings";
            Locked = false;
            LockedReason = "No biome is selected.";
            Order = 100;
            Contents = Roact.createFragment({
                updateRealTimeBool = Roact.createElement(self.Setting , {
                    Length = 30;
                    Text = "Real Time Updates";
                    Order = 1;
                    Content = Roact.createElement(self.Bool, {
                        Value = self.Generate.Settings.RealTimeUpdates;
                    });
                });
                infiniteGeneration = Roact.createElement(self.Setting , {
                    Length = 30;
                    Text = "Infinite Generation";
                    Order = 2;
                    Content = Roact.createElement(self.Bool, {
                        Value = self.Generate.Settings.InfiniteTerrain;
                    });
                });
                generateWaterBool = Roact.createElement(self.Setting , {
                    Length = 30;
                    Text = "Generate Water";
                    Order = 3;
                    Content = Roact.createElement(self.Bool, {
                        Value = self.Generate.Settings.Water;
                    });
                });
                chunkDimension = Roact.createElement(self.Setting , {
                    Length = 90;
                    Text = "Chunk Dimensions";
                    Order = 4;
                    Content = Roact.createFragment({
                        X = Roact.createElement(self.NumberBox, {
                            YOffset = 30;
                            Value = self.Generate.Settings.ChunkDimensions.X;
                        });
                        Y = Roact.createElement(self.NumberBox, {
                            YOffset = 60;
                            Value = self.Generate.Settings.ChunkDimensions.Y;
                        });
                    });
                    ExtraText = {"X", "Y"}
                });
            });
        });
        infiniteTerrainSettings =  Roact.createElement(self.Group, {
            Text = "Infinite Terrain Settings";
            Locked = InfiniteTerrainLocked;
            LockedReason = "Infinite terrain is toggled off.";
            Order = 200;
            Contents = Roact.createFragment({
                generationDimensions = Roact.createElement(self.Setting , {
                    Length = 90;
                    Text = "Generation Dimensions";
                    Order = 4;
                    Content = Roact.createFragment({
                        X = Roact.createElement(self.NumberBox, {
                            YOffset = 30;
                            Value = self.Generate.Settings.Dimensions.X;
                        });
                        Y = Roact.createElement(self.NumberBox, {
                            YOffset = 60;
                            Value = self.Generate.Settings.Dimensions.Y;
                        });
                    });
                    ExtraText = {"X", "Y"}
                });
                generationOrigin = Roact.createElement(self.Setting , {
                    Length = 120;
                    Text = "Generation Origin";
                    Order = 5;
                    Content = Roact.createFragment({
                        X = Roact.createElement(self.NumberBox, {
                            YOffset = 30;
                            Value = self.Generate.Settings.Origin.X;
                        });
                        Y = Roact.createElement(self.NumberBox, {
                            YOffset = 60;
                            Value = self.Generate.Settings.Origin.Y;
                        });
                        Z = Roact.createElement(self.NumberBox, {
                            YOffset = 90;
                            Value = self.Generate.Settings.Origin.Z;
                        });
                    });
                    ExtraText = {"X", "Y", "Z"}
                });
                generationOffset = Roact.createElement(self.Setting , {
                    Length = 120;
                    Text = "Generation Offset";
                    Order = 6;
                    Content = Roact.createFragment({
                        X = Roact.createElement(self.NumberBox, {
                            YOffset = 30;
                            Value = self.Generate.Settings.Offset.X;
                        });
                        Y = Roact.createElement(self.NumberBox, {
                            YOffset = 60;
                            Value = self.Generate.Settings.Offset.Y;
                        });
                        Z = Roact.createElement(self.NumberBox, {
                            YOffset = 90;
                            Value = self.Generate.Settings.Offset.Z;
                        });
                    });
                    ExtraText = {"X", "Y", "Z"}
                });
            });
        });
        waterSettings =  Roact.createElement(self.Group, {
            Text = "Water Settings";
            Locked = WaterLocked;
            LockedReason = "Water is toggled off.";
            Order = 300;
            Contents = Roact.createFragment({
                waterHeight = Roact.createElement(self.Setting , {
                    Length = 60;
                    Text = "Water Height";
                    Order = 2;
                    Content = Roact.createElement(self.NumberBox, {
                        YOffset = 30;
                        Value = self.Generate.Settings.Height.Y;
                    });
                    ExtraText = {"Y"}
                });
            });
        });
    })
end

function ItemPage:didMount()
    
end

function ItemPage:willUnmount()
    
end

return ItemPage
