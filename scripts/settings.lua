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
	screen.print(18,35,"NOTE: Game settings can ONLY be changed in setting.lua!", 0.5)

	screen.print(40,60,"Language: " .. lang_visual)
	screen.print(40,80,"Freddy in Menu: " .. tostring(freddy_visual))
	screen.print(40,100,"Devmode: " .. tostring(devmode))
	--[[screen.print(40,100,"PLACEHOLDER SETTING 3: ")
	screen.print(40,120,"PLACEHOLDER SETTING 4: ")]]
	screen.print(40,180,"Credits")
	screen.print(40,200,"About")

	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end

	if point == 1 then
		pointer_s:blit(20,180)
		if buttons.cross then
			dofile("scripts/credits.lua")
		end
	end
	if point == 2 then
		pointer_s:blit(20,200)
		night = onefnaf_load(savepath)
		--screen.print(40,80,"         "..night)
		if buttons.cross then
			dofile("scripts/about.lua")
		end
	end
	if point == 3 then
		point = 1
	end
	if point == 0 then
		point = 2
	end

	if buttons.circle then
        dofile("scripts/menu.lua")
    end

	screen.flip()
end