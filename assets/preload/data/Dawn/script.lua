local def_cam_zoom = 0.7

function onStepHit()
    if curStep == 448 or curStep == 832 or curStep == 960 then
        setProperty('defaultCamZoom', 1.0)
    elseif curStep == 576 or curStep == 864 or curStep == 976 then
        setProperty('defaultCamZoom', def_cam_zoom)
    end
end