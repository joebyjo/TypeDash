


function data = typingSpeed(user)
    clc;
    startArt(sprintf('username: %s',user{4}));
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

    netWPM_ = netWPM(userInput,string_,timeTaken);
    grossWPM_ = grossWPM(userInput,timeTaken);
    [accuracy_,errors] = accuracy(userInput, string_);


    % todo
    results = sprintf('    Net WPM: %d    Accuracy: %.1f%%    Gross WPM: %d \n    Time Taken: %.1f     Errors: %d', netWPM_, accuracy_, grossWPM_, timeTaken, errors);
    fprintf("\n%s\n\n\n",results);

    % data to be sent to updateUserData
    data = {char(strjoin(string, ' ')),userInput,timeTaken, netWPM_, grossWPM_, accuracy_, errors};
    % data = {strjoin(string, ' '),userInput,string(timeTaken),string(netWPM_),string(grossWPM_),string(accuracy_),string(errors)};


end