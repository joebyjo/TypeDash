

function data = getAllData(fileName)

    % data = readtable()

    opts = detectImportOptions(fileName);
    % opts.VariableTypes = repmat({'string'}, 1, width(opts));
    opts = setvartype(opts, 'user_id', 'string');  %or 'char' if you prefer
    
    % user_id	name	age	username	password

    data = readtable(fileName, opts);


end