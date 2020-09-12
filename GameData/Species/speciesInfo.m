function info = speciesInfo(speciesChoice)
% Extract information for each species and put them in a struct
% to be printed in another function. Also used by other functions for 
% bonuses and traits.

info = [];

switch (lower(speciesChoice))
    
    case 'human'
        info.bonuses = [ 1  1  1  1  1  1];
        info.bonusText = {'Strength: +1, ','Dexterity: +1, ','Intelligence: +1, ','Constitution: +1, ','Wisdom: +1, ','Luck: +1'};
    case 'orc'
        info.bonuses = [ 5  1 -2  5 -1 -2];
        info.bonusText = {'Strength: +5, ','Dexterity: +1, ','Intelligence: -2, ','Constitution: +5, ','Wisdom: -1, ','Luck: -2'};
    case 'elf'
        info.bonuses = [-1  3  4 -2  1  1];
        info.bonusText = {'Strength: -1, ','Dexterity: +3, ','Intelligence: +4, ','Constitution: -2, ','Wisdom: +1, ','Luck: +1'};
    case 'dwarf'
        info.bonuses = [-1 -2  1  3  2  3];
        info.bonusText = {'Strength: -1, ','Dexterity: -2, ','Intelligence: +1, ','Constitution: +3, ','Wisdom: +2, ','Luck: +3'};
    case 'undead'
        info.bonuses = [-2  2  2 -1  4  1];
        info.bonusText = {'Strength: -2, ','Dexterity: +2, ','Intelligence: +2, ','Constitution: -1, ','Wisdom: +4, ','Luck: +1'};
end

end