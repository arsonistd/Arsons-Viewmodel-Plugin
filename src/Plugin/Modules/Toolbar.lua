-- Toolbar.lua
-- ArsonistD
-- Started : 12/25/2021
-- Last Edit : 12/25/2021


local framework = require(script.Parent.Parent.ArsonsPluginFramework)

local Toolbar = framework.CreateModule("Toolbar")

Toolbar.toolbar = framework.plugin:CreateToolbar("Arson's Viewmodel Plugin")
Toolbar.generateButton = Toolbar.toolbar:CreateButton("1", "Create and edit viewmodels", "rbxassetid://7588761139", "Create / Edit")

return Toolbar
