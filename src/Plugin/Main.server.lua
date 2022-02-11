-- Main.server.lua
-- ArsonistD
-- Started : 12/07/2021
-- Last Edit : 12/07/2021

local framework = require(script.Parent.ArsonsPluginFramework)
framework.plugin = plugin

framework.RequireAll()

framework.Initialize()

framework.Start()