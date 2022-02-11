-- Generate.lua
-- ArsonistD
-- Started : 12/13/2021
-- Last Edit : 12/13/2021

local framework = require(script.Parent.Parent.ArsonsPluginFramework)

local Generate = framework.CreateModule("Generate")

Generate.Settings = {
    RealTimeUpdates = false;
    InfiniteTerrain = false;
    ChunkDimensions = {
        X = 64;
        Y = 64;
    };
    Dimensions = {
        X = 4;
        Y = 4;
    };
    Origin = {
        X = 0;
        Y = 0;
        Z = 0;
    };
    Offset = {
        X = 0;
        Y = 0;
        Z = 0;
    };
    Water = true;
    Height = {
        Y = 20;
    };
}

function Generate:UpdateSetting(type, value)
    self.Settings[type] = value
end

function Generate:Init()
    
end

return Generate