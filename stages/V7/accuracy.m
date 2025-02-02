


function [accuracy, errors] = accuracy(input_text, text)
    % Convert input strings to character arrays
    input_chars = char(input_text);
    text_chars = char(text);
    
    % todo remove anti-cheat

    % Find the length of the shorter string
    min_length = min(length(input_chars), length(text_chars));
    
    % Initialize count of errors
    errors = 0;
    
    % Compare each character and count errors
    for i = 1:min_length
        if input_chars(i) ~= text_chars(i)
            errors = errors + 1;
        end
    end
    
    % Count any extra characters in input text as errors
    if length(input_chars) > length(text_chars)
        errors = errors + (length(input_chars) - length(text_chars));
    end
    
    % Calculate accuracy as percentage of correct characters
    accuracy = ((min_length - errors) / min_length) * 100;
end
