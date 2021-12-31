local pmftimer = 0
--pmf.run("assets/pmf/jolly2_intro.pmf", 200, 50)
while true do
	buttons.read()
	if buttons.circle then
		pmf.run("assets/pmf/jolly2_intro.pmf", 200, 50)
	end
	pmftimer = pmftimer + 1
	screen.print(0,0,pmftimer,0.2)
	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end