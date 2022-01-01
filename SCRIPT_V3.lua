--[[
    
    Third version of SCRIPT.LUA, based on optimizing the game.

    This is a part of JOLLY 2 port for PSP by maxdev. 
    Be sure to credit if making mods/rewriting contents in the file.

]]

-- Lib's
require "lib.savefile"
require "lib.gamefeatures"

-- Setting file
require "setting"

function j2_assets(mode, frame)
    if mode == "load" then
    if frame == "start" then
        but1 = image.load("assets/png/gui/buttons/cross.png")
        startscreen = image.load("assets/png/gui/startscreen.png")
        logo_menu2 = image.load("assets/png/title/logo3.png")
    elseif frame == "intro" then
        -- Variables
        intro_statictimer = 0
        intro_frametimer = 0

        -- Tables
        transp = {0, 0}

        -- Pictures
        logo_menu = image.load("assets/png/title/logo2.png")
        wheel = image.load("assets/png/title/wheel.png")

        menumusic = sound.load("assets/wav/risenc.titlesong.wav")

    elseif frame == "menu" then
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

        menumusic = sound.load("assets/wav/risenc.titlesong.wav")

    elseif frame == "gameprocess" then
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

    elseif frame == "static" then
        static1 = image.load("assets/png/gui/static/1.png")
	    static1_re = image.load("assets/png/gui/static/1.png")
	    static2 = image.load("assets/png/gui/static/2.png")
	    static3 = image.load("assets/png/gui/static/3.png")

    elseif frame == "effects" then
        whitefullscreen = image.load("assets/png/gui/white480x272.png")
        blackfullscreen = image.load("assets/png/gui/black480x272.png")
        logo_menu2 = image.load("assets/png/title/logo3.png")
        whitefstransp = 255
        blackfstransp = 255

    elseif frame == "htp" then
        htp_img = image.load("assets/png/gui/htp.png")
    
    elseif frame == "ai" then
        ai = {0, 0, 0, 0}
        presets = {0, 0, 20, 0}
        path = {0, 5, 0, 0, 0}
        camerapos = {0, 0, 0, 0, 0, 0, 0, 0}
        iitimer = 0
    
    elseif frame == "whatnight" then
        whatnight_txt = "JOE BIDEN WAKE UP"
        office1 = image.load("assets/png/gameprocess/office/panorama/1_1.png")
        menumusic = sound.load("assets/wav/risenc.titlesong.wav")
        nightnum = image.load("assets/png/gui/night/1.png")
        nightnum_1 = image.load("assets/png/gui/night/1.png")
        nightnum_2 = image.load("assets/png/gui/night/1.png")
        nightnum_3 = image.load("assets/png/gui/night/1.png")
        nightnum_4 = image.load("assets/png/gui/night/1.png")
        nightnum_5 = image.load("assets/png/gui/night/1.png")
        nightnum_6 = image.load("assets/png/gui/night/1.png")
        nightnum_7 = image.load("assets/png/gui/night/1.png")
        whatnight_tr = {255, 255, false}
        whatnight_timer = 0

    elseif frame == "extras" then
        bgEX = image.load("assets/png/extras/bg.png")
        animEX = image.load("assets/png/extras/pixel.png")
        animEXre = image.load("assets/png/extras/pixel.png")
        jollyEX = image.load("assets/png/extras/jolly.png")
        freddyEX = image.load("assets/png/extras/freddy.png")
        chicaEX = image.load("assets/png/extras/chica.png")
        bonnieEX = image.load("assets/png/extras/bonnie.png")
        georgeEX = image.load("assets/png/extras/george.png")

        extrasection = {0, false, 0}
        extraname = ""

    elseif frame == "loading" then
        loadscreen = image.load("assets/png/gui/loadscreen.png")

    elseif frame == "gameover" then
        hanoob = image.load("assets/png/cutscenes/gameover/ded.png")

    elseif frame == "settings" then
        lang_visual = ""
        freddy_visual = ""

    --[[ If the argument is missing
    else
        return false]]

    end
