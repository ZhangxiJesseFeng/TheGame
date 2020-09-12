function exp = expGain(grade,curExp,dmg,type)
    % This function modifies the experience gain
    % forbidden is 100 times harder to lvl than base
    % forbidden is 50 times harder to lvl than school
    % forbidden is 10 times harder to lvl than rare
    % 1 dmg = 1 exp
    
    % modifying constants
    baseMod = 100;
    schoolMod = 50;
    rareMod = 10;
    forbiddenMod = 1;
    
    if (type == 1)
        if (grade == 4)
            exp = curExp + dmg*forbiddenMod;
        elseif (grade == 3)
            exp = curExp + dmg*rareMod;
        elseif (grade == 2)
            exp = curExp + dmg*schoolMod;
        else
            exp = curExp + dmg*baseMod;
        end
    else
        exp = curExp + dmg;
    end

end