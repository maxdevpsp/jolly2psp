while true do
	buttons.read()

	white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)

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

    screen.print(240,80,"v. "..version.."\n \nPort is by maxdev.\nOriginal game by IvanG.\n \n https://gamejolt.com/games/jolly-2/197334 \n \nThanks for playing!", 0.8, white, black, __ACENTER)
	
	onefnaf_drawcentered(40, logo_menu2)
	onefnaf_drawcentered(230, but_circle, -45)

	onefnaf_printcentered(240, "Return", 1.0, -15)

    if buttons.circle then
        dofile("scripts/settings.lua")
    end

    screen.flip()
end