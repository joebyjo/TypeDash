

function data = getAllData(fileName)

    %{
    get all the data within a file
    %}

    % to read double values as strings
    opts = detectImportOptions(fileName);
    if strcmp(fileName,'user_details.csv')
        opts = setvartype(opts, 'user_id', 'string');  %or 'char' if you prefer

    elseif strcmp(fileName,'games.csv')
        opts = setvartype(opts, 'user_id', 'string');
    end
    % user_id	name	age	username	password

    % convert table to array and return
    data = table2array(readtable(fileName, opts));


end