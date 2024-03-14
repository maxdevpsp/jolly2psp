while true do
	buttons.read()

	sol.print(0, 0, 136, "Game Over!\nThis screen will be remade soon eventually.\n\nPress CROSS to quit")

	if buttons.cross then
		dofile("scripts/menu.lua")
	end

	screen.flip()
end