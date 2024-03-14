--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    Start screen with the disclaimer.
]]

-- Some values for ping-pong fade animation
local fadeBlack = image.new(480, 272, color.black)
local blackT = 256
local fadeBack = false

while true do
	-- Buttons input.
	buttons.read()

	-- Basic colors load.
	sol.init()

	-- Drawing the background (static).
	gm.static()

	-- Drawing the port's logo.
	sol.draw("r", 20, 20, logo_menu2)

	-- Drawing dead screen Jolly
	sol.draw("r", 187, 0, deadScreen)

	-- Disclaimers.
	sol.print("l", 15, 85, lang.startinfo[1], 1)
	sol.print("l", 25, 115, lang.startinfo[2], 0.6)
	sol.print("l", 10, 230, lang.startconfirm[1] .. "     " .. lang.startconfirm[2], 0.8)
	image.blitsprite(buttonsSheet, lang.startconfirm[3], lang.startconfirm[4], 1)

	-- Fade rendering
	sol.draw("r", 0, 0, fadeBlack, blackT)

	-- Managing transperency
	if blackT > 0 and not fadeBack then
		blackT -= 6
	end

	if blackT < 256 and fadeBack then
		blackT += 3
	end

	-- Debug!!
	sol.showDebug()

	if buttons.cross then -- Switching fade
		if blackT <= 0 then
			fadeBack = true
		end
	end

	-- Going to the menu if the fade animation has ended
	if fadeBack and blackT >= 256 then
		gm.jump("menu")
	end

	-- Flipping the screen.
	screen.flip()
end