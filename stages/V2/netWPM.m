


function wpm = netWPM(input_text, text, total_time)

    errors = accuracy(input_text,text);

    wpm = ((length(input_text) - errors) * 60) / (5 * total_time);
    
    if wpm > 0
        wpm = round(wpm);
    else
        wpm = 0;
    end

end