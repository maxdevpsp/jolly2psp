collectgarbage()

while true do
    buttons.read()
    white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)
    shockbgleft:blit(0, 0, shockbgtrans[1])
    shockbgright:blit(scroll[1] + 480, 0, shockbgtrans[2])
    tvs_base:blit(scroll[1] + 230, scroll[2] + 80)
    office1:blit(scroll[1], scroll[2])
    office2:blit(scroll[1] + 480, scroll[2])
    cameram:blit(cameraxy[1], cameraxy[2])
    cameramp2:blit(cameraxy[1] + 480, cameraxy[2])

    -- BLITting GUI
    if isUp == 0 then
        energyicon:blit(5, 5)
        bar:blit(barpos[1], 10)
        bar:blit(barpos[2], 10)
        bar:blit(barpos[3], 10)
        bar:blit(barpos[4], 10)
        bar:blit(barpos[5], 10)
        bar:blit(barpos[6], 10)

        energyicon:blit(461, 5)
        bar:blit(barpos[7], 10)
        bar:blit(barpos[8], 10)
        bar:blit(barpos[9], 10)
        bar:blit(barpos[10], 10)
        bar:blit(barpos[11], 10)
        bar:blit(barpos[12], 10)
    end
    if devmode == true then
        screen.print(0, 0,
            "MAIN DEBUGGER done by maxlmao\nIn-Game debug (put what you want to debug here):\n \nScroll X: " ..
                scroll[1] .. "\nisUp: " .. isUp .. "\nWhichTaken: " .. whichtaken .. "\nTimerA:" .. timera ..
                "\nEnergyAmount: " .. energyamount[1] .. ", " .. energyamount[2] .. "\nEATimer: " .. eatimer[1] .. ", " ..
                eatimer[2] .. "\nPath: " .. path[1] .. ", " .. path[2] .. ", " .. path[3] .. ", " .. path[4] ..
                "\nNight: " .. night .. "\n TVS: " .. tvs_stats[1] .. ", " .. tvs_stats[2] .. "\n \nMain debug:\n \nRAM: " .. os.ram() .. "/" .. os.totalram() .. "\nFPS: " ..
                screen.fps(), 0.4)
    end

    screen.print(cnx[1], cnx[2], cameraname, 1, white, black, __ACENTER)

    if isUp == 0 then
        -- Scrollings
        if buttons.held.right then
            if scroll[1] > -85 then
                scroll[1] = scroll[1] - 2
            end
        end
        if buttons.held.left then
            if scroll[1] < -1 then
                scroll[1] = scroll[1] + 2
            end
        end

        -- Gas screen and back to office
        if buttons.l and directionlook == 0 then
            -- if scroll[1] == 0 then
            if scroll[1] > -25 then
                animswitch[3] = true
            end
        end
        if buttons.r and directionlook == 1 then
            -- if scroll[1] == -86 then
            if scroll[1] < -25 then
                animswitch[4] = true
            end
        end
    end
    -- Monitor and cameras
    if buttons.triangle then
        if isUp == 0 then
            if directionlook == 0 then
                animswitch[1] = true
            end
        elseif isUp == 1 then
            animswitch[2] = true
        end
    end

    -- Camera scrolling
    if isUp == 1 then
    if cameraxy[1] > -86 and dirchange == 0 then
        cameraxy[1] = cameraxy[1] - 0.5
    end
    if cameraxy[1] == -86 and dirchange == 0 then
        dirchange = 1
    end
    if cameraxy[1] < 0 and dirchange == 1 then
        cameraxy[1] = cameraxy[1] + 0.5
    end
    if cameraxy[1] == 0 and dirchange == 1 then
        dirchange = 0
    end
    end

    if isUp == 1 then
        arrows:blit(0, 0)
        map:blit(345, 80)
        mappos:blit(mappospos[1], mappospos[2])
        if buttons.left then
            if whichtaken > 0 then
                whichtaken = whichtaken - 1
            end
        end
        if buttons.right then
            if whichtaken < 8 then
                whichtaken = whichtaken + 1
            end
        end
        if whichtaken == 0 then
            mappospos[1] = 410
            mappospos[2] = 93
            cameram = camera1
            cameramp2 = camera1p2
            cameraname = "1 - Cargo Area 1"
        elseif whichtaken == 1 then
            mappospos[1] = 440
            mappospos[2] = 136
            cameram = camera2
            cameramp2 = camera2p2
            cameraname = "2 - Cargo Area 2"
        elseif whichtaken == 2 then
            mappospos[1] = 357
            mappospos[2] = 90
            cameram = camera3
            cameramp2 = camera3p2
            cameraname = "3 - 2nd Class Lounge"
        elseif whichtaken == 3 then
            mappospos[1] = 337
            mappospos[2] = 157
            cameram = camera4
            cameramp2 = camera4p2
            cameraname = "4 - Air Vent"
        elseif whichtaken == 4 then
            --[[mappospos[1] = 446
            mappospos[2] = 164]]
            mappospos[1] = 377
            mappospos[2] = 167
            cameram = camera5
            cameramp2 = camera5p2
            cameraname = "5 - 2nd Class Hallway"
        elseif whichtaken == 5 then
            mappospos[1] = 446
            mappospos[2] = 164
            cameram = camera6
            cameramp2 = camera6p2
            cameraname = "6 - 3rd Class Entrance 2"
        elseif whichtaken == 6 then
            mappospos[1] = 366
            mappospos[2] = 219
            cameram = camera7
            cameramp2 = camera7p2
            cameraname = "7 - 3rd Class Hallway 1"
        elseif whichtaken == 7 then
            mappospos[1] = 415
            mappospos[2] = 187
            cameram = camera8
            cameramp2 = camera8p2
            cameraname = "8 - 3rd Class Entrance 1"
        elseif whichtaken == 8 then
            mappospos[1] = 445
            mappospos[2] = 218
            cameram = camera9
            cameramp2 = camera9p2
            cameraname = "9 - 3rd Class Hallway 2"
        end
    end

    -- Post-Summer Fixes!!!
    -- Energy usage

    if shockbgtrans[1] > 1 then
        shockbgtrans[1] = shockbgtrans[1] - 5
    end

    if buttons.square then
        if energyamount[1] == 6 then
            if isUp == 0 then
                shockusage[1] = true
                shockbgtrans[1] = 255
            end
        end
    end

    if shockusage[1] == true then
        -- shockbgtrans[1] = 255

        -- If we use the shock, we're giving our power

        energyamount[1] = 1

        if path[2] == 5 then
            path[2] = 0
        end
        if path[3] == 4 then
            path[3] = 0
        end
        if path[5] == 5 then
            path[5] = 0
        end

        shockusage[1] = false
    end

    if shockbgtrans[2] > 1 then
        shockbgtrans[2] = shockbgtrans[2] - 5
    end

    if buttons.circle then
        if energyamount[2] == 6 then
            if isUp == 0 then
                shockusage[2] = true
                shockbgtrans[2] = 255
            end
        end
    end

    if shockusage[2] == true then
        -- shockbgtrans[2] = 255

        -- If we use the shock, we're giving our power

        energyamount[2] = 1

        if path[1] == 6 then
            path[1] = 0
        end
        if path[4] == 4 then
            path[4] = 0
        end

        shockusage[2] = false
    end

    -- Recharging the energy
    if energyamount[1] < 6 then
        if eatimer[1] < 100 then
            eatimer[1] = eatimer[1] + 1
            if eatimer[1] == 100 then
                energyamount[1] = energyamount[1] + 1
                eatimer[1] = 0
            end
        end
    end

    if energyamount[2] < 6 then
        if eatimer[2] < 100 then
            eatimer[2] = eatimer[2] + 1
            if eatimer[2] == 100 then
                energyamount[2] = energyamount[2] + 1
                eatimer[2] = 0
            end
        end
    end

    -- Bar Animations
    if energyamount[1] > 1 then
        barpos[2] = 41
    else
        barpos[2] = -50
    end

    if energyamount[1] > 2 then
        barpos[3] = 57
    else
        barpos[3] = -50
    end

    if energyamount[1] > 3 then
        barpos[4] = 73
    else
        barpos[4] = -50
    end

    if energyamount[1] > 4 then
        barpos[5] = 89
    else
        barpos[5] = -50
    end

    if energyamount[1] > 5 then
        barpos[6] = 105
    else
        barpos[6] = -50
    end

    if energyamount[2] > 1 then
        barpos[8] = 425
    else
        barpos[8] = -50
    end

    if energyamount[2] > 2 then
        barpos[9] = 409
    else
        barpos[9] = -50
    end

    if energyamount[2] > 3 then
        barpos[10] = 393
    else
        barpos[10] = -50
    end

    if energyamount[2] > 4 then
        barpos[11] = 377
    else
        barpos[11] = -50
    end

    if energyamount[2] > 5 then
        barpos[12] = 361
    else
        barpos[12] = -50
    end

    -- Animations
    if animswitch[1] == true then
        timera = timera + 0.25
        if timera == 1 then
            office1 = a1
            office2 = a2
            --[[elseif timera == 2 then
			office1 = a3
			office2 = a4]]
        elseif timera == 2 then
            office1 = a5
            office2 = a6
            --[[elseif timera == 4 then
			office1 = a7
			office2 = a8]]
        elseif timera == 3 then
            office1 = a9
            office2 = a10
            --[[elseif timera == 6 then
			office1 = a11
			office2 = a12]]
        elseif timera == 4 then
            office1 = a13
            office2 = a14
            --[[elseif timera == 8 then
			office1 = a15
			office2 = a16]]
        elseif timera == 5 then
            office1 = a17
            office2 = a18
        elseif timera == 6 then
            office1 = a19
            office2 = a20
        elseif timera == 7 then
            isUp = 1
            cameraxy[2] = 0
            cnx[2] = 250
            animswitch[1] = false
            timera = 0
            office1 = office1re
            office2 = office2re
        end
    end
    if animswitch[2] == true then
        timera = timera + 0.25
        isUp = 0
        cameraxy[2] = 300
        cnx[2] = 300
        if timera == 1 then
            office1 = a19
            office2 = a20
            --[[elseif timera == 2 then
			office1 = a17
			office2 = a18]]
        elseif timera == 2 then
            office1 = a15
            office2 = a16
            --[[elseif timera == 4 then
			office1 = a13
			office2 = a14]]
        elseif timera == 3 then
            office1 = a11
            office2 = a12
            --[[elseif timera == 6 then
			office1 = a9
			office2 = a10]]
        elseif timera == 4 then
            office1 = a7
            office2 = a8
            --[[elseif timera == 8 then
			office1 = a5
			office2 = a6]]
        elseif timera == 5 then
            office1 = a3
            office2 = a4
        elseif timera == 6 then
            office1 = a1
            office2 = a2
        elseif timera == 7 then
            animswitch[2] = false
            timera = 0
            office1 = office1re
            office2 = office2re
        end
    end
    if animswitch[3] == true then
        timera = timera + 0.5
        directionlook = 1
        if timera == 1 then
            office1 = b1
            office2 = b2
            --[[elseif timera == 2 then
			office1 = b3
			office2 = b4]]
        elseif timera == 2 then
            office1 = b5
            office2 = b6
            --[[elseif timera == 4 then
			office1 = b7
			office2 = b8]]
        elseif timera == 4 then
            office1 = b9
            office2 = b10
            --[[elseif timera == 6 then
			office1 = b11
			office2 = b12]]
        elseif timera == 6 then
            office1 = b13
            office2 = b14
            --[[elseif timera == 8 then
			office1 = b15
			office2 = b16]]
        elseif timera == 7 then
            office1 = b17
            office2 = b18
        elseif timera == 8 then
            office1 = b19
            office2 = b20
        elseif timera == 9 then
            scroll[1] = -86
            animswitch[3] = false
            timera = 0
            office1 = gas1
            office2 = gas2
        end
    end
    if animswitch[4] == true then
        timera = timera + 0.5
        scroll[1] = 0
        directionlook = 0
        if timera == 1 then
            office1 = b19
            office2 = b20
        elseif timera == 2 then
            office1 = b17
            office2 = b18
            --[[elseif timera == 3 then
			office1 = b15
			office2 = b16]]
        elseif timera == 4 then
            office1 = b13
            office2 = b14
            --[[elseif timera == 5 then
			office1 = b11
			office2 = b12]]
        elseif timera == 6 then
            office1 = b9
            office2 = b10
            --[[elseif timera == 7 then
			office1 = b7
			office2 = b8]]
        elseif timera == 8 then
            office1 = b5
            office2 = b6
            --[[elseif timera == 9 then
			office1 = b3
			office2 = b4]]
        elseif timera == 10 then
            office1 = b1
            office2 = b2
        elseif timera == 11 then
            animswitch[4] = false
            timera = 0
            office1 = office1re
            office2 = office2re
        end
    end

    -- The hardest thing out there: the AI.

    --[[if night == 2 then
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
	end]]

    if iitimer < 400 then
        iitimer = iitimer + 1
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

    -- Time
    night = 1
    if isUp == 1 then
        screen.print(5, 220, nightvtt .. "\n" .. nightvd, 0.7)
    end
    -- Getting night value so we'll know what date is in the game
    if night == 1 then
        nightvd = "10/22/85"
    end

    -- Time ticks
    nightticks = nightticks + 1
    if nightticks == 60 then
        nightminutes = nightminutes + 1
        nightticks = 0
    end
    if nightminutes == 60 then
        nighthours = nighthours + 1
        nightminutes = 0
    end
    if nighthours == 0 then
        nightvisualhours = "12"
    elseif nighthours == 1 then
        nightvisualhours = "1"
    elseif nighthours == 2 then
        nightvisualhours = "2"
    elseif nighthours == 3 then
        nightvisualhours = "3"
    elseif nighthours == 4 then
        nightvisualhours = "4"
    elseif nighthours == 5 then
        nightvisualhours = "5"
    else
        dofile("scripts/demoend.lua")
    end
    if nightminutes < 10 then
        nightvisualminutes = "0" .. nightminutes
    else
        nightvisualminutes = nightminutes
    end

    -- Drawing total time
    nightvtt = nightvisualhours .. ":" .. nightvisualminutes

    -- Interaction with gas
    if directionlook == 1 and animswitch[3] == false then
        screen.print(240, 130, "Placeholder", 1, white, black, __ACENTER)
        screen.print(240, 150, gas_stability .. "%", 1, white, black, __ACENTER)
    end

    if gas_leak_timer[1] < 200 then
        gas_leak_timer[1] = gas_leak_timer[1] + 1
    end

    if gas_leak_timer[1] == 200 then
        gas_leak_random = math.random(10)
        -- gas_stability = gas_stability - 1
        -- gas_leak_random = 0
        if gas_leak_random == 4 then
            gas_leak_which = 1
        end
        gas_leak_timer[1] = 0
    end

    if gas_leak_which == 1 then
        gas_leak_timer[3] = 1
    end

    if gas_leak_timer[3] == 1 then
        gas_leak_timer[2] = gas_leak_timer[2] + 1
        if gas_leak_timer[2] == 100 then
            gas_stability = gas_stability - 1
            gas_leak_timer[2] = 0
        end
    end

    if buttons.square then
        if gas_leak_timer[3] == 1 then
            gas_fix_toggle[1] = 1
        end
    end
    if gas_fix_toggle[1] == 1 then
        gas_fix_toggle[2] = gas_fix_toggle[2] + 1
        if gas_fix_toggle[2] == 30 then
            gas_stability = 100
            gas_leak_which = 0
            gas_fix_toggle[2] = 0
            gas_fix_toggle[1] = 0
            gas_leak_timer[3] = 0
            gas_leak_timer[1] = 0
            gas_leak_which = 0
            gas_leak_random = 0
        end
    end

    if tvs_stats[1] < 5 then
        tvs_stats[1] = tvs_stats[1] + 1
    end
    if tvs_stats[1] == 5 then
        tvs_stats[2] = tvs_stats[2] + 1
        tvs_stats[1] = 0
    end
    if tvs_stats[2] == 0 then
        tvs_base = tvs_1
    elseif tvs_stats[2] == 1 then
        tvs_base = tvs_2
    elseif tvs_stats[2] == 2 then
        tvs_base = tvs_3
    elseif tvs_stats[2] == 3 then
        tvs_base = tvs_4
    elseif tvs_stats[2] == 4 then
        tvs_base = tvs_5
    elseif tvs_stats[2] == 5 then
        tvs_stats[2] = 0
    end

    screen.flip()
end
