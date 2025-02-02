clc;
clear;
addpath('../src');




user = login();

viewRecords(user);


fprintf('\nExpected output: user stats is displayed along with all games played \n');




viewScoreboard();
fprintf('\nExpected output: scoreboard is displayed \n');
