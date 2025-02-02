clc;
clear;

user = getUserDetails('joe');

% {strjoin(string, ' '),userInput,timeTaken, netWPM_, grossWPM_, accuracy_, errors}
data = typingSpeed(user);


updateUserData(user,data);