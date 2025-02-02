clc;
clear;


% resetEnvironment();
onStartSetup;


fprintf('\n\nTest 1\n');
data = {'joe byjo','19','joe','1234'};
createUser(data);
fprintf('\nExpected output: data is appended to files\n');
user 


clear;
fprintf('\n\nTest 2\n');
data = {'test','16','test','1234'};
createUser(data);
fprintf('\nExpected output: user data is appended to files\n');

% 

% data = strjoin(data, ',');
% 
% insertData('user_details.csv',data);


% x = getAllData('user_details.csv');
% disp(x(end,:));

% getUserDetails('joe')


% disp(getAllData('user_details.csv'));



% todo check whether data is readable, complete login function