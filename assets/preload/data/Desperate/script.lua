local def_cam_zoom = 0.7

function onStepHit()
    if curStep == 152 or curStep == 216 then
        setProperty('defaultCamZoom', 0.9)
    elseif curStep == 160 or curStep == 224 then
        setProperty('defaultCamZoom', def_cam_zoom)
    end
end