while true do
	buttons.read()
	white = color.new(255,255,255)
	black = color.new(0,0,0)
	htp_img:blit(0,0)
	screen.flip()
	if buttons.cross then
		j2_jump(6, true, true)
	end
end