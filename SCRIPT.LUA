-- Script made by maxlmao (now maxdev)
-- The game doesn't belong to me and will be taken down upon developer's request.
-- Fully porting Jolly 2 to PSP using OneLua
-- Comments added: 31.08.2021 15:12

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
    "about",
    "howtoplay",
    "game"
}
-- Launching a frame
version = "PR-03.1"
night = 1
j2_jump(6, true, true)