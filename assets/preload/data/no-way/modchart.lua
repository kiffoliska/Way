function start (song)
	print("Song: " .. song .. " BPM " .. bpm .. " downscroll: " .. downscroll)
end

function update (elapsed)
    if difficulty == 2 then
        local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7 do
            setActorY(defaultStrum0Y + 10 * math.cos((currentBeat + i*0.25) * math.pi), i)
        end
    end
end

function stepHit (step) --way screaming
    if step == 481 then
        setCamZoom(1.3)
    end

    if step == 925 then
        setCamZoom(1.4)
    end
end

function beatHit (beat) --zooming cuz why not
    if beat then
        for i = 0.9, 0.9, 0.9 do --current camera zoom????? idk
            setCamZoom(0.94) --what zoom set to i think
        end
    end
end

function keyPressed (key)
end