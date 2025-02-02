clc;
clear;

addpath('../src');


% text = 'album blade future farm high camel ruling';
% inputText = 'album blade future farm high camel ruling';
% [accuracy,errors] = accuracy(inputText,text);
% fprintf('%.1f     %d',accuracy,errors);

fprintf('\n\nTest 1\n');
text = 'album blade future farm high camel ruling';
inputText = 'album blade future farm high camel ruling';
[accuracy,errors] = accuracy(inputText,text);
fprintf('Expected Output: [100, 0]\n')
fprintf('Actual Output: [%.1f, %d]\n',accuracy,errors);

clear;
fprintf('\n\nTest 2\n');
text = 'album blade future farm high camel ruling';
inputText = 'album blade future farm high camel rulinggg';
[accuracy,errors] = accuracy(inputText,text);
fprintf('Expected Output: [95.1, 2]\n')
fprintf('Actual Output: [%.1f, %d]\n',accuracy,errors);


clear;
fprintf('\n\nTest 3\n');
text = 'album blade future farm high camel ruling';
inputText = 'album blde future farm high camel rulig';
[accuracy,errors] = accuracy(inputText,text);
fprintf('Expected Output: [19.5, 33]\n')
fprintf('Actual Output: [%.1f, %d]\n',accuracy,errors);




