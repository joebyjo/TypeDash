clc;
clear;
addpath('../src');


% {strjoin(string, ' '),userInput,timeTaken, netWPM_, grossWPM_, accuracy_, errors}

fprintf('\n\nTest 1\n');
user = getUserDetails('joe');
data = typingSpeed(user);
updateUserData(user,data);
fprintf('Expected Output: updates user data with new data\n')

clear;
fprintf('\n\nTest 1\n');
user = getUserDetails('joe');
data = typingSpeed(user);
updateUserData(user,data);
fprintf('Expected Output: updates user data with new data\n')

clear;
fprintf('\n\nTest 1\n');
user = getUserDetails('joe');
data = typingSpeed(user);
updateUserData(user,data);
fprintf('Expected Output: updates user data with new data\n')