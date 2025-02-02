


function wpm = netWPM(input_text, text, total_time)

    %{
    returns net_wpm(wpm accounting for errors)
    formula:

        (length of input_text - errors) x 60
        ————————————————————————————————————
                 5   x   time_taken

    %}

    % calculate number of errors and accuracy and unzip them
    [~,errors] = accuracy(input_text,text);

    wpm = ((length(input_text) - errors) * 60) / (5 * total_time);
    
    % return rounded wpm and make sure wpm is x>=0
    if wpm > 0
        wpm = round(wpm);
    else
        wpm = 0;
    end

end