

function words = getWords(count)
    
    %{
    Get words from word_list.txt depending on specified mode
    file which returns a random selection of `count` words in the form of a list
    %}

    FILE_NAME = 'word_list.txt';

    % open file
    fileID = fopen(FILE_NAME, 'r');

    % read contents of file and store in variable
    dataArray = textscan(fileID, '%s', 'Delimiter', '\n');

    % close file
    fclose(fileID);

    % convert contents of file to string array
    wordList = string(dataArray{1});
        
    % get `count` number of random words
    words = strings(1,count);
    for i = 1:count

        % get a random word
        randIndex = randi([1,length(wordList)]);
        word = wordList(randIndex,1);

        % remove used words to prevent duplicates
        wordList(randIndex) = [];
        
        words(1,i) = word; %[words word];

    end


end