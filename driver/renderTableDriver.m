clc;
clear;
addpath('../src');



fprintf('\n\nTest 1\n');
headers = {'username','Net WPM','Accuracy'};
data = {'xyz','70','100';'abc','90','100';'def','70','110'};
fprintf(renderTable(headers,data))

clear;
fprintf('\n\nTest 2\n');
headers = {'username','Net WPM','Accuracy', 'Errors'};
data = {'xyz','70','100','0';'abc','90','100','0';'def','70','110','0'};
fprintf(renderTable(headers,data))

clear;
fprintf('\n\nTest 3\n');
headers = {'Net WPM','Accuracy', 'Errors'};
data = {'70','100','0';'90','100','0';'70','110','0'};
fprintf(renderTable(headers,data))

clear;
fprintf('\n\nTest 4\n');
headers = {'GameId','UserId','String','UserInput','time taken','NET WPM','gross wpm', 'ACCURACY','errors'};
games = getAllData('games.csv');
headers = {'String','User Input','Time Taken','Net WPM','Gross WPM', 'Accuracy','Errors'};
fprintf('%s',renderTable(headers, games(:, 3:end)));