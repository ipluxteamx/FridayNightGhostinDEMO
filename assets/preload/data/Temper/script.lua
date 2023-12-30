local def_cam_zoom = 0.7

function onStepHit()
    if curStep == 512 then
        setProperty('defaultCamZoom', 1.0)
    end
end