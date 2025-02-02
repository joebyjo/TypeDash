

function viewRecords(user)

    %{
    view users stats and previous games in table form along with graph
    %}

    
    userId = user{1};

    % get all of user's games data
    gamesData = getAllData('games.csv');
    games = [];
    for i = 1:size(gamesData,1)
        if strcmp(char(num2str(gamesData(i,2))),userId)
            games = [games; gamesData(i,:)];
        end
    end

    % get user's stats
    statsData = getAllData('user_stats.csv');
    stats = [];
    for i = 1:size(statsData,1)
        if strcmp(char(num2str(statsData(i,1))),userId)
            stats = [stats; statsData(i,:)];
        end
    end

    % convert to strign array
    stats = string(stats);

    % create stats display string
    statsString = sprintf(['               Best Net-WPM : %4s       Best Gross-WPM : %4s           Best Time    : %4ss\n' ...
        '            Average Net-WPM : %4s        Average Time  : %4ss      Average Accuracy : %4s%%\n' ...
        '                Total Games : %4s\n'],stats(2),stats(3),stats(4),stats(5),stats(6),stats(7),string(size(games,1)));

    % fprintf('%s',statsString);

    % if user hasnt played any games yet then prevent breaking of script
    % and denote with hiphens
    if isempty(games)
        games = {'-','-','-','-','-','-','-','-','-'};
    end


    headers = {'Text','User Input','Time Taken','Net WPM','Gross WPM', 'Accuracy','Errors'};


    % render table and print stats and table
    fprintf('%s\n%s',statsString,renderTable(headers, games(:, 3:end)));


end