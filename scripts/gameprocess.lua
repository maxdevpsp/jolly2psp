collectgarbage()

while true do
	buttons.read()
	office:blit(window[1],window[2])
	freddy:blit(window[1] + 105,window[2] + 45)
	fan:blit(window[1] + 140,window[2] + 83)
	battery:blit(window[1] + 15,window[2] + 230)
	bar:blit(window[1] + 15,window[2] + 230)
	screen.print(window[1] + 15,window[2] + 250,power,1.0)
	screen.print(window[1] + 60,window[2] + 250,"%",1.0)
	screen.print(window[1] + 185,window[2] + 237,"Night",1.3)
	screen.print(window[1] + 285,window[2] + 237,night,1.3)
	screen.print(window[1] + 210,window[2] + 260,attext,1.3)
	-- ai set
	if night == 2 then
		presets[1] = 0
		presets[2] = 3
		presets[3] = 1
		presets[4] = 1
	end
	if night == 3 then
		presets[1] = 1
		presets[2] = 0
		presets[3] = 5
		presets[4] = 2
	end
	if night == 4 then
		presets[1] = 1
		presets[2] = 2
		presets[3] = 4
		presets[4] = 6
	end
	if night == 5 then
		presets[1] = 3
		presets[2] = 5
		presets[3] = 7
		presets[4] = 5
	end
	if night == 6 then
		presets[1] = 4
		presets[2] = 10
		presets[3] = 12
		presets[4] = 16
	end
	-- fan animation
	if fantimer < 20 then
		timer = timer + 1
	end
	if timer == 20 then
		fananim = fananim + 1
		timer = 0
	end
	if fananim == 0 then
		fan = fan1
	end
	if fananim == 1 then
		fan = fan2
	end
	if fananim == 2 then
		fananim = 0
	end
	-- doors ai
	if buttons.held.left and buttons.square then
		ldc = ldc + 1
	end
	if ldc == 1 and path[2] < 6 then
		doorL:blit(window[1] + 15,window[2] + 45)
	end
	if ldc == 0 then
		doorL:blit(window[1] + 999,window[2] + 45)
	end
	if ldc == 2 then
		ldc = 0
	end
	if buttons.held.right and buttons.square then
		rdc = rdc + 1
	end
	if rdc == 1 then
		doorR:blit(window[1] + 241,window[2] + 45)
	end
	if rdc == 0 then
		doorR:blit(window[1] + 999,window[2] + 45)
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
		LL:blit(window[1] + 15,window[2] + 45)
	end
	if buttons.held.right and buttons.held.cross then
		rds = 1
	else
		rds = 0
	end
	if rds == 1 and rdc == 0 then
		RL:blit(window[1] + 241,window[2] + 45)
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
		mfreddy:blit(camerapos[1],camerapos[2])
		mbonnie:blit(camerapos[3],camerapos[4])
		mchica:blit(camerapos[5],camerapos[6])
		foxys:blit(window[1] + 40,window[2] + 40)
		mfoxy:blit(camerapos[7],camerapos[8])
		screen.print(window[1] + 30,window[2] + 35,"REC*",1.0)
		foxytimer = 0
	end
	if isUp == 2 then
		isUp = 0
	end
	-- time ui
	if nighttimer < 2800 then
		nighttimer = nighttimer + 1
	end
	if nighttimer == 2800 then
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
		presets[2] = presets[2] + 1
	end
	if actualtime == 4 then
		attext = " 3 AM"
		presets[2] = presets[2] + 1
		presets[3] = presets[3] + 1
		presets[4] = presets[4] + 1
	end
	if actualtime == 5 then
		attext = " 4 AM"
		presets[2] = presets[2] + 1
		presets[3] = presets[3] + 1
		presets[4] = presets[4] + 1
	end
	if actualtime == 6 then
		attext = " 5 AM"
	end
	if actualtime == 7 then
		attext = " 6 AM"
		dofile("scripts/demoend.lua")
	end
	-- power ai
	if enval < 600 then
		enval = enval + 1
	end
	if enval == 600 and barsvalue == 1 then
		power = power - 1
		enval = 0
		towaste = 0
	end
	if enval == 400 and barsvalue == 2 then
		power = power - 1
		enval = 0
		towaste = 0
	end
	if enval == 300 and barsvalue == 3 then
		power = power - 1
		enval = 0
		towaste = 0
	end
	if lds == 1 or rds == 1 then
		if barsvalue < 4 then
			barsvalue = barsvalue + 1
		end
	end
	if ldc == 1 or rdc == 1 then
		if barsvalue < 4 then
			barsvalue = barsvalue + 1
		end
	end
	if isUp == 1 then
		if barsvalue < 4 then
			barsvalue = barsvalue + 1
		end
	end
	if power == 0 then
		dofile("scripts/outofpower.lua")
	end
	-- animatronics ai
	if iitimer < 400 then
		iitimer = iitimer + 1
	end
	if foxytimer < 400 then
		foxytimer = foxytimer + 1
	end
	if frtimer < 1300 then
		frtimer = frtimer + 1
	end
	if iitimer == 399 then
		ai[2] = math.random(20)
		ai[3] = math.random(20)
		iitimer = 0
		if ai[2] < presets[2] then
			path[2] = path[2] + 1
		end
		if ai[3] < presets[3] then
			path[3] = path[3] + 1
		end
	end
	if foxytimer == 399 then
		ai[4] = math.random(20)
		if ai[4] < presets[4] then
			path[4] = path[4] + 1
		end
	end
	if frtimer == 1299 then
		ai[1] = math.random(20)
		if ai[1] < presets[1] then
			path[1] = path[1] + 1
		end
		frtimer = 0
	end
	-- now the paths
	-- freddy: stage, that room with tables, toilets, kitchen, hall, corner, office
	if path[1] == 0 then
		camerapos[1] = window[1] + 153
		camerapos[2] = window[2] + 35
	end
	if path[1] == 1 then
		camerapos[1] = window[1] + 185
		camerapos[2] = window[2] + 50
	end
	if path[1] == 2 then
		camerapos[1] = window[1] + 245
		camerapos[2] = window[2] + 80
	end
	if path[1] == 3 then
		camerapos[1] = window[1] + 215
		camerapos[2] = window[2] + 115
	end
	if path[1] == 4 then
		camerapos[1] = window[1] + 182
		camerapos[2] = window[2] + 115
	end
	if path[1] == 5 then
		camerapos[1] = window[1] + 182
		camerapos[2] = window[2] + 165
	end
	if path[1] == 6 then
		camerapos[1] = window[1] + 126
		camerapos[2] = window[2] + 165
	end
	if path[1] == 7 then
		camerapos[1] = window[1] + 999
		camerapos[2] = window[2] + 999
		if ldc == 1 then
			path[1] = 0
		end
	end
	if path[1] == 8 then
		_G.killed = 1
		dofile("scripts/jumpscare.lua")
	end
	-- bonnie: stage, tables, breaker, hall, supply closet, corner, door, office
	if path[2] == 0 then
		camerapos[3] = window[1] + 125
		camerapos[4] = window[2] + 35
	end
	if path[2] == 1 then
		camerapos[3] = window[1] + 120
		camerapos[4] = window[2] + 60
	end
	if path[2] == 2 then
		camerapos[3] = window[1] + 88
		camerapos[4] = window[2] + 55
	end
	if path[2] == 3 then
		camerapos[3] = window[1] + 126
		camerapos[4] = window[2] + 120
	end
	if path[2] == 4 then
		camerapos[3] = window[1] + 100
		camerapos[4] = window[2] + 107
	end
	if path[2] == 5 then
		camerapos[3] = window[1] + 126
		camerapos[4] = window[2] + 165
	end
	if path[2] == 6 then
		camerapos[3] = window[1] + 999
		camerapos[4] = window[2] + 999
		if lds == 1 then
			LL:blit(window[1] + 15,window[2] + 40)
			bd:blit(window[1] + 25,window[2] + 50)
		end
		if ldc == 1 then
			path[2] = 0
		end
	end
	if path[2] == 7 then
		_G.killed = 2
		dofile("scripts/jumpscare.lua")
	end
	-- chica: stage, tables, toilet hall, kitchen, hall, corner, door, office
	if path[3] == 0 then
		camerapos[5] = window[1] + 180
		camerapos[6] = window[2] + 35
	end
	if path[3] == 1 then
		camerapos[5] = window[1] + 153
		camerapos[6] = window[2] + 75
	end
	if path[3] == 2 then
		camerapos[5] = window[1] + 218
		camerapos[6] = window[2] + 70
	end
	if path[3] == 3 then
		camerapos[5] = window[1] + 218
		camerapos[6] = window[2] + 45
	end
	if path[3] == 4 then
		camerapos[5] = window[1] + 210
		camerapos[6] = window[2] + 110
	end
	if path[3] == 5 then
		camerapos[5] = window[1] + 180
		camerapos[6] = window[2] + 120
	end
	if path[3] == 6 then
		camerapos[5] = window[1] + 180
		camerapos[6] = window[2] + 140
	end
	if path[3] == 7 then
		camerapos[5] = window[1] + 180
		camerapos[6] = window[2] + 165
	end
	if path[3] == 8 then
		camerapos[5] = window[1] + 999
		camerapos[6] = window[2] + 999
		if rds == 1 then
			RL:blit(window[1] + 240,window[2] + 40)
			cd:blit(window[1] + 248,window[2] + 65)
		end
		if rdc == 1 then
			path[3] = 0
		end
	end
	if path[3] == 9 then
		_G.killed = 3
		dofile("scripts/jumpscare.lua")
	end
	-- foxy: cove stage 1,2,3,4, office
	if path[4] == 0 then
		camerapos[7] = window[1] + 41
		camerapos[8] = window[2] + 165
	end
	if path[4] == 1 then
		camerapos[7] = window[1] + 41
		camerapos[8] = window[2] + 135
	end
	if path[4] == 2 then
		camerapos[7] = window[1] + 41
		camerapos[8] = window[2] + 105
	end
	if path[4] == 3 then
		camerapos[7] = window[1] + 41
		camerapos[8] = window[2] + 75
	end
	if path[4] == 4 then
		camerapos[7] = window[1] + 41
		camerapos[8] = window[2] + 45
	end
	if path[4] == 5 then
		camerapos[7] = window[1] + 999
		camerapos[8] = window[2] + 999
		if ldc == 1 then
			path[4] = 0
		end
	end
	if path[4] == 6 then
		_G.killed = 4
		dofile("scripts/jumpscare.lua")
	end
	screen.flip()
end