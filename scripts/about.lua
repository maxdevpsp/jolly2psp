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
		static1 = static1_re
	end
	if statictimer == 1 then
		static1 = static2
	end
	if statictimer == 2 then
		static1 = static3
	end
	static1:blit(0,0, 200)
    screen.print(40,40,"JOLLY 2 PSP\n \nVersion: "..version.."\nDev-mode: "..tostring(devmode).."\n \nPort developed by maxdev.\nOriginal game by IvanG.\nThanks for playing!\n \n \nPress CIRCLE to go back.")

    if buttons.circle then
        dofile("scripts/settings.lua")
    end

    screen.flip()
end