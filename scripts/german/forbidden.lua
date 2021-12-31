-- window table (see menu.lua)
window = {85, 0}

while true do
	buttons.read()
	screen.print(window[1],window[2] + 50,"OH NO!",1.2)
	screen.print(window[1],window[2] + 70,"It looks like you can't\naccess this screen in\nthis version of the\ngame. Make sure that the\nversion of the game is the\nlatest or contact maxlmao.",1.0)
	screen.print(window[1],window[2] + 230,"Press X to get back to the menu.",0.8)
	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end