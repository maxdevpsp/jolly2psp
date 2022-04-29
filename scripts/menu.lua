-- a menu screen.
j2_assets("load", "menu")
-- variables
point = 1

while true do
	buttons.read()
	-- Static animation
	if statictimer < 3 then
		statictimer = statictimer + 0.5
	end
	if statictimer == 3 then
		statictimer = 0
	end
	if statictimer == 0 then
		static_base = static1
	end
	if statictimer == 1 then
		static_base = static2
	end
	if statictimer == 2 then
		static_base = static3
	end
	static_base:blit(0,0, 200)
	bgjolly:blit(120,0)

	debug_print()
	
	logo_menu2:blit(20,240)

	screen.print(40,60,"New Game")
	screen.print(40,80,"Continue")
	screen.print(40,100,"")
	screen.print(40,120,"Options")
	screen.print(40,140,"Exit")

	-- Music and sounds (experemental)
	if sound.endstream(menumusic) == true then
		sound.play(menumusic)
	end
	-- BG Animation
	if freddyinmenu == true then
	if bgchange < 500 then
		bgchange = bgchange + 1
	end
	if bgchange == 500 then
		bgstate = bgstate + 1
		whitefstransp = 255
		bgchange = 0
	end
	if bgstate == 0 then
		bgjolly1 = bgjolly1r
		bgjolly1t = bgjolly1tr
		bgjolly2 = bgjolly2r
		bgjolly3 = bgjolly3r
		bgjolly4 = bgjolly4r
	elseif bgstate == 1 then
		bgjolly1 = bgfr1
		bgjolly1t = bgfr1t
		bgjolly2 = bgfr2
		bgjolly3 = bgfr3
		bgjolly4 = bgfr4
	elseif bgstate == 2 then
		bgstate = 0
	end
	end

	if bgtimer < 60 then
		bgtimer = bgtimer + 1
	end
	if bgtimer == 60 then
		bgtimer = 0
		bgdecide = math.random(5)
	end
	if bgdecide == 0 then
		bgjolly = bgjolly1
	elseif bgdecide == 1 then
		bgjolly = bgjolly1
		bgwait[1] = bgwait[1] + 1
		if bgwait[1] == 5 then
			bgdecide = 0
			bgwait[1] = 0
		end
	elseif bgdecide == 2 then
		bgjolly = bgjolly1t
		bgwait[2] = bgwait[2] + 1
		if bgwait[2] == 5 then
			bgdecide = 0
			bgwait[2] = 0
		end
	elseif bgdecide == 3 then
		bgjolly = bgjolly2
		bgwait[3] = bgwait[3] + 1
		if bgwait[3] == 5 then
			bgdecide = 0
			bgwait[3] = 0
		end
	elseif bgdecide == 4 then
		bgjolly = bgjolly3
		bgwait[4] = bgwait[4] + 1
		if bgwait[4] == 5 then
			bgdecide = 0
			bgwait[4] = 0
		end
	elseif bgdecide == 5 then
		bgjolly = bgjolly4
		bgwait[5] = bgwait[5] + 1
		if bgwait[5] == 5 then
			bgdecide = 0
			bgwait[5] = 0
		end
	end
	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point == 1 then
		pointer_menu:blit(0,65)
		if buttons.cross then
			onefnaf_save(savepath, 1)
			j2_assets("load", "htp")
			dofile("scripts/howtoplay.lua")
		end
	end
	if point == 2 then
		pointer_menu:blit(0,85)
		night = onefnaf_load(savepath)
		screen.print(40,80,"         "..night)
		if buttons.cross then
			dofile("scripts/whatnight.lua")
		end
	end
	if point == 3 then
		pointer_menu:blit(0,105)
		--[[if buttons.cross then
			j2_assets("load", "info")
			dofile("scripts/settings.lua")
		end]]
	end
	if point == 4 then
		pointer_menu:blit(0,125)
		if buttons.cross then
			j2_assets("load", "info")
			dofile("scripts/settings.lua")
		end
	end
	if point == 5 then
		pointer_menu:blit(0,145)
		if buttons.cross then
			os.exit()
		end
	end
	if point == 6 then
		point = 1
	end
	if point == 0 then
		point = 5
	end

	-- White fade at the start
	whitefullscreen:blit(0, 0, whitefstransp)
	if whitefstransp > 0 then
		whitefstransp = whitefstransp - 10
	end
    screen.flip()
end