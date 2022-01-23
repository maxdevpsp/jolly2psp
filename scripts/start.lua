while true do
	buttons.read()
	white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)
	startscreen:blit(0, 0)
	logo_menu2:blit(158,40)
	screen.print(245,80,"You're playing JOLLY 2 PSP.\nThe game contains flashing lights, \njumpscares and loud sounds.\nOriginal game is made by IvanG.\nThe port is made by maxdev.\nGood luck!",0.8, white, black, __ACENTER)
	screen.print(245,230,"Press X to continue.",0.8, white, black, __ACENTER)
	screen.flip()
	if buttons.cross then
		j2_assets("nil", "start")
		dofile("scripts/intro.lua")
	end
end