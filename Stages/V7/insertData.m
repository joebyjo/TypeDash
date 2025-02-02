function insertData(fileName, data)
    
    data_ = cellstr(strings(1,numel(data)));
    for i = 1:numel(data)
        if isnumeric(data_{i})
            data_{i} = char(num2str(data{i}));
        else

            data_{i} = char(string(data{i}));
        end
    end


    % open CSV file in append mode
    fileID = fopen(fileName, 'a');

    % check if file opened
    if fileID == -1
        error('[*] Error opening file');
    end

    % write data to file
    data = strjoin(data_, ',');
    fprintf(fileID, '%s\n', data);

    % close file
    fclose(fileID);


end