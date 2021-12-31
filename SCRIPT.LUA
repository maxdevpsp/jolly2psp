-- Script made by maxlmao
-- The game is not belong to me and will be taken down upon developer's request.
-- Fully porting Jolly 2 to PSP using Lua
-- Comments added: 31.08.2021 15:12
-- First of all, we are loading assets
loaded = false

if loaded == false then
    --[[ Loading menu stuff
    bgjolly = image.load("assets/png/title/jolly/1.png")
    bgjolly1 = image.load("assets/png/title/jolly/1.png")
    bgjolly1t = image.load("assets/png/title/jolly/1t.png")
    bgjolly2 = image.load("assets/png/title/jolly/2.png")
    bgjolly3 = image.load("assets/png/title/jolly/3.png")
    bgjolly4 = image.load("assets/png/title/jolly/4.png")
    logo_menu = image.load("assets/png/title/logo2.png")
    logo_menu2 = image.load("assets/png/title/logo3.png")
    wheel = image.load("assets/png/title/wheel.png")
    pointer_menu = image.load("assets/png/title/pointer.png")
    text_m = image.load("assets/png/title/yesimlazy.png")

    -- Loading game process stuff

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

    -- Loading jumpscares
    subject = image.load("assets/png/cutscenes/jumpscares/jolly/jolly1.png")
    subjectbg = image.load("assets/png/cutscenes/jumpscares/tablet/502.png")

    --bgjs1 = image.load("assets/png/cutscenes/jumpscares/tablet/484.png")
	bgjs2 = image.load("assets/png/cutscenes/jumpscares/tablet/486.png")
	bgjs3 = image.load("assets/png/cutscenes/jumpscares/tablet/488.png")
	bgjs4 = image.load("assets/png/cutscenes/jumpscares/tablet/490.png")
	bgjs5 = image.load("assets/png/cutscenes/jumpscares/tablet/492.png")
	bgjs6 = image.load("assets/png/cutscenes/jumpscares/tablet/494.png")
	bgjs7 = image.load("assets/png/cutscenes/jumpscares/tablet/496.png")
	bgjs8 = image.load("assets/png/cutscenes/jumpscares/tablet/498.png")
	bgjs9 = image.load("assets/png/cutscenes/jumpscares/tablet/500.png")
	bgjs10 = image.load("assets/png/cutscenes/jumpscares/tablet/502.png")
	bgjs11 = image.load("assets/png/cutscenes/jumpscares/tablet/504.png")
	bgjs12 = image.load("assets/png/cutscenes/jumpscares/tablet/506.png")
	bgjs13 = image.load("assets/png/cutscenes/jumpscares/tablet/508.png")
	bgjs14 = image.load("assets/png/cutscenes/jumpscares/tablet/510.png")
	bgjs15 = image.load("assets/png/cutscenes/jumpscares/tablet/512.png")
	bgjs16 = image.load("assets/png/cutscenes/jumpscares/tablet/514.png")]]

    --[[jollyjs1 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly1.png")
	jollyjs2 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly2.png")
	jollyjs3 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly3.png")
	jollyjs4 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly4.png")
	jollyjs5 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly5.png")
	jollyjs6 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly6.png")
	jollyjs7 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly7.png")
	jollyjs8 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly8.png")
	jollyjs9 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly9.png")
	jollyjs10 = image.load("assets/png/cutscenes/jumpscares/jolly/jolly10.png")

    -- Loading extras stuff (not extra, extra screen ok)
    bgEX = image.load("assets/png/extras/bg.png")
    animEX = image.load("assets/png/extras/pixel.png")
    animEXre = image.load("assets/png/extras/pixel.png")
    jollyEX = image.load("assets/png/extras/jolly.png")
    freddyEX = image.load("assets/png/extras/freddy.png")
    chicaEX = image.load("assets/png/extras/chica.png")
    bonnieEX = image.load("assets/png/extras/bonnie.png")
    georgeEX = image.load("assets/png/extras/george.png")

    -- Loading other things for the frames that are left
    -- EMPTY LOOOOL

    -- Loading general stuff (things that can be used by many frames)
    -- pointer = image.load("assets/png/gui/pointer.png")
    tickoff = image.load("assets/png/gui/buttons/tickoff.png")
    tickon = image.load("assets/png/gui/buttons/tickon.png")
    but1 = image.load("assets/png/gui/buttons/cross.png")
    whitefullscreen = image.load("assets/png/gui/white480x272.png")
    blackfullscreen = image.load("assets/png/gui/black480x272.png")

    static1 = image.load("assets/png/gui/static/1.png")
    static1_re = image.load("assets/png/gui/static/1.png")
    static2 = image.load("assets/png/gui/static/2.png")
    static3 = image.load("assets/png/gui/static/3.png")

    -- Loading sounds
    -- menusound = sound.load("assets/wav/Menu_Theme.wav")
    menumusic = sound.load("assets/wav/risenc.titlesong.wav")

    -- Loading variables
    timer = 0
    night = 1
    isUp = 0
    nighttimer = 0
    iitimer = 0
    waste = 1
    towaste = 0
    jstoggle = true
    frtimer = 0
    attext = "Placeholder"
    usage = {0, 0, 0}
    statictimer = 0
    transp = {0, 0}
    bgtimer = 0
    bgdecide = 0
    bgtrans = 0
    bgwait = {0, 0, 0, 0, 0}
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
    jstimer = 0
    jsframe = 0
    intro_statictimer = 0
    intro_frametimer = 0
    whitefstransp = 255
    blackfstransp = 255
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
    -- Functions
    function sleep(ms)
        local b = os.clock() * 1000
        while os.clock() * 1000 - b <= ms do
        end
    end
    color.loadpalette()
    -- Some other things
    version = "Dev. 1.5"
    devmode = true
    -- Getting night
    --night = 0
	nread = io.open("assets/data/night.lua", "r") -- Открыть файл для чтения
	if nread then                               -- Проверить, что он открылся
		night = nread:read()                    -- Прочитать первую строку в переменную x (без преобразования в число)                        -- Прочитать вторую строку в переменную y (тоже без преобразования)
		nread:close()                           -- Закрыть файл
	end
    -- AI Tables
    ai = {0, 0, 0, 0}
    presets = {0, 0, 20, 0}
    path = {0, 5, 0, 0, 0}
    camerapos = {0, 0, 0, 0, 0, 0, 0, 0}]]
    -- And finally...
    dofile("SCRIPT_V3.lua")
end
