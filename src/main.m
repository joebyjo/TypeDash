clc;
clear;


% setup environment on first run or incase any of the files do not exist 
onStartSetup;

startArt('By: Joe');
initialHelp =['<strong>Welcome to the TypingDash!</strong>\nYour ' ...
    'goal is to type as quickly and accurately as possible. Words will ' ...
    'appear on the screen,\nand you need to type them as fast and accurately ' ...
    'as possible.\n\n' 'Start off by entering your username and password, ' ...
    'or you can register by entering your preferred\nusername followed ' ...
    'by entering additional details as requested.Then login using new user. ' ...
    'you will\nthen be presented with options(as below) to play,view scoreboard,' ...
    'view leaderboard and more.\n\nTo play the game choose (1/p/play)\n\n\n'];

fprintf(initialHelp);
                
% sleep(20,true);

while true
    % make user login
    user = login();
    username = user{4};
    
    while true
        % ask for choice
        choice = sprintf("    1.Play    2.View Stats    3.View scoreboard    4.logout    5.Help    99.Exit\n\t-> ");
        choice = input(choice,'s');
        choice = strsplit(lower(choice));
    
        % clear display
        clc;
    
        % check choice and do appropriate action
        switch choice{1}
            case {'1', 'p', 'play'}
                data = typingSpeed(user);
                updateUserData(user,data);
            case {'2', 's', 'stats'}
                clc;
                startArt(sprintf('username: %s',username));
                viewRecords(user);
                fprintf('\n\n\n');
            case {'3', 'sb', 'scoreboard', 'leaderboard'}
                clc;
                startArt(sprintf('username: %s',username));
                viewScoreboard();
                fprintf('\n\n\n');
            case {'5', 'h', 'help'}
                clc;
                startArt(sprintf('username: %s',username));
                % content for help
                help = sprintf(['<strong>Welcome to the TypingDash!</strong>\nYour goal is to type as quickly and accurately as possible. Words will appear on the screen, and you need to type them as fast and accurately as possible.\n\n' ...
                'Start off by entering your username and password, or you can register by entering your preferred username followed by entering additional details as requested.\nThen login using new user. you will then be presented with options(as below) to play,view scoreboard,view leaderboard and more.To play the game choose (1/p/play)\n\n\n' ...
                '<strong>1. Play   (1/p/play)</strong>\nUse this option to play a game to check your Typing speed. The words will appear and you have a split second to quickly read through the words,\nYou can start typing when the arrow (->) appears. Your scores will be displayed and your game score will be saved\n\n' ...
                '<strong>2. View Stats   (2/s/stats)</strong>\nUse this option view your stats and your previous games. All data including your best scores,best time,average scores, accuracy,\ntotal games played and more will be displayed\n\n' ...
                '<strong>3. View scoreboard   (3/sb/scoreboard/leaderboard)</strong>\nUse this option to view the current scoreboard. It will display the best scores,best time,average scores, accuracy and more of all users that have played the game.\n\n' ...
                '<strong>4. logout  (4/l/logout)</strong>\nUse this option to logout of your account and log into another account.\n\n' ...
                '<strong>5. help  (5/h/help)</strong>\nUse this option to view this help screen\n\n' ...
                '<strong>99. exit  (99/e/exit)</strong>\nUse this option to quit the game\n\n\n']);
                fprintf('\n%s',help);
            case {'4', 'l', 'logout'}
                % logout from the game by breaking out of the loop
                break;
            case {'99', 'e', 'exit'}
                % end the whole script
                return;
            otherwise
                % give retry option if invalid choice is given
                startArt(sprintf('username: %s',username));
                fprintf("\nInvalid choice. Please try again\n");
        end
    end
    
    
end
