function insertData(fileName, data)

    % Open CSV file in append mode
    fileID = fopen(fileName, 'a');

    % Check if file opened
    if fileID == -1
        error('[*] Error opening file');
    end

    % Write data to file
    data = strjoin(data, ',');
    fprintf(fileID, '%s\n', data);

    % Close file
    fclose(fileID);
end