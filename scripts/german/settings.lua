-- window table (see menu.lua)
window = {85, 0}

while true do
	buttons.read()
	screen.print(window[1],window[2] + 50,"    Language",1.2)
	screen.print(window[1],window[2] + 70,"    Credits",1.2)
	screen.print(window[1],window[2] + 230,"Press SQUARE to go back.",0.8)
	screen.flip()
	if buttons.cross then
		dofile("scripts/intro.lua")
	end
end