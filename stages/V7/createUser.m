

function createUser(data)

    % file names
    userDetails = 'user_details.csv';
    userStats = 'user_stats.csv';

    
    % get id based on last created user
    allData = getAllData(userDetails);
    if ~isempty(allData)
        lastUser = allData(end,:);
        id = char(string(double(lastUser(1))+1));
    else
        id = '1';
    end
        
    
    % Insert data into user_details.csv
    data = [{id} data];
    insertData(userDetails,data);

    
    % Insert data into user_stats.csv
    data = cellstr(string(zeros(1, 7)));%cellstr(strings(1, 6)); %cell(string(1,6))
    data{1} = id;
    insertData(userStats,data);


end