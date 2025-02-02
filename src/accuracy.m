


function [accuracy, errors] = accuracy(inputText, text)
    
    %{
    calculates accuracy of typing speed by comparing
    input_text and text on the basis of number of errors
    %}


    % Convert input strings to character arrays
    inputChars = char(inputText);
    textChars = char(text);
    
    % todo remove anti-cheat

    % Find the length of the shorter string
    minLength = min(length(inputChars), length(textChars));
    
    errors = 0;
    
    % compare each character and count errors
    for i = 1:minLength
        if inputChars(i) ~= textChars(i)
            errors = errors + 1;
        end
    end
    
    % count any extra characters in input text as errors
    if length(inputChars) > length(textChars) || length(inputChars) < length(textChars)
        errors = errors + abs(length(inputChars) - length(textChars));
    end
    

    % calculate accuracy as percentage of correct characters
    accuracy = ((length(textChars) - errors) / length(textChars)) * 100;
end
