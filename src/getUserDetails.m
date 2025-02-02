function data = getUserDetails(username)
    %{
    get all data of a user from user_details.csv, provided a username
    %}

    userDetails = 'user_details.csv';
    allData = getAllData(userDetails);

    % find user's data
    for i = 1:size(allData,1)
        if strcmp(username,allData(i,4))
            data = allData(i,:);
            return
        end
    end
    
    % return empty if not found
    data = {};
    return


end