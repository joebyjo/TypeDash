

function words = getWords(count)
    
    FILE_NAME = 'word_list.txt';


    % might not be necessary
    if nargin < 2 || isempty(count)
        count = 7;
    end

    fileID = fopen(FILE_NAME, 'r');
    dataArray = textscan(fileID, '%s', 'Delimiter', '\n');
    fclose(fileID);
    fileContents = string(dataArray{1});
    fileSize = length(fileContents);

    word_list = fileContents;
    

    words = strings(1,count);
    for i = 1:count
        word = word_list(randi([1,fileSize],1));
        
        words(1,i) = word; %[words word];

    end


end