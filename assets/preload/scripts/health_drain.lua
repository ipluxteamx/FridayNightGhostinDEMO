function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        if songName == 'fantomatique' then
            setProperty('health', health - 0.0325);
        else
            setProperty('health', health - 0.0125);
        end
    end
end