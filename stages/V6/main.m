clc;
clear;

% startArt(false);

onStartSetup;



while true
    user = login();
    username = user{4};

    while true
        % startArt(username);

        choice = sprintf("    1.Play    2.View My Stats    3.Leaderboard    4.logout    99.Exit\n\t-> ");
        choice = input(choice,'s');
        choice_split = strsplit(lower(choice));

        clc;
    
        if any(strcmpi(choice_split{1}, {'p', 'play', '1'}))
            data = typingSpeed(user);
            updateUserData(user,data);
            
        elseif any(strcmpi(choice_split{1}, {'2', 'view', 'my', 'stats'}))
            disp("View My Stats option chosen.");
            
        elseif any(strcmpi(choice_split{1}, {'3', 'leaderboard'}))
            disp("Leaderboard option chosen.");
            
        elseif any(strcmpi(choice_split{1}, {'4', 'logout'}))
            break
            
        elseif strcmp(choice, '99') || strcmpi(choice, 'exit')
            return; 
            
        else
            disp("Invalid choice. Please try again.");
    
        end
    end

end