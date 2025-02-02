

function wpm = grossWPM(input_text, total_time)

    
    wpm = (length(input_text) * 60) / (5 * total_time);
    wpm = round(wpm);
    
end