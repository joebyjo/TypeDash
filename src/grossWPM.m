

function wpm = grossWPM(inputText, totalTime)

    %{
    returns grossWPM(wpm without accounting for errors)
    formula:

        length of inputText x 60
        —————————————————————————
             5  x  timeTaken

    %}
    
    wpm = (length(inputText) * 60) / (5 * totalTime);
    wpm = round(wpm);
    
end