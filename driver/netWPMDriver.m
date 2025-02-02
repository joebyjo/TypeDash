clc;
clear;

% Need to do

fprintf('\n\nTest 1\n');
data = netWPM('puzzling bear employ flame entertain','puzzling bear employ flame entertain',5.0);
fprintf('Expected Output: 86\n');
fprintf('Actual Output: %d\n',data);

fprintf('\n\nTest 2\n');
data = netWPM('employ entertain puzzling bear flame','employ entertain puzzling bear flame',4.0);
fprintf('Expected Output: 108\n');
fprintf('Actual Output: %d\n',data);


fprintf('\n\nTest 3\n');
data = netWPM('puzzling bear employ flame entertain','puzzling bear employ flame entertain',6.0);
fprintf('Expected Output: 72\n');
fprintf('Actual Output: %d\n',data);



% 
% time1 = datetime('now')
% 
% pause(4.5);
% time2 = datetime('now')
% 
% 
% x = milliseconds(time2-time1);
% 
% disp(x/1000)