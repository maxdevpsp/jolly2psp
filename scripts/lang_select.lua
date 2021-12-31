local pointer = image.load("assets/png/gui/pointer.png")
local rama = image.load("assets/png/gui/rama.png")

-- window table (see menu.lua)
window = {88, 0}

-- variables
point = 1

while true do
	buttons.read()
	rama:blit(0,0)
	screen.print(window[1],window[2] + 50,"Select a language:",1.2)
	screen.print(window[1] + 40,window[2] + 90,"English",0.9)
	screen.print(window[1] + 40,window[2] + 110,"German",0.9)
	screen.print(window[1] + 40,window[2] + 130,"Russian (UNAVIALABLE)",0.9)
	screen.print(window[1],window[2] + 230,"Press X to apply.\n(NOTE: the game will crash.)",0.7)
	if buttons.up then
		point = point - 1
	end
	if buttons.down then
		point = point + 1
	end
	if point == 1 then
		pointer:blit(window[1],window[2] + 90)
		if buttons.cross then
			save = io.open("assets/data/lang.lua", "w+")
			save:close()
			save = io.open("assets/data/lang.lua", "a")
			save:write("return {lang = 1}")
			save:close()
			os.exit()
		end
	end
	if point == 2 then
		pointer:blit(window[1],window[2] + 110)
		if buttons.cross then
			save = io.open("assets/data/lang.lua", "w+")
			save:close()
			save = io.open("assets/data/lang.lua", "a")
			save:write("return {lang = 2}")
			save:close()
			os.exit()
		end
	end
	if point == 3 then
		pointer:blit(window[1],window[2] + 130)
		if buttons.cross then
			save = io.open("assets/data/lang.lua", "w+")
			save:close()
			save = io.open("assets/data/lang.lua", "a")
			save:write("return {lang = 3}")
			save:close()
			os.exit()
		end
	end
	if point == 4 then
		point = 1
	end
	if point == 0 then
		point = 3
	end
	screen.flip()
	if buttons.cross then
		dofile("scripts/intro.lua")
	end
end