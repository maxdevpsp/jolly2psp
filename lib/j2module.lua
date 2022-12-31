local j2 = {}

function j2.playStatic()
    if animationStatic then
        -- Static animation.
        statictimer = statictimer + 1

        if statictimer == 3 then
            staticFrameCurrent += 1
            statictimer = 0
        end

        if staticFrameCurrent == #animationStatic + 1 then
            staticFrameCurrent = 1
        end

        static_base = animationStatic[staticFrameCurrent]
        static_base:blit(0,0)
    else
        simpleol.screenPrint(1, 0, 136, "Could not load the static animation!\nMaybe you haven't loaded it in?", 0.5)
    end
end

return j2