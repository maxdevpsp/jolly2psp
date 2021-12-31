
-- window table (see menu.lua)
window = {85, 0}
y = 280

while true do
	buttons.read()
	rama:blit(0,0)
	y = y - 0.5
	screen.print(window[1] + 5,y,"FNaF Pocket Horror\nPortable v. "..version.."\n \nOriginal game by:\nNam Elprup\n \nAll the visual content\nbelongs to him.\n \nThe game ported to\nPSP/PSVITA by maxlmao.\n \nSoft used:\n \nOneLua v4R1\nNotepad++\nPaint.net\nWinRAR\n \nThanks to:\n \nleon123mlg - testing and\ntranslating.\nFreDev - explaining\nabout animatronics\nAI.\n \nSpecial people:\n \n- Spidogriz\n- SchurOWO\n- SatanicBug\n- FreDev\n- zanga\n- AnimationStuff11\n- juldis\n- leon123mlg",0.9)
	screen.flip()
	if buttons.cross then
		dofile("scripts/settings.lua")
	end
end