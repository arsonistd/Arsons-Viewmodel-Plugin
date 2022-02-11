-- Toolbar.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021


local framework = require(script.Parent.Parent.ArsonsPluginFramework)

local Toolbar = framework.CreateModule("Toolbar")

Toolbar.toolbar = framework.plugin:CreateToolbar("LandscapeX")
Toolbar.generateButton = Toolbar.toolbar:CreateButton("1", "Create and edit terrain", "rbxassetid://7588761139", "Generator")
Toolbar.visualizeButton = Toolbar.toolbar:CreateButton("2", "Visualize terrain", "rbxassetid://7588761139", "Visualizer")

return Toolbar