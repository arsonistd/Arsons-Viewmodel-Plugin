-- Theme.lua
-- ArsonistD
-- Started : 12/08/2021
-- Last Edit : 12/08/2021

local framework = require(script.Parent.Parent.ArsonsPluginFramework)

local Theme = framework.CreateModule("Theme")


local function changeBrightness(color, amount)
    local R = color.R*255 + amount
    local B = color.B*255 + amount
    local G = color.G*255 + amount
    return Color3.fromRGB(R, G, B)
end

Theme.SelectedColor = Color3.fromRGB(163, 21, 21)

Theme.Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground);

Theme.ScrollBar = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ScrollBar)

Theme.Button = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Default);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Default);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Default);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Hover);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Hover);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Hover);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Pressed);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Pressed);
    };
    Selected = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Selected);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Selected);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Selected);
    };
}

Theme.MainButton = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton, Enum.StudioStyleGuideModifier.Default);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Default);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Default);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton, Enum.StudioStyleGuideModifier.Hover);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Hover);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Hover);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Pressed);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Pressed);
    };
    Selected = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton, Enum.StudioStyleGuideModifier.Selected);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Selected);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Selected);
    };
}

 Theme.RibbonButton = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.RibbonButton, Enum.StudioStyleGuideModifier.Default);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Default);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Default);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.RibbonButton, Enum.StudioStyleGuideModifier.Hover);
		Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Hover);
		Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Hover);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.RibbonButton, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Pressed);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Pressed);
    };
    Selected = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.RibbonButton, Enum.StudioStyleGuideModifier.Selected);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonBorder, Enum.StudioStyleGuideModifier.Selected);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.ButtonText, Enum.StudioStyleGuideModifier.Selected);
    }
 }

Theme.Category = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CategoryItem, Enum.StudioStyleGuideModifier.Default);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Default);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CategoryItem, Enum.StudioStyleGuideModifier.Hover);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Hover);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Hover);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CategoryItem, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Pressed);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Pressed);
    };
    Selected = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CategoryItem, Enum.StudioStyleGuideModifier.Selected);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Selected);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Selected);
    };
}

Theme.Item = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Item, Enum.StudioStyleGuideModifier.Default);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Default);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Item, Enum.StudioStyleGuideModifier.Hover);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Hover);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Hover);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Item, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Pressed);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Pressed);
    };
    Selected = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Item, Enum.StudioStyleGuideModifier.Selected);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, Enum.StudioStyleGuideModifier.Selected);
        Text = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Selected);
    };
}

Theme.Group = {
    BarBackground = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Default); --60
    ContentBackground = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Tab, Enum.StudioStyleGuideModifier.Default); --53
}

Theme.CollapseArrows = {
    Open = "rbxassetid://8057404440";
    Close = "rbxassetid://8057404581";
}

Theme.LockedIcon = "rbxassetid://8219851415";

Theme.Bool = {
    Border = "rbxassetid://8224456230";
    Enabled = "rbxassetid://8224593257";
    Disabled = "";

    Colors = {
        Default = {
            Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Default);
            Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Default);
        };
        Hover = {
            Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Hover);
            Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Hover);
        };
        Pressed = {
            Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Pressed);
            Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Pressed);
        };
    };
}

Theme.TextBox = {
    Default = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Default);
        Border = changeBrightness(settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Default), 7);
        Text = changeBrightness(settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default), -5);
    };
    Hover = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Hover);
        Border = changeBrightness(settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Hover), -14);
        Text = changeBrightness(settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Hover), -5);
    };
    Pressed = {
        Background = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBackground, Enum.StudioStyleGuideModifier.Pressed);
        Border = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CheckedFieldBorder, Enum.StudioStyleGuideModifier.Pressed);
        Text = changeBrightness(settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Pressed), -5);
    };
}

return Theme