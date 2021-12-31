local pointer = image.load("assets/png/gui/pointer.png")
local rama = image.load("assets/png/gui/rama.png")

-- window table (see menu.lua)
window = {88, 0}

-- variables
point = 1

while true do
	if sound.endstream(menusound) == true then
		sound.play(menusound)
	end
	buttons.read()
	rama:blit(0,0)
	tickon:blit(window[1] + 10,window[2] + 50)
	screen.print(window[1] + 10,window[2] + 25,"Options:",1.2)
	screen.print(window[1],window[2] + 50,"    Language",1.0)
	screen.print(window[1],window[2] + 90,"    Credits",1.0)
	screen.print(window[1],window[2] + 70,"    Palettes",1.0)
	screen.print(window[1],window[2] + 130,"    Placeholder\n    setting 1",1.0)
	screen.print(window[1],window[2] + 170,"    Placeholder\n    setting 2",1.0)
	screen.print(window[1],window[2] + 210,"    Placeholder\n    setting 3",1.0)
	screen.print(window[1],window[2] + 250,"    Placeholder\n    setting 4",1.0)
	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point == 1 then
		pointer:blit(window[1] + 40,window[2] + 50)
		if buttons.cross then
			dofile("scripts/forbidden.lua")
		end
	end
	if point == 2 then
		pointer:blit(window[1] + 40,window[2] + 70)
		if buttons.cross then
			dofile("scripts/colors.lua")
		end
	end
	if point == 3 then
		pointer:blit(window[1] + 40,window[2] + 90)
		if buttons.cross then
			dofile("scripts/credits.lua")
		end
	end
	if point == 4 then
		point = 1
	end
	if point == 0 then
		point = 3
	end
	screen.flip()
	if buttons.square or buttons.circle then
		dofile("scripts/menu.lua")
	end
end