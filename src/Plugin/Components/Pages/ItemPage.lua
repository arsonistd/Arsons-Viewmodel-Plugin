
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
    self.Item = framework.GetModule("Item")

    self.Group = framework.GetComponent("Group")
    self.Setting = framework.GetComponent("Setting")
    self.Bool = framework.GetComponent("Bool")
    self.NumberBox = framework.GetComponent("NumberBox")
end

function ItemPage:render()
    
end

function ItemPage:didMount()
    
end

function ItemPage:willUnmount()
    
end

return ItemPage
