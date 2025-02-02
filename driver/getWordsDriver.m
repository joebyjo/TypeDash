clc;
clear;
addpath('../src');




fprintf('\n\nTest 1\n');
words = getWords(7);
fprintf('Expected Output: 7 random non-repeating words\n')
fprintf('Actual Output: %s\n',words)


fprintf('\n\nTest 2\n');
words = getWords(10);
fprintf('Expected Output: 10 random non-repeating words\n')
fprintf('Actual Output: %s\n',words)


fprintf('\n\nTest 3\n');
words = getWords(3);
fprintf('Expected Output: 3 random non-repeating words\n')
fprintf('Actual Output: %s\n',words)

% fprintf(getWords());
% for i in 