elseif mode == "nil" then
    if frame == "start" then
        but1 = nil
    elseif frame == "intro" then
        -- Variables
        intro_statictimer = nil
        intro_frametimer = nil

        -- Tables
        transp = nil

        -- Pictures
        logo_menu = nil
        wheel = nil

        menumusic = nil

    elseif frame == "menu" then
        -- Pictures
        bgjolly = nil
	    bgjolly1 = nil
	    bgjolly1t = nil
	    bgjolly2 = nil
	    bgjolly3 = nil
	    bgjolly4 = nil

	    bgjolly1r = nil
	    bgjolly1tr = nil
	    bgjolly2r = nil
	    bgjolly3r = nil
	    bgjolly4r = nil

        -- Ready for Fedie?
	    bgfr1 = nil
	    bgfr1t = nil
	    bgfr2 = nil
	    bgfr3 = nil
	    bgfr4 = nil

	    logo_menu = nil
	    pointer_menu = nil
        pointer_s = nil
	    text_m = nil

        statictimer = nil
        bgtimer = nil
        bgdecide = nil
        bgtrans = nil
        bgwait = nil
        bgchange = nil
        bgstate = nil

        menumusic = nil

    elseif frame == "gameprocess" then
            -- The Office
    office1 = nil
    office2 = nil

    -- The Office (Reserve)
    office1re = nil
    office2re = nil

    -- The Gas supply
    gas1 = nil
    gas2 = nil

    -- Animations
    a1 = nil
    a2 = nil
    a3 = nil
    a4 = nil
    a5 = nil
    a6 = nil
    a7 = nil
    a8 = nil
    a9 = nil
    a10 = nil
    a11 = nil
    a12 = nil
    a13 = nil
    a14 = nil
    a15 = nil
    a16 = nil
    a17 = nil
    a18 = nil
    a19 = nil
    a20 = nil
    b1 = nil
    b2 = nil
    b3 = nil
    b4 = nil
    b5 = nil
    b6 = nil
    b7 = nil
    b8 = nil
    b9 = nil
    b10 = nil
    b11 = nil
    b12 = nil
    b13 = nil
    b14 = nil
    b15 = nil
    b16 = nil
    b17 = nil
    b18 = nil
    b19 = nil
    b20 = nil
    -- Shock
    shockbgleft = nil
    shockbgright = nil

    -- GUI
    bar = nil
    energyicon = nil

    -- Cameras (panoramas)
    cameram = nil 
    cameramp2 = nil
    camera1 = nil 
    camera1p2 = nil
    camera2 = nil 
    camera2p2 = nil
    camera3 = nil 
    camera3p2 = nil
    camera4 = nil 
    camera4p2 = nil
    camera5 = nil 
    camera5p2 = nil
    camera6 = nil 
    camera6p2 = nil
    camera7 = nil 
    camera7p2 = nil
    camera8 = nil 
    camera8p2 = nil
    camera9 = nil 
    camera9p2 = nil
    arrows = nil 

    -- TV Static
    tvs_1 = nil
    tvs_2 = nil
    tvs_3 = nil
    tvs_4 = nil
    tvs_5 = nil
    tvs_base = nil

    scroll = nil
    directionlook = nil
    cameraxy = nil
    whichtaken nil
    dirchange =nil
    cameraname nil
    cnx = nil
    extrasection = nil
    extraname = nil
    animswitch = nil
    timera = nil
    energyamount = nil
    shockusage = nil
    shockbgtrans = nil
    eatimer = nil
    barpos = nil
    nightticks = nil
    nightminutes = nil
    nighthours = nil
    nightvisualminutes = nil
    nightvisualhours = nil
    nightvd = nil
    nightvtt = nil
    gas_stability = nil
    gas_leak_timer = nil
    gas_leak_random = nil
    gas_leak_which = nil
    gas_fix_toggle = nil
    isUp = nil
    tvs_stats = nil
    mappospos = nil

    elseif frame == "static" then
        static1 = nil
	    static1_re = nil
	    static2 = nil
	    static3 = nil

    elseif frame == "effects" then
        whitefullscreen = nil
        blackfullscreen = nil
        whitefstransp = nil
        blackfstransp = nil

    elseif frame == "htp" then
        htp_img = nil

    elseif frame == "ai" then
        ai = nil
        presets = nil
        path = nil
        camerapos = nil
        iitimer = nil
    
    elseif frame == "whatnight" then
        whatnight_txt = nil
        office1 = nil
        menumusic = nil
        nightnum = nil
        nightnum_1 = nil
        nightnum_2 = nil
        nightnum_3 = nil
        nightnum_4 = nil
        nightnum_5 = nil
        nightnum_6 = nil
        nightnum_7 = nil
        whatnight_tr = nil
        whatnight_timer = nil

    elseif frame == "extras" then
        bgEX = nil
        animEX = nil
        animEXre = nil
        jollyEX = nil
        freddyEX = nil
        chicaEX = nil
        bonnieEX = nil
        georgeEX = nil

        extrasection = nil
        extraname = nil

    elseif frame == "loading" then
        loadscreen = nil
    elseif frame == "gameover" then
        hanoob = nil

    elseif frame == "settings" then
        lang_visual = nil
        freddy_visual = nil


    --[[ If the argument is missing
    else
        return false]]

    end
end

    return true
end

-- Launching a frame
--devmode = true
night = 1
--[[savepath = "savefile.txt"
freddyinmenu = false]]
j2_assets("load", "effects")
j2_assets("load", "menu")
j2_assets("load", "static")
dofile("scripts/menu.lua")
--[[j2_assets("load", "effects")
j2_assets("load", "whatnight")
j2_assets("load", "gameprocess")
j2_assets("load", "ai")]]
--j2_assets("load", "gameover")
--dofile("scripts/gameover.lua")
