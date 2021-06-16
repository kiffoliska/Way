function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " donwscroll: " .. downscroll)
end

function update (elapsed)
end

function stepHit (step) --way screaming
    if step == 481 then
        setCamZoom(1.3)
    end

    if step == 925 then
        setCamZoom(1.3)
    end
end

function beatHit (beat) --zooming cuz why not
    if beat then
        for i = 0.9, 0.9, 0.9 do --current camera zoom????? idk
            setCamZoom(0.92) --what zoom set to i think
        end
    end
end