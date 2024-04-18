--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    This file handles pretty much the whole game. Yeah.
]]

-- Maybe in the future...?
--r = "resources"

-- Libraries
sol = require("lib.sol")
gm = require("lib.gmodule")
asset = require "assets"

-- Config file
config = require "config"

-- Language Pack
lang = require("assets.lang.eng")

-- Fonts
--screenmatrix_fnt = font.load("ScreenMatrix.pgf")

-- Launching a frame
sol.init()

-- If the settings file doesn't exist, create one
if not files.exists("userSettings.lua") then
      gm.createNewSettingsFile("eng")
end
-- If the save file doesn't exist, create one
if not files.exists(config.savepath) then
      sol.saveFile(config.savepath, "1")
end

-- User's settings
userSettings = require "userSettings"

gm.jump("game")