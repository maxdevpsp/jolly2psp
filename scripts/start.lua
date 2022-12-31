while true do
	-- Buttons input.
	buttons.read()

	-- Basic colors load.
	simpleol.init()

	-- Drawing the background.
	startscreen:blit(0, 0)

	-- Drawing the port's logo.
	simpleol.screenBlit(1, 0, 20, logo_menu2)

	-- Disclaimers.
	simpleol.screenPrint(1, 5, 85, langpack.startinfo[1], 1)
	simpleol.screenPrint(1, 0, 120, langpack.startinfo[2], 0.6)
	simpleol.screenPrint(1, 0, 230, langpack.startconfirm[1] .. "     " .. langpack.startconfirm[2], 0.8)
	but_cross:blit(langpack.startconfirm[3], langpack.startconfirm[4])

	simpleol.showDebug()

	if buttons.cross then -- Going to the menu
		j2_jump(2, true, true)
	end

	-- Flipping the screen.
	screen.flip()
end