-- Getting the night value.
night = sol.loadFromFile(config.savepath)
nightNumber = tonumber(night)

while true do
	-- Buttons input.
	buttons.read()

	-- Playing the static animation.
	j2.playStatic()

	-- Drawing the Menu Character.
	menuChrAnim.chr[menuChrAnim.acting.currentChr][menuChrAnim.acting.twistNum]:blit(120,0)

	-- Debug printing.
	sol.showDebug()
	
	-- Drawing the menu logo.
	logo_menu2:blit(20,240)

	-- Menu categories.
	screen.print(40, 60, langpack.menucategories[1]) -- New Game
	screen.print(40, 80, langpack.menucategories[2]) -- Continue

	if nightNumber > 4 then
		screen.print(40, 100, langpack.menucategories[3]) -- Night 6
		screen.print(40, 120, langpack.menucategories[4]) -- Custom Night
		screen.print(40, 140, langpack.menucategories[5]) -- Extras

		screen.print(40, 160, langpack.menucategories[6]) -- Options
		screen.print(40, 180, langpack.menucategories[7]) -- Exit
	else
		screen.print(40, 100, langpack.menucategories[6]) -- Options
		screen.print(40, 120, langpack.menucategories[7]) -- Exit
	end

	-- Playing the menu music.
	if sound.endstream(menumusic) then
		sound.play(menumusic)
	end

	-- BG Animation and all related stuff.
	if config.menuChrAmount > 1 then
		menuChrAnim.acting.switchTimer += 1

		if menuChrAnim.acting.switchTimer == 500 then
			if menuChrAnim.config.switchMode == 0 then -- List-like switch, from one to another
				menuChrAnim.acting.currentChr += 1
			elseif menuChrAnim.config.switchMode == 1 then -- Random switch, picks a random number
				menuChrAnim.acting.currentChr = math.random(config.menuChrAmount)
			end
			whitefstransp = 255
			menuChrAnim.acting.switchTimer = 0
		end
		if menuChrAnim.acting.currentChr == config.menuChrAmount then
			menuChrAnim.acting.currentChr = 0
		end
	end

	menuChrAnim.acting.twistTimer += 1

	if menuChrAnim.acting.twistTimer == 60 then
		menuChrAnim.acting.twistNum = math.random(#menuChrAnim.chr[menuChrAnim.acting.currentChr])
		menuChrAnim.acting.twistTimer = 0
	end

	screen.print(0, 100, bgtimer.. "\n" .. bgdecide)
	
	-- Interacting with menu categories.
	if buttons.up then -- Scroll up.
		menuChosen -= 1
	end
	if buttons.down then -- Scroll down.
		menuChosen += 1
	end

	if menuChosen == 1 then -- New Game
		if buttons.cross then
			sol.saveIntoFile(config.savepath, 1)
			j2_jump(5)
		end
	elseif menuChosen == 2 then -- Continue
		night = sol.loadFromFile(config.savepath)
		screen.print(140, 80, night)
		if buttons.cross then
			j2_jump(6)
		end
	elseif menuChosen == 3 then
		--[[if buttons.cross then
			j2_assets("load", "info")
			dofile("scripts/settings.lua")
		end]]
	elseif menuChosen == 4 then
		if buttons.cross then
			j2_assets("load", "info")
			dofile("scripts/settings.lua")
		end
	elseif menuChosen == 5 then
		if buttons.cross then
			os.exit()
		end
	end

	pointerY = 65 + (20 * (menuChosen - 1))
	pointer_menu:blit(0, pointerY)

	if menuChosen == 8 and nightNumber > 5 then
		menuChosen = 1
	end

	if menuChosen == 5 and nightNumber < 5 then
		menuChosen = 1
	elseif menuChosen == 0 then
		if nightNumber > 5 then
			menuChosen = 7
		else
			menuChosen = 4
		end
	end

	-- White fade at the start
	whitefullscreen:blit(0, 0, whitefstransp)
	if whitefstransp > 0 then
		whitefstransp = whitefstransp - 10
	end
    screen.flip()
end