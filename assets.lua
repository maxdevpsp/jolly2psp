asset = {}
function asset.load(fid)
    if fid == "base" then -- Basic assets (always loaded in)
        -- Static and its settings
        staticAssets = {
            
            -- Base image for rendering
            base = image.load("assets/png/gui/static/1.png"),

            -- Animation related assets
            animation = {
                image.load("assets/png/gui/static/1.png"),
                image.load("assets/png/gui/static/2.png"),
                image.load("assets/png/gui/static/3.png")
            },
            sTimer = 0,
            curFrame = 1
        }

        -- Button images
        buttonsSheet = image.load("assets/png/gui/buttonsSheet.png", 32, 32)
    elseif fid == "start" then
        startscreen = image.load("assets/png/gui/startscreen.png")
        logo_menu2 = image.load("assets/png/title/logo3.png")
        deadScreen = image.load("assets/png/cutscenes/gameover/ded.png")
        
        -- Flipping dead screen Jolly
        deadScreen:fliph()
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

        -- Ready for Fedie?
	    bgfr1 = image.load("assets/png/title/freddy/1.png")
	    bgfr1t = image.load("assets/png/title/freddy/1t.png")
	    bgfr2 = image.load("assets/png/title/freddy/2.png")
	    bgfr3 = image.load("assets/png/title/freddy/3.png")
	    bgfr4 = image.load("assets/png/title/freddy/4.png")

	    logo_menu2 = image.load("assets/png/title/logo3.png")
	    pointer_menu = image.load("assets/png/title/pointer.png")
        pointer_s = image.load("assets/png/gui/pointer.png")
	    text_m = image.load("assets/png/title/yesimlazy.png")

        menuChrAnim = {
            chr = {
                -- Jolly
                {
                    image.load("assets/png/title/jolly/1.png"), 
                    image.load("assets/png/title/jolly/2.png"), 
                    image.load("assets/png/title/jolly/3.png"), 
                    image.load("assets/png/title/jolly/4.png")
                },
                -- Freddy
                {
                    image.load("assets/png/title/freddy/1.png"), 
                    image.load("assets/png/title/freddy/2.png"), 
                    image.load("assets/png/title/freddy/3.png"), 
                    image.load("assets/png/title/freddy/4.png")
                }
                -- Chica (not here cry about it)
            },
            config = {
                switchMode = 0
            },
            acting = {
                currentChr = 1,
                switchTimer = 0,
                twistNum = 1,
                twistTimer = 0,
                twistResetTimer = 0
            }
        }

        bgtimer = 0
        bgdecide = 1
        bgtrans = 0
        bgwait = 0
        bgchange = 0
        bgstate = 1
        menuChosen = 1
        pointerY = 65

        menumusic = sound.load("assets/wav/risenc.titlesong.wav")
    elseif fid == 4 then
        logo_menu2 = image.load("assets/png/title/logo3.png")
    elseif fid == 5 then
        htp_img = image.load("assets/png/gui/htp_new_0.png")
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
        a5 = image.load("assets/png/gameprocess/office/anim/3_1.png")
        a6 = image.load("assets/png/gameprocess/office/anim/3_2.png")
        a9 = image.load("assets/png/gameprocess/office/anim/5_1.png")
        a10 = image.load("assets/png/gameprocess/office/anim/5_2.png")
        a13 = image.load("assets/png/gameprocess/office/anim/7_1.png")
        a14 = image.load("assets/png/gameprocess/office/anim/7_2.png")
        a17 = image.load("assets/png/gameprocess/office/anim/9_1.png")
        a18 = image.load("assets/png/gameprocess/office/anim/9_2.png")
        a19 = image.load("assets/png/gameprocess/office/anim/10_1.png")
        a20 = image.load("assets/png/gameprocess/office/anim/10_2.png")

        b1 = image.load("assets/png/gameprocess/office/anim/anim2/1_1.png")
        b2 = image.load("assets/png/gameprocess/office/anim/anim2/1_2.png")
        b5 = image.load("assets/png/gameprocess/office/anim/anim2/3_1.png")
        b6 = image.load("assets/png/gameprocess/office/anim/anim2/3_2.png")
        b9 = image.load("assets/png/gameprocess/office/anim/anim2/5_1.png")
        b10 = image.load("assets/png/gameprocess/office/anim/anim2/5_2.png")
        b13 = image.load("assets/png/gameprocess/office/anim/anim2/7_1.png")
        b14 = image.load("assets/png/gameprocess/office/anim/anim2/7_2.png")
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

        tvstaticanim = {
            tvs_1,
            tvs_2,
            tvs_3,
            tvs_4,
            tvs_5
        }

        debuganimicons = image.load("assets/png/gameprocess/office/monitor/debuganimicons.png", 32, 32)

        scroll = {0, 2} -- Office scroll (x, speed)
        scrolllimits = {-1, -85} -- Limits of office scroll
        directionlook = 0
        camerascrollx = 0
        whichtaken = 0
        dirchange = 0
        cameraname = "CameraNameCanBeReallyLongImNotJoking"
        extrasection = {0, false, 0}
        extraname = ""
        animswitch = {false, false, false, false}
        timera = 0
        energyamount = {6, 6}
        shockusage = {false, false}
        shockbgtrans = {0, 0}
        eatimer = {0, 0}
        barpos = {
            left = {25, 41, 57, 73, 89, 105},
            right = {441, 425, 409, 393, 377, 361}
        }
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
        isUp = 0
        tvs_stats = {0, 1}
        mappospos = {0, 0}
        introState = 0
        introscreentransp = 255
        intronighttransp = 0
        ai = {
            timers = {0, 0, 0, 0, 0},
            aiGen = {0, 0, 0, 0, 0},
            presets = {0, 0, 0, 0, 0},
            path = {0, 0, 0, 0, 0}
        }
        debugAnimIconsPos = {
            jolly = {
                {
                    x = 55, 
                    y = 4
                },
                {
                    x = 4, 
                    y = 3
                },
                {
                    x = 22, 
                    y = 62
                },
                {
                    x = 91, 
                    y = 78
                },
                {
                    x = 92, 
                    y = 121
                },
                {
                    x = 85, 
                    y = 148
                }
            },
            george = {
                {
                    x = 80, 
                    y = 4
                },
                {
                    x = -8, 
                    y = 1
                },
                {
                    x = -12, 
                    y = 66
                },
                {
                    x = 9, 
                    y = 132
                },
                {
                    x = 17, 
                    y = 145
                }
            },
            bonnie = {
                {
                    x = 86, 
                    y = 40
                },
                {
                    x = 92, 
                    y = 72
                },
                {
                    x = 94, 
                    y = 121
                },
                {
                    x = 89, 
                    y = 143
                }
            }
        }
        cameras = {
            {
                name = "Cargo Area 1",
                images = {camera1, camera1p2},
                pointpos = {410, 93}
            },
            {
                name = "Cargo Area 2",
                images = {camera2, camera2p2},
                pointpos = {440, 136}
            },
            {
                name = "2nd Class Lounge",
                images = {camera3, camera3p2},
                pointpos = {357, 90}
            },
            {
                name = "Air Vent",
                images = {camera4, camera4p2},
                pointpos = {337, 157}
            },
            {
                name = "2nd Class Hallway",
                images = {camera5, camera5p2},
                pointpos = {377, 167}
            },
            {
                name = "3rd Class Entrance 2",
                images = {camera6, camera6p2},
                pointpos = {446, 164}
            },
            {
                name = "3rd Class Hallway 1",
                images = {camera7, camera7p2},
                pointpos = {366, 219}
            },
            {
                name = "3rd Class Entrance 1",
                images = {camera8, camera8p2},
                pointpos = {415, 187}
            },
            {
                name = "3rd Class Hallway 2",
                images = {camera9, camera9p2},
                pointpos = {445, 218}
            }
        }
        animationToTabletP1 = {a1, a5, a9, a13, a17, a19}
        animationToTabletP2 = {a2, a6, a10, a14, a18, a20}
        animationFromTabletP1 = {a19, a17, a13, a9, a5, a1}
        animationFromTabletP2 = {a20, a18, a14, a10, a6, a2}

        animationToGasP1 = {b1, b5, b9, b13, b17, b19}
        animationToGasP2 = {b2, b6, b10, b14, b18, b20}
        animationFromGasP1 = {b19, b17, b13, b9, b5, b1}
        animationFromGasP2 = {b20, b18, b14, b10, b6, b2}
        currentAnimFrame = 0

        officeamb = sound.load("assets/wav/ambience.mp3")
        cameraamb = sound.load("assets/wav/camera_fx.mp3")
        runslowsnd = sound.load("assets/wav/run slow.mp3")
        doorshocksnd = sound.load("assets/wav/fry.mp3")
        cameraswitchsnd = sound.load("assets/wav/tv change channel.mp3")
        menumusic = sound.load("assets/wav/risenc.titlesong.wav")
    end
