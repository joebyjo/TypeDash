clc;
clear;
addpath('../src');


fprintf('\n\nTest 1\n');
user = getUserDetails('joe');
data = typingSpeed(user);
disp(data);
fprintf('Expected Output: checks typing speed and returns scores and data\n');


fprintf('\n\nTest 2\n');
user = getUserDetails('joe');
data = typingSpeed(user);
disp(data);
fprintf('Expected Output: checks typing speed and returns scores and data\n');

fprintf('\n\nTest 3\n');
user = getUserDetails('joe');
data = typingSpeed(user);
disp(data);
fprintf('Expected Output: checks typing speed and returns scores and data\n');

