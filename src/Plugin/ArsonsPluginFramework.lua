-- ArsonsPluginFramework.lua
-- ArsonistD
-- Started : 12/07/2021
-- Last Edit : 12/07/2021

local framework = {
    Components = {};
    Modules = {};
    Utils = {};
    plugin = nil;
}

function framework.GetComponent(name)
    local component = framework.Components[name]
    if component then
        return component
    else
        error("Could not find the component ("..name..").")
    end
end

function framework.GetModule(name)
    local module = framework.Modules[name]
    if module then
        return module
    else
        error("Could not find the module ("..name..").")
    end
end

function framework.GetUtil(name)
    local util = framework.Utils[name]
    if util then
        return require(util)
    else
        error("Could not find the util ("..name..").")
    end
end

function framework.CreateModule(name)
    if name then
        framework.Modules[name] = {}
        framework.Modules[name].__index = framework.Modules[name]

        return framework.Modules[name]
    else
        error("Please specify a name when creating a module.")
    end
end

function framework.CreateUtil(name, module)
    if name then
        if module then
            framework.Utils[name] = module
            return framework.Utils[name]
        end
    else
        error("Please specify a name when creating a util.")
    end
end

function framework.RequireAll()
    for i,v in pairs(script.Parent.Components:GetDescendants()) do
        if v:IsA("ModuleScript") then
            framework.Components[v.Name] = require(v)
        end
    end
    for i,v in pairs(script.Parent.Modules:GetChildren()) do
        require(v)
    end
    for i,v in pairs(script.Parent.Util:GetChildren()) do
        require(v)
    end 
end

function framework.Initialize()
    for i,v in pairs(framework.Modules) do
        if v.Init then
            v:Init()
        end
    end
end

function framework.Start()
    for i,v in pairs(framework.Modules) do
        if v.Start then
            v:Start()
        end
    end
end

return framework