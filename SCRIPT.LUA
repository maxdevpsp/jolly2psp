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

-- Frame ID table
-- Used with asset.jump().
--[[frame_id ={
    "start",
    "intro",
    "menu",
    "about",
    "howtoplay",
    "game",
    "jumpscare",
    "gameover"
}]]
-- Launching a frame
sol.init()
gm.jump("start")