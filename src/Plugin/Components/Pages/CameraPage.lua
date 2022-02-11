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
        
    })
    
end

function CameraPage:didMount()
    
end

function CameraPage:willUnmount()
    
end

return CameraPage
