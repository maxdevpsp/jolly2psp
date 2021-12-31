-- phone call
-- loading assets
local textbox = image.load("assets/png/gui/textbox.png")
local bg = image.load("assets/png/cutscenes/phoneguy/bg.png")

-- window table (see menu.lua)
window = {85, 0}
-- variables
night = 1
line = 1
text = "Placeholder"
timer = 0
nexta = false

while true do
	buttons.read()
	bg:blit(window[1],window[2])
	textbox:blit(window[1],window[2] + 190)
	screen.print(window[1] + 18,window[2] + 220,text,0.7)
	screen.print(window[1] + 5,window[2] + 5,timer,0.5)
	if timer < 100 then
		timer = timer + 1
		nexta = false
	end
	if timer >= 100 then
		nexta = true
	end
	if buttons.cross and nexta == true then
		line = line + 1
		timer = 0
	end
	if buttons.square then
		timer = timer + 100
	end
	-- text strings
	if night == 1 then
		if line == 1 then
			text = "Ring... Ring..."
		end
		if line == 2 then
			text = "Ring... Ring..."
		end
		if line == 3 then
			text = "Hallo, Hallo? Uh..."
		end
		if line == 4 then
			text = "Wilkommen in Freddy\nFazbear's Pizza!"
		end
		if line == 5 then
			text = "Wo Phantasie zum leben \nerwacht..."
		end
		if line == 6 then
			text = "Blah blah blah..."
		end
		if line == 7 then
			text = "Wir sind nicht \nverantwortlich für"
		end
		if line == 8 then
			text = "beschädigtes eigentum \noder personen..."
		end
		if line == 9 then
			text = "Blah blah blah..."
		end
		if line == 10 then
			text = "...vermisste personen..."
		end
		if line == 11 then
			text = "Blah blah blah..."
		end
		if line == 12 then
			text = "Tut mir leid wenn ich \ndas vorlesen muss."
		end
		if line == 13 then
			text = "Es ist eine \nrechtliche sache"
		end
		if line == 14 then
			text = "Um..."
		end
		if line == 15 then
			text = "Ich weiß es hört sich \nsehr erschreckent an,"
		end
		if line == 16 then
			text = "aber nichts worüber du \ndir sorgen machen musst."
		end
		if line == 17 then
			text = "Ich habe heute schon \nmeine Arbeit erledigt."
		end
		if line == 18 then
			text = "Und bin jetzt mit \nmeiner Woche fertig."
		end
		if line == 19 then
			text = "Ich weiß, dass es \nnervig sein kann"
		end
		if line == 20 then
			text = "Aber ich wollte diese \nNachricht aufnehmen"
		end
		if line == 21 then
			text = "um dir bei deiner \nersten Nacht zu helfen."
		end
		if line == 22 then
			text = "Wie ich schon gesagt habe, \nnichts worüber du dir \nsorgen machen solltest."
		end
		if line == 23 then
			text = "Du wirst es gut machen."
		end
		if line == 24 then
			text = "Und nun... \n...die Animatronics..."
		end
		if line == 25 then
			text = "Sie wanderten \ntagsüber friedlich herum,"
		end
		if line == 26 then
			text = "Bis zu diesen einen Tag,\nder Bite of '87."
		end
		if line == 27 then
			text = "..."
		end
		if line == 28 then
			text = "...Es ist beeindruckend,\nwie der Körper es schafft..."
		end
		if line == 29 then
			text = "...ohne einen Frontallappen \nzu überleben..."
		end
		if line == 30 then
			text = "Vergiss das einfach, \nder Punkt ist:"
		end
		if line == 31 then
			text = "Jetzt können sie sich den \nganzen Tag frei bewegen."
		end
		if line == 32 then
			text = "Also ist es wichtig sie \nmit der Tür zu stoppen."
		end
		if line == 33 then
			text = "Weil wenn nicht, uh..."
		end
		if line == 34 then
			text = "...gehen sie in \ndein Büro und..."
		end
		if line == 35 then
			text = "könnten dich vielleicht mit \neinem Endoskeleton\nverwechseln"
		end
		if line == 36 then
			text = "und versuchen dich ihn \neinen Anzug zu stopfen"
		end
		if line == 37 then
			text = "das könnte dafür \nsorgen dass du..."
		end
		if line == 38 then
			text = "...starke schmerzen hast\n...und..."
		end
		if line == 39 then
			text = "...stirbst..."
		end
		if line == 40 then
			text = "..."
		end
		if line == 41 then
			text = "Um das zu verhindern,"
		end
		if line == 42 then
			text = "Drücke Dreieck um \ndein Monitor zu öffnen und"
		end
		if line == 43 then
			text = "um zusehen wo sie \nsich befinden."
		end
		if line == 44 then
			text = "Drückst du Dreieck nochmal \nschließt sich der\nMonitor wieder"
		end
		if line == 45 then
			text = "Um..."
		end
		if line == 46 then
			text = "Wenn du sie \nnicht siehst,"
		end
		if line == 47 then
			text = "dann heißt es das sie \nsich sehr nahe an der Tür\nbefinden."
		end
		if line == 48 then
			text = "Halte LINKS oder RECHTS gedrückt\num eine Tür\nzu benutzen,"
		end
		if line == 49 then
			text = "Drücke X um das flur \nlicht zu aktivieren,"
		end
		if line == 50 then
			text = "und Viereck um die \nTür zu schließen."
		end
		if line == 51 then
			text = "Dann verschwinden sie."
		end
		if line == 52 then
			text = "Für eine weile."
		end
		if line == 53 then
			text = "Das reicht erstmal für heute."
		end
		if line == 54 then
			text = "Ich wünche dir viel glück..."
		end
		if line == 55 then
			text = "Oh, und habe ein auge \nauf die Energie."
		end
		if line == 56 then
			text = "Die Energie ist hier\nlimitiert \nalso pass auf!."
		end
		if line == 57 then
			text = "Okay, viel glück."
		end
		if line == 58 then
			dofile("scripts/whatnight.lua")
		end
	end
    screen.flip()
end