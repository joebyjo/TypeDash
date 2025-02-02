


function data = typingSpeed(user)
    %{
    Main TypingSpeed function. includes all back-end logic

    gets words from word_list.txt, joins words with space

    asks user for input

    calculates time taken

    calculates netWPM,grossWPM,accuracy,timeTaken and more and displays it

    saves data into files
    
    %}


    clc;
    startArt(sprintf('username: %s',user{4}));
    % get words
    string = getWords(7);

    % todo add anti-cheat

    % convert array into a string separated by " " delimiter
    string_ = strjoin(string,' '); % '\u200e '

    % print words
    fprintf("Words:\n    " + string_ + "\n");
    
    % sleep program to give user time to read words
    sleep(0.75,true);

    % start timer
    startTime = datetime('now');

    userInput = input(" -> ","s");

    % end timer
    endTime = datetime('now');

    userInput = strrep(userInput, ',', ' ');

    % get time taken by `endTime-startTime` and then get milliseconds and
    % then convert to seconds and round off to 1 decimal
    timeTaken = round(milliseconds(endTime-startTime)/1000,1);

    % if contains(str, '\u200e')
    %     fprintf('Nice Try but you can't do that here');
    % end


    netWPM_ = netWPM(userInput,string_,timeTaken);
    grossWPM_ = grossWPM(userInput,timeTaken);
    [accuracy_,errors] = accuracy(userInput, string_);
    accuracy_ = round(accuracy_,1);

    % todo
    results = sprintf('    Net WPM: %d    Accuracy: %.1f%%    Gross WPM: %d \n    Time Taken: %.1f     Errors: %d', netWPM_, accuracy_, grossWPM_, timeTaken, errors);
    fprintf("\n%s\n\n\n",results);

    % data to be sent to updateUserData
    data = {char(strjoin(string, ' ')),userInput,timeTaken, netWPM_, grossWPM_, accuracy_, errors};
    % data = {strjoin(string, ' '),userInput,string(timeTaken),string(netWPM_),string(grossWPM_),string(accuracy_),string(errors)};


end