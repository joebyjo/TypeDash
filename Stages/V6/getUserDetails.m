function data = getUserDetails(username)

    userDetails = 'user_details.csv';
    allData = getAllData(userDetails);

    for i = 1:size(allData,1)
        if strcmp(username,allData(i,4))
            data = allData(i,:);
            return
        end
    end
    
    data = {};
    return


end