clc;
clear;

onStartSetup;
% user_id	name	age	username	password

data = {'joe','16','joe','a1234'};

% data = strjoin(data, ',');
% 
% insertData('user_details.csv',data);

createUser(data);




getAllData('user_details.csv')


% todo check whether data is readable, complete login function