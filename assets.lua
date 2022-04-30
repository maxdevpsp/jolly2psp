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
    elseif fid == 5 then
        htp_img = image.load("assets/png/gui/htp.png")
    elseif fid == 6 then
        -- The Office
        office1 = image.load("assets/png/gameprocess/office/panorama/1_1.png")
        office2 = image.load("assets/png/gameprocess/office/panorama/1_2.png")
        
        -- The Office (Reserve)
        office1re = image.load("assets/png/gameprocess/office/panorama/1_1.png")
        office2re = image.load("assets/png/gameprocess/office/panorama/1_2.png")
        
        -- The Gas supply
        gas1 = image.load("assets/png/gameprocess/office/panorama/2_1.png")
        gas2 = image.load("assets/png/gameprocess/office/panorama/2_2.png")
        
        -- Animations
        a1 = image.load("assets/png/gameprocess/office/anim/1_1.png")
        a2 = image.load("assets/png/gameprocess/office/anim/1_2.png")
        a3 = image.load("assets/png/gameprocess/office/anim/2_1.png")
        a4 = image.load("assets/png/gameprocess/office/anim/2_2.png")
        a5 = image.load("assets/png/gameprocess/office/anim/3_1.png")
        a6 = image.load("assets/png/gameprocess/office/anim/3_2.png")
        a7 = image.load("assets/png/gameprocess/office/anim/4_1.png")
        a8 = image.load("assets/png/gameprocess/office/anim/4_2.png")
        a9 = image.load("assets/png/gameprocess/office/anim/5_1.png")
        a10 = image.load("assets/png/gameprocess/office/anim/5_2.png")
        a11 = image.load("assets/png/gameprocess/office/anim/6_1.png")
        a12 = image.load("assets/png/gameprocess/office/anim/6_2.png")
        a13 = image.load("assets/png/gameprocess/office/anim/7_1.png")
        a14 = image.load("assets/png/gameprocess/office/anim/7_2.png")
        a15 = image.load("assets/png/gameprocess/office/anim/8_1.png")
        a16 = image.load("assets/png/gameprocess/office/anim/8_2.png")
        a17 = image.load("assets/png/gameprocess/office/anim/9_1.png")
        a18 = image.load("assets/png/gameprocess/office/anim/9_2.png")
        a19 = image.load("assets/png/gameprocess/office/anim/10_1.png")
        a20 = image.load("assets/png/gameprocess/office/anim/10_2.png")
        b1 = image.load("assets/png/gameprocess/office/anim/anim2/1_1.png")
        b2 = image.load("assets/png/gameprocess/office/anim/anim2/1_2.png")
        b3 = image.load("assets/png/gameprocess/office/anim/anim2/2_1.png")
        b4 = image.load("assets/png/gameprocess/office/anim/anim2/2_2.png")
        b5 = image.load("assets/png/gameprocess/office/anim/anim2/3_1.png")
        b6 = image.load("assets/png/gameprocess/office/anim/anim2/3_2.png")
        b7 = image.load("assets/png/gameprocess/office/anim/anim2/4_1.png")
        b8 = image.load("assets/png/gameprocess/office/anim/anim2/4_2.png")
        b9 = image.load("assets/png/gameprocess/office/anim/anim2/5_1.png")
        b10 = image.load("assets/png/gameprocess/office/anim/anim2/5_2.png")
        b11 = image.load("assets/png/gameprocess/office/anim/anim2/6_1.png")
        b12 = image.load("assets/png/gameprocess/office/anim/anim2/6_2.png")
        b13 = image.load("assets/png/gameprocess/office/anim/anim2/7_1.png")
        b14 = image.load("assets/png/gameprocess/office/anim/anim2/7_2.png")
        b15 = image.load("assets/png/gameprocess/office/anim/anim2/8_1.png")
        b16 = image.load("assets/png/gameprocess/office/anim/anim2/8_2.png")
        b17 = image.load("assets/png/gameprocess/office/anim/anim2/9_1.png")
        b18 = image.load("assets/png/gameprocess/office/anim/anim2/9_2.png")
        b19 = image.load("assets/png/gameprocess/office/anim/anim2/10_1.png")
        b20 = image.load("assets/png/gameprocess/office/anim/anim2/10_2.png")
        
        -- Shock
        shockbgleft = image.load("assets/png/gameprocess/office/shock/shockleft.png")
        shockbgright = image.load("assets/png/gameprocess/office/shock/shockright.png")
        
        -- GUI
        bar = image.load("assets/png/gameprocess/office/shock/bar.png")
        energyicon = image.load("assets/png/gameprocess/office/shock/230.png")
        
        -- Cameras (panoramas)
        cameram = image.load("assets/png/gameprocess/office/monitor/cameras/1_1.png")
        cameramp2 = image.load("assets/png/gameprocess/office/monitor/cameras/1_2.png")
        camera1 = image.load("assets/png/gameprocess/office/monitor/cameras/1_1.png")
        camera1p2 = image.load("assets/png/gameprocess/office/monitor/cameras/1_2.png")
        camera2 = image.load("assets/png/gameprocess/office/monitor/cameras/2_1.png")
        camera2p2 = image.load("assets/png/gameprocess/office/monitor/cameras/2_2.png")
        camera3 = image.load("assets/png/gameprocess/office/monitor/cameras/3_1.png")
        camera3p2 = image.load("assets/png/gameprocess/office/monitor/cameras/3_2.png")
        camera4 = image.load("assets/png/gameprocess/office/monitor/cameras/4_1.png")
        camera4p2 = image.load("assets/png/gameprocess/office/monitor/cameras/4_2.png")
        camera5 = image.load("assets/png/gameprocess/office/monitor/cameras/5_1.png")
        camera5p2 = image.load("assets/png/gameprocess/office/monitor/cameras/5_2.png")
        camera6 = image.load("assets/png/gameprocess/office/monitor/cameras/6_1.png")
        camera6p2 = image.load("assets/png/gameprocess/office/monitor/cameras/6_2.png")
        camera7 = image.load("assets/png/gameprocess/office/monitor/cameras/8_1.png")
        camera7p2 = image.load("assets/png/gameprocess/office/monitor/cameras/8_2.png")
        camera8 = image.load("assets/png/gameprocess/office/monitor/cameras/7_1.png")
        camera8p2 = image.load("assets/png/gameprocess/office/monitor/cameras/7_2.png")
        camera9 = image.load("assets/png/gameprocess/office/monitor/cameras/9_1.png")
        camera9p2 = image.load("assets/png/gameprocess/office/monitor/cameras/9_2.png")
        arrows = image.load("assets/png/gameprocess/office/monitor/arrows.png")
        map = image.load("assets/png/gameprocess/office/monitor/mapj2.png")
        mappos = image.load("assets/png/gameprocess/office/monitor/mappos.png")
        mapposd = image.load("assets/png/gameprocess/office/monitor/mapposwtf.png")

        -- TV Static
        tvs_1 = image.load("assets/png/gameprocess/office/tvstatic/37.png")
        tvs_2 = image.load("assets/png/gameprocess/office/tvstatic/38.png")
        tvs_3 = image.load("assets/png/gameprocess/office/tvstatic/39.png")
        tvs_4 = image.load("assets/png/gameprocess/office/tvstatic/40.png")
        tvs_5 = image.load("assets/png/gameprocess/office/tvstatic/41.png")
        tvs_base = image.load("assets/png/gameprocess/office/tvstatic/37.png")


        scroll = {0, 0}
        directionlook = 0
        cameraxy = {0, 300}
        whichtaken = 0
        dirchange = 0
        cameraname = "PLACEHOLDER12345MARTINWALLSISGAYY"
        cnx = {240, 300}
        extrasection = {0, false, 0}
        extraname = ""
        animswitch = {false, false, false, false}
        timera = 0
        energyamount = {6, 6}
        shockusage = {false, false}
        shockbgtrans = {0, 0}
        eatimer = {0, 0}
        barpos = {25, 41, 57, 73, 89, 105, 441, 425, 409, 393, 377, 361}
        nightticks = 0
        nightminutes = 0
        nighthours = 0
        nightvisualminutes = "UNDEF"
        nightvisualhours = "UNDEF"
        nightvd = "UNDERFINED"
        nightvtt = "PLACEHOLDER"
        gas_stability = 100
        gas_leak_timer = {0, 0, 0}
        gas_leak_random = 0
        gas_leak_which = 0
        gas_fix_toggle = {0, 0}
        isUp = 1
        tvs_stats = {0, 0}
        mappospos = {0, 0}
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