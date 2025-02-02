clc;
clear;



fprintf('\n\nTest 1\n');
data = grossWPM('puzzling bear employ flame entertain',5.0);
fprintf('Expected Output: 86\n');
fprintf('Actual Output: %d\n',data);

fprintf('\n\nTest 2\n');
data = grossWPM('employ entertain puzzling bear flame',4.0);
fprintf('Expected Output: 108\n');
fprintf('Actual Output: %d\n',data);


fprintf('\n\nTest 3\n');
data = grossWPM('puzzling bear employ flame entertain',6.0);
fprintf('Expected Output: 72\n');
fprintf('Actual Output: %d\n',data);
