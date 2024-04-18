local asset = require "assets"
local sol = require "lib.sol"

local gm = {}

function gm.static()
    if staticAssets then -- If static assets are even loaded
        -- Static animation.
        staticAssets.sTimer += 1

        -- When the timer stops, flipping the frames
        if staticAssets.sTimer == 3 then
            staticAssets.curFrame += 1
            staticAssets.sTimer = 0
        end

        -- Resetting if needed
        if staticAssets.curFrame > #staticAssets.animation then
            staticAssets.curFrame = 1
        end

        -- Rendering the static and changing the frame
        staticAssets.base = staticAssets.animation[staticAssets.curFrame]
        staticAssets.base:blit(0, 0)
    else
        -- bro
        sol.print(1, 0, 136, "NO STATIC", 0.5)
    end
end

function gm.jump(id, reqst, reqef)
    -- Collecting trash
    collectgarbage("collect")

    -- Based. literally
    asset.load("base")

    -- Loading up the assets for the frame
    asset.load(tostring(id))

    -- Doing the frame. Using tostring if bro'll try to load a 1.lua or any number named frame :skull:
    dofile("scripts/" .. tostring(id) .. ".lua")
end

--[[function gm.animate(spriteTable, curFrame, speed, loop)
    local animTimer = 0
    local fr = curFrame
    animTimer += speed
    if animTimer == 1 then
        if fr < #spriteTable then
            fr += 1
        end
        animTimer = 0
    end
    local toReturn = {
        spriteTable[fr],
        fr
    }
    return toReturn
end]]

function gm.createNewSettingsFile(language, debug)
    sol.saveFile("userSettings.lua", "return {language = '" .. language .. "}")
end

return gm