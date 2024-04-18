--[[
    
              This is part of the
    ----------------------------------------
                  JOLLY 2 PSP
    ----------------------------------------
                made by MaxMafu
          Make sure to credit properly!

    The main gameplay file.
]]

-- Getting the night value.
local curNight = tonumber(sol.loadFile(config.savepath))

-- Making the black fade
local fadeBlack = image.new(480, 275, color.black)

-- Making the door shock rect (like what's the point in keeping them as pngs)
local shockWhite = image.new(100, 275, color.white)

if menumusic then
    sound.stop(menumusic)
end

while true do
    buttons.read()

    -- Drawing camera
    if isUp == 1 then
        cameram:blit(camerascrollx, 0)
        cameramp2:blit(camerascrollx + 480, 0)
    else

        -- Drawing office
        if directionlook == 0 then
            -- Drawing ShockBGs
            shockWhite:blit(0, 0, shockWhiteTransp[1])
            shockWhite:blit(scroll[1] + 480, 0, shockWhiteTransp[2])

            -- Drawing TV Static
            tvs_base:blit(scroll[1] + 230, scroll[2] + 80)

            officeImg.default[1]:blit(scroll[1], 0)
            officeImg.default[2]:blit(scroll[1] + 480, 0)

            -- Drawing TV light and transperncy tweaks
            tvLight:blit(scroll[1] + 185, scroll[2] + 38, tvLightTransp)
            tvLightTransp = math.random(105, 155)
        elseif directionlook == 1 then
            officeImg.gas[1]:blit(scroll[1], 0)
            officeImg.gas[2]:blit(scroll[1] + 480, 0)
        elseif directionlook == 2 then
            officeImg.current[1]:blit(scroll[1], 0)
            officeImg.current[2]:blit(scroll[1] + 480, 0)
        end
    end

    -- Office AMB
    if not sound.playing(officeamb) == true then
	    sound.play(officeamb)
    end

    --sound.vol(officeamb, 40)
    sound.vol(cameraamb, 30)
    sound.vol(doorshocksnd, 50)
    sound.vol(cameraswitchsnd, 20)

    if config.devmode == true then
        sol.showDebug()
        screen.print(0, 60, "Current night: " .. curNight, 0.5)
    end

    if isUp == 0 then -- If the player is not using the tablet
        sound.stop(cameraamb) -- Stop the tablet's AMB

        -- Drawing energy bar and icons
        energyicon:blit(5, 5) -- Energy Icon 1

        for i = 1, 5 do
            if energyamount[1] > i then
                bar:blit(barpos.left[i], 10)
            end
        end

        energyicon:blit(461, 5) -- Energy Icon 2

        for i = 1, 5 do
            if energyamount[2] > i then
                bar:blit(barpos.right[i], 10)
            end
        end

        -- Energy usage and shock mechanic

        if buttons.l then -- If we press L,
            if energyamount[1] == 6 and isUp == 0 then -- If the have the full amount if energy and if we're not using the tablet,
                energyamount[1] = 1 -- If we use the shock, we're giving our power
                shockWhiteTransp[1] = 255 -- and triggering the shock anim.
                sound.play(doorshocksnd)
            end
        end

        if buttons.r then -- If we press R,
            if energyamount[2] == 6 and isUp == 0 then -- If the have the full amount if energy and if we're not using the tablet,
                energyamount[2] = 1 -- If we use the shock, we're giving our power
                shockWhiteTransp[2] = 255 -- and triggering the shock anim.
                -- Resetting AIs
                if ai.path[1] == 6 then
                    ai.path[1] = 0
                end
                sound.play(doorshocksnd)
            end
        end

        if shockWhiteTransp[1] > 1 then -- If the shock anim is triggered,
            shockWhiteTransp[1] = shockWhiteTransp[1] - 5 -- we slowly fade it out.
        end

        if shockWhiteTransp[2] > 1 then -- If the shock anim is triggered,
            shockWhiteTransp[2] = shockWhiteTransp[2] - 5 -- we slowly fade it out.
        end

        -- If the tablet is close, we can move our camera and scroll through the office:
        if buttons.held.right and directionlook < 2 then -- If the player holds RIGHT,
            if scroll[1] > scrolllimits[2] then -- If the camera isn't close to the scroll limit,
                scroll[1] = scroll[1] - scroll[2] -- Moving the camera
            end
        end
        if buttons.held.left and directionlook < 2 then -- If the player holds LEFT,
            if scroll[1] < -1 then -- If the camera isn't close to the scroll limit,
                scroll[1] = scroll[1] + scroll[2] -- Moving the camera
            end
        end

        -- Now we need to go to the gas fixing screen.
        if buttons.down and introState > 0 then -- If we press LT and we're looking forward,
            if directionlook == 0 and animswitch[1] == false and animswitch[2] == false and animswitch[4] == false then -- and if the camera is in the specific zone,
                animswitch[3] = true -- Turning on the anim
            elseif directionlook == 1 and animswitch[1] == false and animswitch[2] == false and animswitch[3] == false then -- and if the camera is in the specific zone,
                animswitch[4] = true -- Turning on the anim
            end
        end
    end

    -- Camera monitor and all the stuff

    if buttons.up and directionlook == 0 and introState > 0 then -- If the player presses Up and looking forward,
        if isUp == 0 then -- If we aren't using the tablet,
            animswitch[1] = true -- Play the following anim
        elseif isUp == 1 then -- but if we use it,
            animswitch[2] = true -- Play the following anim. Yeah.
        end
        sound.play(runslowsnd)
    end

    -- Camera scrollings

    if isUp == 1 then
        -- Camera AMB
        if sound.endstream(cameraamb) == true then
            sound.play(cameraamb) -- Play the tablet's AMB
        end

        if camerascrollx > -86 and dirchange == 0 then -- If the camera scroll HASN'T reached its limit,
            camerascrollx = camerascrollx - 0.5 -- Moving it.
        end
        if camerascrollx == -86 and dirchange == 0 then -- If the camera scroll HAS reached its limit,
            dirchange = 1 -- then changing the direction.
        end
        if camerascrollx < 0 and dirchange == 1 then -- If the camera scroll HASN'T reached its limit,
            camerascrollx = camerascrollx + 0.5 -- Moving it.
        end
        if camerascrollx == 0 and dirchange == 1 then -- If the camera scroll HAS reached its limit,
            dirchange = 0 -- then changing the direction.
        end
        
        arrows:blit(0, 0) -- Drawing arrows
        map:blit(345, 80) -- Drawing the ship's map
        mappos:blit(mappospos[1], mappospos[2]) -- Drawing map pointer to know what camera you're using now

        if buttons.left then -- If we press LEFT,
            if whichtaken > 0 then -- And if the taken camera > 0,
                whichtaken = whichtaken - 1 -- We go to the previous camera.
            end
            sound.play(cameraswitchsnd)
        end
        if buttons.right then -- If we press RIGHT,
            if whichtaken < 8 then -- And if the taken camera < 8,
                whichtaken = whichtaken + 1 -- We go to the next camera.
            end
            sound.play(cameraswitchsnd)
        end

        -- Printing camera name
        screen.print(240, 255, cameraname, 1, color.white, color.black, __ACENTER)

        -- Getting camera's data
        if config.showcameranumber then
            visualtaken = whichtaken + 1
            cameraname = visualtaken .. " - " .. cameras[whichtaken + 1].name -- Name
        else
            cameraname = cameras[whichtaken + 1].name -- Name
        end
        cameram = cameras[whichtaken + 1].images[1]
        cameramp2 = cameras[whichtaken + 1].images[2]
        mappospos[1] = cameras[whichtaken + 1].pointpos[1]
        mappospos[2] = cameras[whichtaken + 1].pointpos[2]

        -- Anim Icons on map
        --image.blitsprite(debuganimicons, 345 + debugAnimIconsPos.jolly[ai.path[1] + 1].x, 80 + debugAnimIconsPos.jolly[ai.path[1] + 1].y, 0)
        --image.blitsprite(debuganimicons, 345 + debugAnimIconsPos.george[ai.path[2] + 1].x, 80 + debugAnimIconsPos.george[ai.path[2] + 1].y, 1)
        --image.blitsprite(debuganimicons, 345 + debugAnimIconsPos.bonnie[ai.path[3] + 1].x, 80 + debugAnimIconsPos.bonnie[ai.path[3] + 1].y, 2)
    end

    -- Recharging the energy

    if energyamount[1] < 6 then -- If the energy amount is below 6,
        eatimer[1] = eatimer[1] + 1 -- We make a timer.
        if eatimer[1] == 300 then -- And if the timer is 100,
            energyamount[1] = energyamount[1] + 1 -- We get an energy bar back...
            eatimer[1] = 0 -- ... and resetting the timer.
        end
    end

    if energyamount[2] < 6 then -- If the energy amount is below 6,
        eatimer[2] = eatimer[2] + 1 -- We make a timer.
        if eatimer[2] == 300 then -- And if the timer is 100,
            energyamount[2] = energyamount[2] + 1 -- We get an energy bar back...
            eatimer[2] = 0 -- ... and resetting the timer.
        end
    end

    -- Animations

    -- 1: Going into tablet
    if animswitch[1] == true and introState > 0 then
        -- Changing the office state
        directionlook = 2
        -- Handling the timer
        officeAnimation.animTimer = officeAnimation.animTimer + 0.45

        -- When timer is >= 1
        if officeAnimation.animTimer >= 1 then
            -- We switch the frame if it's not the final one
            if officeAnimation.curFrame < #officeAnimation.anims[1][1] then
                officeAnimation.curFrame += 1
                officeImg.current[1] = officeAnimation.anims[1][1][officeAnimation.curFrame]
                officeImg.current[2] = officeAnimation.anims[1][2][officeAnimation.curFrame]
            else
                -- Changing the office state back
                directionlook = 0
                -- Going to the tablet mode
                isUp = 1
                -- Turning the anim script off
                animswitch[1] = false
            end
            -- Setting timer to 0 for future use.
            officeAnimation.animTimer = 0
        end
    end
    -- 2: Going from tablet
    if animswitch[2] == true and introState > 0 then
        -- Changing the office state
        directionlook = 2
        isUp = 0
        -- Handling the timer
        officeAnimation.animTimer = officeAnimation.animTimer + 0.45

        -- When timer is >= 1
        if officeAnimation.animTimer >= 1 then
            -- We switch the frame if it's not the final one
            if officeAnimation.curFrame > 1 then
                officeAnimation.curFrame -= 1
                officeImg.current[1] = officeAnimation.anims[1][1][officeAnimation.curFrame]
                officeImg.current[2] = officeAnimation.anims[1][2][officeAnimation.curFrame]
            else
                -- Changing the office state back
                directionlook = 0
                -- Turning the anim script off
                animswitch[2] = false
            end
            -- Setting timer to 0 for future use.
            officeAnimation.animTimer = 0
        end
    end

    if animswitch[3] == true and introState > 0 then -- Going to Gas
        officeAnimation.animTimer = officeAnimation.animTimer + 0.45
        directionlook = 2 -- Changing the look direction
        if officeAnimation.animTimer >= 1 then -- If the timer is 1,
            officeAnimation.curFrame += 1 -- We add 1 to our current frame..
            if officeAnimation.curFrame < #officeAnimation.anims[2][1] then
                officeImg.current[1] = officeAnimation.anims[2][1][officeAnimation.curFrame] -- ... and draw frames themselves.
                officeImg.current[2] = officeAnimation.anims[2][2][officeAnimation.curFrame] -- Same here.
            else
                directionlook = 1 -- Changing the look direction
                animswitch[3] = false -- Turning the anim script off
            end
            officeAnimation.animTimer = 0 -- Setting anim script variables to default
        end
    end
    if animswitch[4] == true and introState > 0 then -- Going from Gas
        directionlook = 2 -- Changing the look direction
        officeAnimation.animTimer = officeAnimation.animTimer + 0.45
        scroll[1] = 0 -- Changing scroll back
        if officeAnimation.animTimer >= 1 then -- If the timer is 1,
            officeAnimation.curFrame -= 1 -- We add 1 to our current frame..
            if officeAnimation.curFrame > 0 then
                officeImg.current[1] = officeAnimation.anims[2][1][officeAnimation.curFrame] -- ... and draw frames themselves.
                officeImg.current[2] = officeAnimation.anims[2][2][officeAnimation.curFrame] -- Same here.
            else
                directionlook = 0 -- Changing the look direction
                animswitch[4] = false -- Turning the anim script off
            end
            officeAnimation.animTimer = 0 -- Setting anim script variables to default
        end
    end

    screen.print(20, 120, officeAnimation.curFrame .. "\n" .. directionlook .. "\n" .. tostring(animswitch[3]))

    --screen.print(0, 80, officeAnimation.animTimer .. "\n" .. officeAnimation.curFrame)

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

    --if nighthours >= 3 then
        -- Activating George.
        ai.timers[2] += 1
        if ai.timers[2] == 497 then
            ai.aiGen[2] = math.random(20) -- Deciding if he should go or not. 
            if ai.aiGen[2] <= ai.presets[2] then
                ai.path[2] += 1 -- Moving George.
            end
            ai.timers[2] = 0 -- Resetting the timer.
        end

        -- Activating Bonnie.
        ai.timers[3] += 1
        if ai.timers[3] == 497 then
            ai.aiGen[3] = math.random(20) -- Deciding if she should go or not. 
            if ai.aiGen[3] <= ai.presets[3] then
                ai.path[3] += 1 -- Moving Bonnie.
            end
            ai.timers[3] = 0 -- Resetting the timer.
        end
    --end

    -- Going to jumpscare and killing the player.
    if ai.path[1] == 6 then
        j2_jumpscarejump("jolly")
    elseif ai.path[2] == 5 then
        j2_jumpscarejump("george")
    elseif ai.path[3] == 4 then
        j2_jumpscarejump("bonnie")
    end

    --screen.print(0, 180, ai.timers[2] .. "\n" .. ai.aiGen[2] .. "\n" .. ai.path[2])

    -- Time and everything related to it.

    if isUp == 1 then
        screen.print(5, 220, nightvtt .. "\n" .. nightvd, 0.7) -- Printing time and date if we're using the tablet.
    end
    -- Getting night value so we'll know what date is in the game
    if night == 1 then
        nightvd = "10/22/85"
    else
        nightvd = "??/??/??"
    end

    -- Time ticks.
    nightticks = nightticks + 1 -- Seconds.

    if nightticks == 60 then -- If we have 60 seconds,
        nightminutes = nightminutes + 1 -- We add 1 minute,
        nightticks = 0 -- and reset our seconds.
    end

    if nightminutes == 60 then -- If we have 60 minutes,
        nighthours = nighthours + 1 -- We add an hour,
        nightminutes = 0 -- and reset our minutes.
    end

    if nighthours == 0 then -- If it's 12 AM right now,
        nightvisualhours = "12" -- We print 12:00 instead of 0:00  
    elseif nighthours == 6 then -- or if it's 6 AM,
        j2_jump(2, true, true) -- We finish the night.
    else
        nightvisualhours = nighthours -- or else, we print the hours.
    end

    if nightminutes < 10 then -- A bit of additional code to avoid cases like "1:5"
        nightvisualminutes = "0" .. nightminutes
    else
        nightvisualminutes = nightminutes
    end

    -- Drawing total time
    nightvtt = nightvisualhours .. ":" .. nightvisualminutes

    -- Interaction with gas
    --[[if directionlook == 1 and animswitch[3] == false and animswitch[4] == false then
        screen.print(240, 130, "Gas Stability:", 1, white, black, __ACENTER)
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
    end]]

    -- TV Static animation.
    if tvs_stats[1] < 5 then
        tvs_stats[1] = tvs_stats[1] + 1 -- Basic timer. I have nothing to say here.
    end
    if tvs_stats[1] == 5 then -- If we reach our timer limit,
        tvs_stats[2] = tvs_stats[2] + 1 -- We add 1 to ou frame counter,
        tvs_stats[1] = 0 -- and starting the timer again.
    end

    if tvs_stats[2] == 6 then
        tvs_stats[2] = 1
    end

    tvs_base = tvstaticanim[tvs_stats[2]] -- Drawing animated TV Static.

    -- Intro Sequence
    -- Additional black screen behind text
    fadeBlack:blit(0, 0, introBackTransp)

    -- Printing the night value
    sol.print("c", 0, 131, lang.gameNights[curNight], 1.4, color.new(255, 255, 255, introTextTransp))

    -- Drawing the black screen
    fadeBlack:blit(0, 0, introBlackTransp)
    
    -- State 0 - fade out
    if introState == 0 then
        if introBlackTransp > 0 then
            introBlackTransp -= 2.5
        else
            introState = 1
        end
    -- State 1 - Night fade out
    elseif introState == 1 then
        if introTextTransp > 0 then
            introTextTransp -= 1.5
            introBackTransp -= 1.5
        else
            introState = 2 -- Sequence over
        end
    end

    screen.flip()
end
