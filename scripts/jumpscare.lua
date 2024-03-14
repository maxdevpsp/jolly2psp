while true do
    buttons.read()

    -- Loading basic colors
    sol.init()

    if sound.endstream(scaresnd) == true then
        sound.play(scaresnd) -- Playing the jumpscare SND.
    end

    if killeranimstate[2] < jumpframesamount then -- If we can change our frames,
        killeranimstate[1] += 1 -- We make a basic timer

        if killeranimstate[1] == jumpanimtostop then -- And if it's over,
            killeranimstate[2] += 1 -- We change the jumpscare frame...
            killeranimstate[1] = 0 -- ... and resetting the timer.
        end

        killeranimbase = killeranim[killeranimstate[2]] -- Changing the frame picture from the table.
    end

    if killeranimstate[2] == jumpframesamount then -- If our animation is over, we finish it.
        if currentkiller == "jolly" then
            if jollyjumploop < 2 then -- Workaround for Jolly's jumpscare (it loops 3 times)
                jollyjumploop += 1
                killeranimstate[2] = 3
                killeranimstate[1] = 0
            else
                sound.stop(scaresnd) -- Stopping the jumpscare SND.
                j2_jump(8, true, true) -- Finishing the anim.
            end
        elseif currentkiller == "freddy" then
            if freddyjumploop < 3 then -- Workaround for Freddy's jumpscare (it loops 4 times, uses same script as Jolly's jumpscare)
                freddyjumploop += 1
                killeranimstate[2] = 7
                killeranimstate[1] = 0
            else
                sound.stop(scaresnd) -- Stopping the jumpscare SND.
                j2_jump(8, true, true) -- Finishing the anim.
            end
        else -- Or if the killer is George, Bonnie or Chica...
            sound.stop(scaresnd) -- Stopping the jumpscare SND.
            j2_jump(8, true, true) -- Finishing the anim.
        end
    end

    sol.draw(1, 0, 0, killeranimbase) -- Drawing our scripted animation.

    if devmode == true then -- Dev-mode only.
        screen.print(0, 0, killeranimstate[1] .. "\n" .. killeranimstate[2])
    end

    screen.flip()
end