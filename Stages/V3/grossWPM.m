

function wpm = grossWPM(input_text, total_time)

    %{
    returns gross_wpm(wpm without accounting for errors)
    formula:

        length of input_text x 60
        —————————————————————————
             5  x  time_taken

    %}
    
    wpm = (length(input_text) * 60) / (5 * total_time);
    wpm = round(wpm);
    
end