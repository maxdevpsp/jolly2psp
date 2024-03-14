while true do

	-- Playing the menu theme
	if sound.endstream(menumusic) == true then
		sound.play(menumusic)
	end

	-- Frame timer
	intro_frametimer = intro_frametimer + 1

	-- Animating the static
	j2.playStatic()

	-- Drawing static.
	static_base:blit(0,0)

	-- Other
	logo_menu:blit(90,110,transp[1])
	wheel:blit(130,110,transp[2])
	-- Transp Animation
	if transp[2] < 255 then
		transp[2] = transp[2] + 2
	end
	if transp[1] < 255 then
		transp[1] = transp[1] + 1
	end
	if intro_frametimer == 400 then
		j2_jump(3, true, true)
	end

	-- Debug
	sol.showDebug()

	-- Black fade at the start
	blackfullscreen:blit(0, 0, blackfstransp)
	if blackfstransp > 0 then
		blackfstransp = blackfstransp - 5
	end
	screen.flip()
end