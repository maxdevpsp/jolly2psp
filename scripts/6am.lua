while true do
	buttons.read()

    font.setdefault(screenmatrix_fnt)
	
    onefnaf_printcentered(120, time_txt, 3)
	onefnaf_printcentered(160, sleep_txt,1)

    frame_6am_timer = frame_6am_timer + 0.5

    -- 6 AM Anim
    if frame_6am_timer == 1 then
        time_txt = "5:5 "
    elseif frame_6am_timer == 20 then
        time_txt = "5:  "
    elseif frame_6am_timer == 40 then
        time_txt = "5   "
    elseif frame_6am_timer == 60 then
        time_txt = "    "
    elseif frame_6am_timer == 100 then
        time_txt = "6   "
    elseif frame_6am_timer == 120 then
        time_txt = "6:  "
    elseif frame_6am_timer == 140 then
        time_txt = "6:0 "
    elseif frame_6am_timer == 160 then
        time_txt = "6:00"
    end

    -- Sleep Anim
    if frame_6am_timer == 5 then
        sleep_txt = "shift's ov  "
    elseif frame_6am_timer == 15 then
        sleep_txt = "shift's     "
    elseif frame_6am_timer == 30 then
        sleep_txt = "shi         "
    elseif frame_6am_timer == 45 then
        sleep_txt = "            "
    elseif frame_6am_timer == 60 then
        sleep_txt = "time          "
    elseif frame_6am_timer == 75 then
        sleep_txt = "time to       "
    elseif frame_6am_timer == 90 then
        sleep_txt = "time to sle   "
    elseif frame_6am_timer == 105 then
        sleep_txt = "time to sleep!"
    end
    screen.flip()
end