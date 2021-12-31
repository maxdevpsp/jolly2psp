collectgarbage()

-- loading assets
local office = image.load("assets/png/gameprocess/office/vase.png")
local freddy = image.load("assets/png/gameprocess/office/freddy.png")
local fan = image.load("assets/png/gameprocess/office/fan1.png")
local doorL = image.load("assets/png/gameprocess/office/shut_left.png")
local doorR = image.load("assets/png/gameprocess/office/shut_right.png")
local LL = image.load("assets/png/gameprocess/office/light_l.png")
local RL = image.load("assets/png/gameprocess/office/light_r.png")
local battery = image.load("assets/png/gameprocess/office/battery/main.png")
local bar = image.load("assets/png/gameprocess/office/battery/bar.png")
local monitor = image.load("assets/png/gameprocess/office/monitor/main.png")
local monitormap = image.load("assets/png/gameprocess/office/monitor/map.png")
local mfreddy = image.load("assets/png/gameprocess/office/monitor/freddy.png")
local mbonnie = image.load("assets/png/gameprocess/office/monitor/bonnie.png")
local mchica = image.load("assets/png/gameprocess/office/monitor/chica.png")

-- window table (see menu.lua)
window = {85, 0}

-- ai tables
ai = {0, 0, 0, 0}
presets = {0, 0, 0, 0}
path = {0, 0, 0, 0}
camerapos = {0, 0, 0, 0}

-- variables
fantimer = 0
fananim = 0
timer = 0
actualtime = 1
power = 100
isUp = 0
nighttimer = 0
lds = 0
rds = 0
ldc = 0
rdc = 0
attext = "Placeholder"

-- getting night
local whatNight  = require "assets/data/night"

while true do
	buttons.read()
	office:blit(window[1],window[2])
	freddy:blit(window[1] + 105,window[2] + 45)
	fan:blit(window[1] + 140,window[2] + 83)
	battery:blit(window[1] + 15,window[2] + 230)
	bar:blit(window[1] + 15,window[2] + 230)
	screen.print(window[1] + 15,window[2] + 250,power,1.0)
	screen.print(window[1] + 50,window[2] + 250,"%",1.0)
	screen.print(window[1] + 185,window[2] + 237,"Nacht",1.3)
	screen.print(window[1] + 285,window[2] + 237,whatNight.night,1.3)
	screen.print(window[1] + 210,window[2] + 260,attext,1.3)
	-- debug things
	screen.print(window[1] + 0,window[2] + 0,path[1],0.5)
	screen.print(window[1] + 0,window[2] + 10,path[2],0.5)
	screen.print(window[1] + 0,window[2] + 20,path[3],0.5)
	screen.print(window[1] + 0,window[2] + 30,path[4],0.5)
	-- fan animation
	if fantimer < 20 then
		timer = timer + 1
	end
	if timer == 20 then
		fananim = fananim + 1
		timer = 0
	end
	if fananim == 0 then
		fan = image.load("assets/png/gameprocess/office/fan1.png")
	end
	if fananim == 1 then
		fan = image.load("assets/png/gameprocess/office/fan2.png")
	end
	if fananim == 2 then
		fananim = 0
	end
	-- doors ai
	if buttons.held.left and buttons.square then
		ldc = ldc + 1
	end
	if ldc == 1 then
		doorL:blit(window[1] + 15,window[2] + 40)
	end
	if ldc == 0 then
		doorL:blit(window[1] + 999,window[2] + 40)
	end
	if ldc == 2 then
		ldc = 0
	end
	if buttons.held.right and buttons.square then
		rdc = rdc + 1
	end
	if rdc == 1 then
		doorR:blit(window[1] + 240,window[2] + 40)
	end
	if rdc == 0 then
		doorR:blit(window[1] + 999,window[2] + 40)
	end
	if rdc == 2 then
		rdc = 0
	end
	if buttons.held.left and buttons.held.cross then
		lds = 1
	else
		lds = 0
	end
	if lds == 1 and ldc == 0 then
		LL:blit(window[1] + 15,window[2] + 40)
	end
	if buttons.held.right and buttons.held.cross then
		rds = 1
	else
		rds = 0
	end
	if rds == 1 and rdc == 0 then
		RL:blit(window[1] + 240,window[2] + 40)
	end
	-- tablet ui
	if buttons.triangle then
		isUp = isUp + 1
	end
	if isUp == 0 then
		monitor:blit(999,window[2])
	end
	if isUp == 1 then
		monitor:blit(window[1] + 15,window[2] + 15)
		monitormap:blit(window[1] + 90,window[2] + 35)
		mfreddy:blit(window[1] + 153,window[2] + 35)
		mbonnie:blit(window[1] + 125,window[2] + 35)
		mchica:blit(window[1] + 1805,window[2] + 35)
	end
	if isUp == 2 then
		isUp = 0
	end
	-- time ui
	if nighttimer < 8600 then
		nighttimer = nighttimer + 1
	end
	if nighttimer == 8600 then
		actualtime = actualtime + 1
		nighttimer = 0
	end
	if actualtime == 1 then
		attext = "12 AM"
	end
	if actualtime == 2 then
		attext = " 1 AM"
	end
	if actualtime == 3 then
		attext = " 2 AM"
	end
	if actualtime == 4 then
		attext = " 3 AM"
	end
	if actualtime == 5 then
		attext = " 4 AM"
	end
	if actualtime == 6 then
		attext = " 5 AM"
	end
	if actualtime == 7 then
		attext = " 6 AM"
		dofile("scripts/demoend.lua")
	end
	-- animatronics ai
	ai[1] = math.random(20)
	ai[2] = math.random(20)
	ai[3] = math.random(20)
	ai[4] = math.random(20)
	if ai[1] < presets[1] then
		path[1] = path[1] + 1
	end
	if ai[2] < presets[2] then
		path[2] = path[2] + 1
	end
	if ai[3] < presets[3] then
		path[3] = path[3] + 1
	end
	if ai[4] < presets[4] then
		path[4] = path[4] + 1
	end
	-- now the paths
	-- freddy: stage, that room with tables, toilets, kitchen, hall, corner, office
	-- bonnie: stage, tables, breaker, hall, supply closet, corner, door, office
	-- chica: stage, tables, toilet hall, kitchen, hall, corner, door, office
	-- foxy: cove stage 1,2,3,4, office
	screen.flip()
end