%% The Game
%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Zhangxi Feng
% Version and dates:
% 
%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Initializing.....');
addpath(genpath('CharacterStats'));
addpath(genpath('GameData'));

%% Starting the game
% Welcome message
fprintf(['Hello! Welcome to The Game - a text-based fantasy RPG adventure game.\n',...
      'Let''s first get to know you a bit more.\n']);
charName = input('Tell us your name:\n','s');

fprintf(['\n--------------------------------------\nHello ',charName,'! Nice to meet you!\n',...
    'Next, what is your species? The land of The Game has many species including\n',...
    'human, orc, elf, dwarf, and undead.\n']);
species = input('Type info-species name to learn more about each one or\nchoose directly by typing the name of the species:\n','s');

species = speciesInfo(species);