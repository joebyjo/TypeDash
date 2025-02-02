


function typingSpeed()
    
    % get words
    string = getWords(7);

    % todo add anti-cheat

    % convert array into a string separated by " " delimiter
    string_ = strjoin(string, ' ');

    % Print words
    fprintf("Words:\n    " + string_ + "\n");
    
    % sleep program to give user time to read words
    sleep(0.75,true);

    % start timer
    startTime = datetime('now');

    userInput = input(" -> ","s");

    % end timer
    endTime = datetime('now');

    % get time taken by `endTime-startTime` and then get milliseconds and
    % then convert to seconds and round off to 1 decimal
    timeTaken = round(milliseconds(endTime-startTime)/1000,1);

    net_wpm = netWPM(userInput,string_,timeTaken);
    gross_wpm = grossWPM(userInput,timeTaken);
    [accuracy1,errors] = accuracy(userInput, string_);


    % todo
    results = sprintf(' Net WPM: %d    Accuracy: %.1f    Gross WPM: %d \n Time Taken: %.1f     Errors: %d', net_wpm, accuracy1, gross_wpm, timeTaken, errors);
    fprintf(results+"\n");

end