end

function asset.jumpscarejump(killer)
    collectgarbage("collect")

    if killer == "jolly" then
        killeranim = {
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly1.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly2.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly3.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly4.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly5.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly6.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly7.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly8.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly9.png"),
            image.load("assets/png/cutscenes/jumpscares/jolly/jolly10.png")
        }
        currentkiller = "jolly"
        jumpframesamount = 10
        jumpanimtostop = 3
    elseif killer == "george" then
        killeranim = {
            image.load("assets/png/cutscenes/jumpscares/george/532.png"),
            image.load("assets/png/cutscenes/jumpscares/george/534.png"),
            image.load("assets/png/cutscenes/jumpscares/george/536.png"),
            image.load("assets/png/cutscenes/jumpscares/george/538.png"),
            image.load("assets/png/cutscenes/jumpscares/george/540.png"),
            image.load("assets/png/cutscenes/jumpscares/george/542.png"),
            image.load("assets/png/cutscenes/jumpscares/george/545.png"),
            image.load("assets/png/cutscenes/jumpscares/george/547.png"),
            image.load("assets/png/cutscenes/jumpscares/george/549.png"),
            image.load("assets/png/cutscenes/jumpscares/george/551.png")
        }
        currentkiller = "george"
        jumpframesamount = 10
        jumpanimtostop = 4
    elseif killer == "freddy" then
        killeranim = {
            image.load("assets/png/cutscenes/jumpscares/freddy/424.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/429.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/431.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/433.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/435.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/438.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/560.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/562.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/564.png"),
            image.load("assets/png/cutscenes/jumpscares/freddy/566.png")
        }
        currentkiller = "freddy"
        jumpframesamount = 10
        jumpanimtostop = 4
    elseif killer == "chica" then
        killeranim = {
            image.load("assets/png/cutscenes/jumpscares/chica/453.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/462.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/464.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/466.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/468.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/470.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/472.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/474.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/476.png"),
            image.load("assets/png/cutscenes/jumpscares/chica/480.png")
        }
        currentkiller = "chica"
        jumpframesamount = 10
        jumpanimtostop = 4
    elseif killer == "bonnie" then
        killeranim = {
            image.load("assets/png/cutscenes/jumpscares/bonnie/218.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/479.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/515.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/518.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/520.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/522.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/524.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/526.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/528.png"),
            image.load("assets/png/cutscenes/jumpscares/bonnie/531.png")
        }
        currentkiller = "bonnie"
        jumpframesamount = 10
        jumpanimtostop = 4
    end

    killeranimstate = {0, 1} -- Timer, Frame
    killeranimbase = image.load("assets/png/cutscenes/jumpscares/jolly/jolly10.png")
    jollyjumploop = 0
    freddyjumploop = 0

    scaresnd = sound.load("assets/wav/XScare.mp3")

    dofile("scripts/jumpscare.lua")
end

return asset