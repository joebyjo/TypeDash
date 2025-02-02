function viewScoreboard()
    %{
    View scoreboard of users in table form with their stats
    %}

    % get data
    statsData = string(getAllData('user_stats.csv'));
    userDetails = string(getAllData('user_details.csv'));
    
    % get user names
    userNames = userDetails(:, 4);

  
    headers = {'Username','Best Net WPM', 'Best Gross WPM','Best Time','Average WPM','Average time','Average accuracy'};


    % append userNames with stats data assuming userId match correspondly
    % as both are created at the sametime
    stats = [userNames string(statsData(:, 2:end))];

    % display table
    fprintf('%s\n',renderTable(headers, stats));
    
end

