--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    The menu screen. Pretty impressive btw.
]]

-- Getting the night value.
local curNight = tonumber(sol.loadFile(config.savepath))

-- Handling screens
local curScreen = 1
local changeScreenTimer = 0
local menuChosen = 1

-- White fade effects
local fadeWhite = image.new(480, 272, color.white)
local whiteT = 256

-- Intro variables
local introLogoOp = 0

-- Wheel settings
local introWheelRotation = 280
local introWheelScale = 0
local d = 1 -- Rotation
local r = 1 -- Scale

-- Centering the wheel's point
image.center(introWheel, 20, 20)

while true do
	-- Buttons input.
	buttons.read()

	-- Playing the static animation.
	gm.static()

	-- Playing the menu music.
	if sound.endstream(menumusic) then
		sound.play(menumusic)
	end

	-- Sequences (or screens)
	if curScreen == 1 then -- Intro screen
		-- Intro wheel animation
		sol.draw("fc", -94, 20, introWheel)

		-- Logo rendering
		sol.draw("fc", 0, 0, logo_menu2, introLogoOp)
		if introWheelScale > 75 then
			introLogoOp += 1
		end

		-- Making the animation work
		image.rotate(introWheel, introWheelRotation)
		image.scale(introWheel, introWheelScale)

		-- Rotating
		if introWheelRotation > 0 then
			introWheelRotation -= d
			--[[if d > 0 and introWheelRotation < 180 then
				d -= 0.005
			end]]
		end

		-- Scaling
		if introWheelScale < 100 then
			introWheelScale += r
			if introWheelScale > 85 and r > 0 then
				r -= 0.05
			end
		end

		-- Changing the screen with time
		changeScreenTimer += 1
		if changeScreenTimer == 350 then
			curScreen = 2
		end

		--sol.print("l", 0, 100, tostring(introWheelScale) .. "\n" .. tostring(r))
	elseif curScreen == 2 then -- Menu screen
		-- Drawing the Menu Character.
		menuChar.anim[menuChar.currentChr][menuChar.twistNum]:blit(120,0)
		
		-- Drawing the menu logo.
		logo_menu3:blit(20,240)

		-- Menu categories.
		screen.print(40, 60, lang.menucategories[1]) -- New Game
		screen.print(40, 80, lang.menucategories[2]) -- Continue

		if curNight > 5 then
			screen.print(40, 100, lang.menucategories[3]) -- Night 6
			screen.print(40, 120, lang.menucategories[4]) -- Custom Night
			screen.print(40, 140, lang.menucategories[5]) -- Extras

			screen.print(40, 160, lang.menucategories[6]) -- Options
			screen.print(40, 180, lang.menucategories[7]) -- Exit
		else
			screen.print(40, 100, lang.menucategories[6]) -- Options
			screen.print(40, 120, lang.menucategories[7]) -- Exit
		end

		-- Menu Character animation

		-- Setting up a timer for switch (between JL/FRD)
		menuChar.switchTimer += 1

		if menuChar.switchTimer == 400 then
			-- Changing the character
			menuChar.currentChr += 1

			-- White fade jumpscare
			whiteT = 255

			-- Resetting the timer
			menuChar.switchTimer = 0
		end

		-- If we hit the character limit, we reset the whole thing
		if menuChar.currentChr == 3 then
			menuChar.currentChr = 1
		end

		-- Arlecchino idle ahh movement
		menuChar.twistTimer += 1

		-- Switching the active character's frame and resetting the timer
		if menuChar.twistTimer == 35 then
			menuChar.twistNum = math.random(#menuChar.anim[menuChar.currentChr])
			menuChar.twistTimer = 0
		end

		-- We need to reset the frame after the twist, so we do just that
		if menuChar.twistNum ~= 1 then
			menuChar.twistResetTimer += 1
		end
		if menuChar.twistResetTimer == 7 then
			menuChar.twistNum = 1
			menuChar.twistResetTimer = 0
		end
		
		-- Interacting with menu categories.
		if buttons.up then -- Scroll up.
			menuChosen -= 1
		end
		if buttons.down then -- Scroll down.
			menuChosen += 1
		end

		if menuChosen == 1 then -- New Game
			if buttons.cross then
				sol.saveFile(config.savepath, 1)
				gm.jump("howtoplay")
			end
		elseif menuChosen == 2 then -- Continue
			sol.print("l", 140, 80, curNight, 0.6)
			--[[if buttons.cross then
				j2_jump(6)
			end]]
		--elseif menuChosen == 3 then
			--[[if buttons.cross then
				j2_assets("load", "info")
				dofile("scripts/settings.lua")
			end]]
		--[[elseif menuChosen == 4 then
			if buttons.cross then
				j2_assets("load", "info")
				dofile("scripts/settings.lua")
			end
		elseif menuChosen == 5 then
			if buttons.cross then
				os.exit()
			end]]
		end

		-- Just don't ask. IDK too
		if menuChosen == 0 then
			if curNight > 5 then
				menuChosen = 7
			else
				menuChosen = 4
			end
		elseif menuChosen == 8 and curNight > 5 then
			menuChosen = 1
		elseif menuChosen == 5 and curNight <= 5 then
			menuChosen = 1
		else
			pointerY = 65 + (20 * (menuChosen - 1))
		end

		-- Drawing the menu pointer
		pointer_menu:blit(0, pointerY)

		-- White fade at the start
		fadeWhite:blit(0, 0, whiteT)
		if whiteT > 0 then
			whiteT -= 10
		end
	end

	-- Debug printing.
	sol.showDebug()

    screen.flip()
end