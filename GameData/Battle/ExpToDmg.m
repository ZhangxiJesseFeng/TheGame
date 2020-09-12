function dmg = ExpToDmg(exp,grade,type)
    % This function translates experience of a skill into damage
    % exp is the current exp of the skill
    % grade is the skill's grade are: basic, school, rare, forbidden
    % type defines an attacking or defending skill
    
    % defining constants
    % damage ratio:
    % 100 base = 1 forbidden, 60 school = 1 forbidden
    % 10 rare = 1 forbidden
    baseLvl = 1000/100;
    schoolLvl = 1000/60;
    rareLvl = 1000/10;
    forbiddenLvl = 1000;
    
    baseMod = 1/100;
    schoolMod = 1/60;
    rareMod = 1/10;
    forbiddenMod = 1;
    
    defMod = 1000;
    
    if (type == 1)
        
        if (grade == 4)
            lvlExp = forbiddenLvl;
            curMod = forbiddenMod;
        elseif (grade == 3)
            lvlExp = rareLvl;
            curMod = rareMod;
        elseif (grade == 2)
            lvlExp = schoolLvl;
            curMod = schoolMod;
        else
            lvlExp = baseLvl;
            curMod = baseMod;
        end

        dmg = lvlExp + exp*curMod;
        
    else
        
        % this is actually dmg reduction from the defensive skill
        dmg = exp*defMod;
        
    end
end