function species = fetchSpecies(iopt,speciesChoice)

if (iopt == 1)
    species = {'human','orc','elf','dwarf','undead'};
elseif (iopt == 2)
    species = speciesInfo(speciesChoice);
    fprintf(['The ',speciesChoice,' race has the following features:\n',...
        'Stat bonuses: ']);
    for i = 1:6
        fprintf(species.bonusText{i});
    end
    fprintf('\n');
end

end