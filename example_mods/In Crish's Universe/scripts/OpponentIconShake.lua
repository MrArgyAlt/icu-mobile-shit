-- by MrArgy lol
DaShake = 5

function onCreatePost()
  iconYLOL = getProperty('iconP2.y')
end
function onUpdatePost()
  if dadName == 'basya-mad' then
    if getProperty('health') > 1.6 then
        setProperty('iconP2.x', getProperty('iconP2.x') + getRandomInt(-DaShake, DaShake))
        setProperty('iconP2.y', getRandomInt(iconYLOL, iconYLOL + DaShake))
        end
    end
end
