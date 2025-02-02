

function resetEnvironment()
    
    % delete environment files (used during development)
    userDetails = 'user_details.csv';
    userStats = 'user_stats.csv';
    games = 'games.csv';

    % delete(userStats);
    % delete(games);
    % delete(userDetails);
    files = {userDetails,userStats,games};
    
    for i = 1:length(files)
        % check if file exists
        if exist(files{i}, 'file')
            delete(files{i})
            fprintf('[*] deleted `%s`\n',files{i});
        else
            fprintf('[*] `%s` does not exist\n',files{i})
        end
    end
        
    
end