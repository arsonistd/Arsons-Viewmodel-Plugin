-- CameraPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

CameraPage = Roact.Component:extend(
    "CameraPage"
)

function CameraPage:init()
    self.Camera = framework.GetModule("Camera")

    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
    self.Bool = framework.GetComponent("Bool")
    self.NumberBox = framework.GetComponent("NumberBox")
end

function CameraPage:render()

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
    })
    
end

function CameraPage:didMount()
    
end

function CameraPage:willUnmount()
    
end

return CameraPage
