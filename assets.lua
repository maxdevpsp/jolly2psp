function j2_assets(fid)
    if fid == -1 then
        whitefullscreen = image.load("assets/png/gui/white480x272.png")
        blackfullscreen = image.load("assets/png/gui/black480x272.png")
        logo_menu2 = image.load("assets/png/title/logo3.png")
        whitefstransp = 255
        blackfstransp = 255
    elseif fid == 0 then
        -- Static
        static_base = image.load("assets/png/gui/static/1.png")
	    static1 = image.load("assets/png/gui/static/1.png")
	    static2 = image.load("assets/png/gui/static/2.png")
	    static3 = image.load("assets/png/gui/static/3.png")

        statictimer = 0
    elseif fid == 1 then
        but1 = image.load("assets/png/gui/buttons/cross.png")
        startscreen = image.load("assets/png/gui/startscreen.png")
        logo_menu2 = image.load("assets/png/title/logo3.png")
    elseif fid == 2 then
        -- Variables
        intro_statictimer = 0
        intro_frametimer = 0

        -- Tables
        transp = {0, 0}

        -- Pictures
        logo_menu = image.load("assets/png/title/logo2.png")
        wheel = image.load("assets/png/title/wheel.png")

        menumusic = sound.load("assets/wav/risenc.titlesong.wav")
    elseif fid == 3 then
        -- Pictures
        bgjolly = image.load("assets/png/title/jolly/1.png")
	    bgjolly1 = image.load("assets/png/title/jolly/1.png")
	    bgjolly1t = image.load("assets/png/title/jolly/1t.png")
	    bgjolly2 = image.load("assets/png/title/jolly/2.png")
	    bgjolly3 = image.load("assets/png/title/jolly/3.png")
	    bgjolly4 = image.load("assets/png/title/jolly/4.png")

	    bgjolly1r = image.load("assets/png/title/jolly/1.png")
	    bgjolly1tr = image.load("assets/png/title/jolly/1t.png")
	    bgjolly2r = image.load("assets/png/title/jolly/2.png")
	    bgjolly3r = image.load("assets/png/title/jolly/3.png")
	    bgjolly4r = image.load("assets/png/title/jolly/4.png")

        -- Ready for Fedie?
	    bgfr1 = image.load("assets/png/title/freddy/1.png")
	    bgfr1t = image.load("assets/png/title/freddy/1t.png")
	    bgfr2 = image.load("assets/png/title/freddy/2.png")
	    bgfr3 = image.load("assets/png/title/freddy/3.png")
	    bgfr4 = image.load("assets/png/title/freddy/4.png")
	    --logo_menu = image.load("assets/png/title/logo2.png")
	    logo_menu2 = image.load("assets/png/title/logo3.png")
	    --wheel = image.load("assets/png/title/wheel.png")
	    pointer_menu = image.load("assets/png/title/pointer.png")
        pointer_s = image.load("assets/png/gui/pointer.png")
	    text_m = image.load("assets/png/title/yesimlazy.png")

        statictimer = 0
        bgtimer = 0
        bgdecide = 0
        bgtrans = 0
        bgwait = {0, 0, 0, 0, 0}
        bgchange = 0
        bgstate = 0
    elseif fid == 4 then
        logo_menu2 = image.load("assets/png/title/logo3.png")
    end
end

function j2_init()
    -- Loading basic colors
    white = color.new(255, 255, 255)
    black = color.new(0, 0, 0)
end

function j2_jump(id, reqst, reqef)
    collectgarbage("collect")

    -- An exception for intro and menu screens. They load togeher.
    if id == 2 then
        j2_assets(2)
        j2_assets(3)
    else
        if id ~= 3 then
            j2_assets(id)
        end
    end

    -- If requires static
    if reqst == true then
        j2_assets(0)
    end

    -- If requires effects
    if reqef == true then
        j2_assets(-1)
    end

    -- Buttons
    but_cross = image.load("assets/png/gui/buttons/cross_upd_v3.png")
    but_circle = image.load("assets/png/gui/buttons/circle_upd_v3.png")

    dofile("scripts/" .. frame_id[id] .. ".lua")
end