clc;
clear;


% main
onStartSetup;

% todo input validation to prevent csv file breaking


fprintf('\n\nTest 1\n');
data = login();
fprintf('Expected Output: Data of logged in user\n');
fprintf('Actual Output: %s\n',string(data));

clear;
fprintf('\n\nTest 2\n');
data = login();
fprintf('Expected Output: Data of logged in user\n');
fprintf('Actual Output: %s\n',string(data));

clear
fprintf('\n\nTest 3\n');
data = login();
fprintf('Expected Output: Data of logged in user\n');
fprintf('Actual Output: %s\n',string(data));


% startArt('Username: Joe');






