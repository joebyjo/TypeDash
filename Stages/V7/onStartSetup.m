
% File names
% global userDetails;
% global userStats;
% global games;

userDetails = 'user_details.csv';
userStats = 'user_stats.csv';
games = 'games.csv';

% Column names
userDetailsColumns = {'user_id', 'name', 'age','username','password'};
userStatsColumns = {'user_id', 'highscore_nWPM', 'highscore_gWPM','highscore_time','average_WPM','average_time','average_accuracy'};
gamesColumns = {'game_id', 'user_id','string','user_input','timetaken','netWPM','grossWPM','accuracy','errors'};


% Check if the files already exist
if ~exist(userDetails, 'file')
    % Create user_details.csv if it does not exist
    userDetailsFileObj = fopen(userDetails, 'w');

    fprintf(userDetailsFileObj, '%s,', userDetailsColumns{1:end-1});
    fprintf(userDetailsFileObj, '%s\n', userDetailsColumns{end});

    fclose(userDetailsFileObj);
    fprintf("[*] Created table `%s`\n",userDetails);
    sleep(0.5,true);
end

if ~exist(userStats, 'file')
    % Create user_stats.csv if it does not exist
    userStatsFileObj = fopen(userStats, 'w');

    fprintf(userStatsFileObj, '%s,', userStatsColumns{1:end-1});
    fprintf(userStatsFileObj, '%s\n', userStatsColumns{end});

    fclose(userStatsFileObj);
    fprintf("[*] Created table `%s`\n",userStats);
    sleep(0.5,true);
end

if ~exist(games, 'file')
    % Create games.csv if it does not exist
    gamesFileObj = fopen(games, 'w');

    fprintf(gamesFileObj, '%s,', gamesColumns{1:end-1});
    fprintf(gamesFileObj, '%s\n', gamesColumns{end});

    fclose(gamesFileObj);
    fprintf("[*] Created table `%s`\n",games);
    sleep(0.5,true);
end

clc;
