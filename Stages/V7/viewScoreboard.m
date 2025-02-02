function viewScoreboard()

    statsData = string(getAllData('user_stats.csv'));
    userDetails = string(getAllData('user_details.csv'));
    
    userNames = userDetails(:, 4);

    headers = {'Username','Best Net WPM', 'Best Gross WPM','Best Time','Average WPM','Average time','Average accuracy'};
 
    stats = [userNames string(statsData(:, 2:end))];

    fprintf('%s\n',renderTable(headers, stats));
    
end

