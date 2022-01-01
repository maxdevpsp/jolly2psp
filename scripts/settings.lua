point = 1

while true do
	if sound.endstream(menumusic) == true then
		sound.play(menumusic)
	end
	buttons.read()

	-- Static animation
	if statictimer < 3 then
		statictimer = statictimer + 0.5
	end
	if statictimer == 3 then
		statictimer = 0
	end
	if statictimer == 0 then
		static1 = static1_re
	end
	if statictimer == 1 then
		static1 = static2
	end
	if statictimer == 2 then
		static1 = static3
	end
	static1:blit(0,0, 200)

	if j2_language == 0 then
		lang_visual = "English"
	elseif j2_language == 1 then
		lang_visual = "Russian"
	end

	if freddyinmenu == true then
		freddy_visual = "Enabled"
	elseif freddyinmenu == false then
		freddy_visual = "Disabled"
	end

	screen.print(15,20,"Settings", 1.2)

	screen.print(40,60,"Language: " .. lang_visual)
	screen.print(40,80,"Freddy in Menu: " .. tostring(freddy_visual))
	screen.print(40,100,"PLACEHOLDER SETTING 3: ")
	screen.print(40,120,"PLACEHOLDER SETTING 4: ")
	screen.print(40,140,"About")

	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end

	if point == 1 then
		pointer_s:blit(20,60)
		if buttons.cross then
			onefnaf_save(savepath, 1)
			j2_assets("load", "htp")
			dofile("scripts/howtoplay.lua")
		end
	end
	if point == 2 then
		pointer_s:blit(20,80)
		night = onefnaf_load(savepath)
		--screen.print(40,80,"         "..night)
		if buttons.cross then
			dofile("scripts/whatnight.lua")
		end
	end
	if point == 3 then
		pointer_s:blit(20,100)
		if buttons.cross then
			dofile("scripts/customnight.lua")
		end
	end
	if point == 4 then
		pointer_s:blit(20,120)
		if buttons.cross then
			j2_assets("load", "info")
			dofile("scripts/about.lua")
		end
	end
	if point == 5 then
		pointer_s:blit(20,140)
		if buttons.cross then
			dofile("scripts/settings.lua")
		end
	end
	if point == 6 then
		point = 1
	end
	if point == 0 then
		point = 5
	end

	if buttons.circle then
        dofile("scripts/menu.lua")
    end

	screen.flip()
end