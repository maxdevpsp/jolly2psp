local map = image.load("assets/png/gameprocess/office/monitor/mapj2.png")
local mappos = image.load("assets/png/gameprocess/office/monitor/mappos.png")
local mapposd = image.load("assets/png/gameprocess/office/monitor/mapposwtf.png")
local cameram = image.load("assets/png/gameprocess/office/monitor/cameras/1_1.png")

while true do
	buttons.read()
	screen.print(0,0,"debug",1.2)
	screen.print(0,20,"debugtext",0.8)
	screen.print(0,40,"debugbutton",0.8)

	white = color.new(255,255,255)
	black = color.new(0,0,0)

	cameram:blit(0, 0)

	map:blit(345, 80)
	mapposd:blit(345, 80)
	--mappos:blit(410, 93) -- Cargo Area ^
	--mappos:blit(440, 136) -- Bonnie and chica^
	--mappos:blit(357, 90) -- рума со скамейкой^
	--mappos:blit(446, 164) -- 3rd Class Entrance 2
	--mappos:blit(445, 218) -- 3rd Class Hallway 2
	mappos:blit(366, 219) -- 3rd Class Entrance 1
	--mappos:blit(377, 167) -- коридор от румы со скамейкой^
	--mappos:blit(415, 187) -- 3rd Class Entrance 1
	--mappos:blit(337, 157) -- вента^
	

	screen.flip()
	if buttons.cross then
		dofile("scripts/menu.lua")
	end
end