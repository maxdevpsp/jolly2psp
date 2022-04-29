--[[
    
    Third version of SCRIPT.LUA, based on optimizing the game.

    This is a part of JOLLY 2 port for PSP by maxdev. 
    Be sure to credit if making mods/rewriting contents in the file.

]]

-- Lib's
require "lib.savefile"
require "lib.gamefeatures"
require "assets"

-- Setting file
require "config"

-- Fonts
screenmatrix_fnt = font.load("ScreenMatrix.pgf")

-- Frame ID table
-- Used with j2_jump().
frame_id ={
    "start",
    "intro",
    "menu",
    "about"
}
-- Launching a frame
version = "PR-03.1"
night = 1
j2_jump(2, true, true)