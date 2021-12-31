while true do
	hanoob:blit(0, 0)
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
	screen.flip()
end