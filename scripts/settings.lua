--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    The settings screen.
]]

local point = 1

while true do
	-- Buttons input.
	buttons.read()

	-- Looping the menu theme (if exists)
	if menumusic and not sound.playing(menumusic) then
		sound.play(menumusic)
	end

	-- Playing the static animation.
	gm.static()

	screen.print(15,20,"Options", 1.2)

	-- 1: Language
	screen.print(40, 60, lang.settingsPref[1])
	-- 2: Devmode
	screen.print(40, 80,"Devmode: " .. tostring(devmode))
	-- 3: Credits
	screen.print(40, 100, "Credits")
	-- 4: About the project
	screen.print(40, 120, "About")

	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point < 5 and point > 0 then
		pointer_s:blit(20, 60 + (20 * (point - 1)))
	end

	if point == 3 then
		if buttons.cross then
			dofile("scripts/credits.lua")
		end
	elseif point == 4 then
		if buttons.cross then
			j2_jump(4, true, false)
		end
	elseif point == 5 then
		point = 1
	elseif point == 0 then
		point = 4
	end

	if buttons.circle then
        dofile("scripts/menu.lua")
    end

	screen.flip()
end