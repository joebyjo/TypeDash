

function updateUserData(user,data)
    
    userStats = 'user_stats.csv';
    games = 'games.csv';

    % get all data from `games.csv` and use it to find gameId
    allGameData = getAllData(games);
    if ~isempty(allGameData)
        lastGame = allGameData(end,:);
        gameId = char(string(double(lastGame(1))+1));
    else
        gameId = '1';
    end

    % convert userId to char
    userId = char(num2str(user{1}));

    % append gameId and userId to data and insert data into `games.csv`
    data = [{userId} data];
    data = [{gameId} data];
    insertData(games,data);

    allUserStatsData = getAllData(userStats);

    rows = size(allUserStatsData,1);

    for i = 1:rows
        if strcmp(char(num2str(allUserStatsData(i,1))),userId)
            stats = allUserStatsData(i,:);
        end
    end
    
    
    % todo userStats
    [~,userId,string_,userInput_,timeTaken_, netWPM_, grossWPM_, accuracy_, errors_] = data{:};


    if netWPM_ > stats(2)
        stats(2) = netWPM_;
    end
    
    if grossWPM_ > stats(3)
        stats(3) = grossWPM_;
    end

    if timeTaken_ < stats(4) || stats(4)==0
        stats(4) = timeTaken_;
    end


    userGames = [];
    allGameData = getAllData(games);
    for i = 1:size(allGameData,1)
        if allGameData(i,2) == userId
            userGames = [userGames; allGameData(i,:)];
        end
    end

    % calculate average wpm,time and accuracy
    stats(5) = mean(cellfun(@str2double, userGames(:, 7)));
    stats(6) = mean(cellfun(@str2double, userGames(:, 5)));
    stats(7) = mean(cellfun(@str2double, userGames(:, 8)));
    
    
    
    % stats = [char(stats(1) stats(2:end)]
    allUserStatsData(str2double(userId),:) = stats;

    x = string(allUserStatsData);
       
    % open the file to get headers
    fid = fopen(userStats, 'r');
    headersLine = fgetl(fid);
    fclose(fid);

    % open to write data
    fid = fopen(userStats, 'w');
    
    % write the headers back to the file
    fprintf(fid, '%s\n', headersLine);

    % write data one row at a time
    for i = 1:size(x,1)
        fprintf(fid, '%s\n', strjoin(x(i,:), ','));
    end

    fclose(fid);


end