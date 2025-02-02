clc;
clear;

headers = {'GameId','UserId','String','UserInput','time taken','NET WPM','gross wpm', 'ACCURACY','errors'};

games = getAllData('games.csv');

headers = {'String','User Input','Time Taken','Net WPM','Gross WPM', 'Accuracy','Errors'};
fprintf('%s',renderTable(headers, games(:, 3:end)));



