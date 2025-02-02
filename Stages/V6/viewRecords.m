

function viewRecords(user)

    userId = user{1};
    gamesData = getAllData('games.csv');
    games = [];
    for i = 1:size(gamesData,1)
        if strcmp(char(num2str(gamesData(i,2))),userId)
            games = [games; gamesData(i,:)];
        end
    end



    statsData = getAllData('user_stats.csv');
    stats = [];
    for i = 1:size(statsData,1)
        if strcmp(char(num2str(statsData(i,1))),userId)
            stats = [stats; statsData(i,:)];
        end
    end

    games;
    stats = string(stats);

    statsString = sprintf(['   Best Net-WPM : %4s       Best Gross-WPM : %4s           Best Time    : %4ss\n' ...
        'Average Net-WPM : %4s        Average Time  :  %4ss     Average Accuracy : %4s%%\n' ...
        '    Total Games :%4s\n'],stats(2),stats(3),stats(4),stats(5),stats(6),stats(7),string(size(games,1)));

    fprintf('%s',statsString);

    


end