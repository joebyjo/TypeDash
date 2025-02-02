


function wpm = netWPM(inputText, text, totalTime)

    %{
    returns netWPM(wpm accounting for errors)
    formula:

        (length of inputText - errors) x 60
        ————————————————————————————————————
                 5   x   timeTaken

    %}

    % calculate number of errors and accuracy and unzip them
    [~,errors] = accuracy(inputText,text);

    wpm = ((length(inputText) - errors) * 60) / (5 * totalTime);
    
    % return rounded wpm and make sure wpm is x>=0
    if wpm > 0
        wpm = round(wpm);
    else
        wpm = 0;
    end

end