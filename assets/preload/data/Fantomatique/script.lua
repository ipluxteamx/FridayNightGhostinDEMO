function onCreatePost()
    setPropertyFromClass("openfl.Lib", "application.window.title", "FANTOMATIQUE ~ A LAST ATTEMPT AT MAKING IT BETTER");
end

function onStepHit()
    if curStep % 4 == 0 then
        doTweenY('rrr', 'camHUD', -6, stepCrochet*0.002, 'circOut')
        doTweenY('rtr', 'camGame.scroll', 8, stepCrochet*0.002, 'sineIn')
    end
    if curStep % 4 == 2 then
        doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
        doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
    end
end

