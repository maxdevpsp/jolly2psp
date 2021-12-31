-- window table (see menu.lua)
window = {85, 0}

while true do
	buttons.read()
	screen.print(window[1],window[2] + 50,"GUT GEMACHT!",1.2)
	screen.print(window[1],window[2] + 70,"Sie haben gerade die Demo-Nacht\nvon FNaF Pocket Horror Portable\nbeendet.\nWenn es Ihnen gefallen hat,\nkönnen Sie\ndie Nacht erneut beginnen\noder auf die\nVollversion warten.",0.8)
	screen.print(window[1],window[2] + 230,"Drücke X, um das Spiel neu\nzu starten.",0.8)
	screen.flip()
	if buttons.cross then
		dofile("scripts/intro.lua")
	end
end