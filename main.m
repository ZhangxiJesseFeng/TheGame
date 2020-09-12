%% The Game
%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Zhangxi Feng
% Version and dates:
% 
%%%%%%%%%%%%%%%%%%%%%%%
% function main ()

fprintf('Initializing.....\n');
profile = [];

addpath(genpath('CharacterStats'));
addpath(genpath('GameData'));

%% Starting the game
% Welcome message
fprintf(['Hello! Welcome to The Game - a text-based fantasy RPG adventure game.\n',...
      'Let''s first get to know you a bit more.\n']);
profile.charName = input('Tell us your name: ','s');

speciesList = fetchSpecies(1,[]);
fprintf(['\n--------------------------------------\nHello ',profile.charName,'! Nice to meet you!\n',...
    'Next, what is your species? The land of The Game has many species including\n']);
for i = 1:length(speciesList)
    fprintf([num2str(i),'. ',speciesList{i},'\n']);
end
profile.speciesChoice = input(['Each has their own special feats and abilities.\n',...
    'Type their number to select your species or type info-species name\n',...
    'such as info-human to learn more about humans: '],'s');

while (isnan(str2double(profile.speciesChoice)))
    fetchSpecies(2,profile.speciesChoice(6:end));
    profile.speciesChoice = input('Please choose your species or use info- to learn more: ','s');
end

% end