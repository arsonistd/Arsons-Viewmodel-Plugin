-- ViewmodelPage.lua
-- ArsonistD
-- Started : 12/09/2021
-- Last Edit : 12/09/2021

local framework = require(script.Parent.Parent.Parent.ArsonsPluginFramework)
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

ViewmodelPage = Roact.Component:extend(
    "ViewmodelPage"
)

function ViewmodelPage:init()
    self.Viewmodel = framework.GetModule("Viewmodel")

    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
    self.Bool = framework.GetComponent("Bool")
    self.NumberBox = framework.GetComponent("NumberBox")
end

function ViewmodelPage:render()


    return Roact.createFragment({
        
    })
    
end

function ViewmodelPage:didMount()
    
end

function ViewmodelPage:willUnmount()
    
end

return ViewmodelPage
