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
		static_base = static1
	end
	if statictimer == 1 then
		static_base = static2
	end
	if statictimer == 2 then
		static_base = static3
	end
	static_base:blit(0,0, 200)

	screen.print(15,20,"Settings", 1.2)
	screen.print(18,35,"NOTE: Game settings can ONLY be changed in setting.lua!", 0.7)

	-- Language
	--[[if j2_language == 0 then
		screen.print(40,60,"Language: English")
	elseif j2_language == 1 then
		screen.print(40,60,"Language: Russian")
	end]]

	-- Freddy in Menu
	if freddyinmenu == true then
		screen.print(40,80,"Freddy in Menu: Enabled")
	elseif freddyinmenu == false then
		screen.print(40,80,"Freddy in Menu: Disabled")
	end
	screen.print(40,100,"Devmode: " .. tostring(devmode))
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
		if buttons.cross then
			j2_jump(4, true, false)
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