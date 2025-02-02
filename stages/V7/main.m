clc;
clear;

% startArt(false);

onStartSetup;



while true

    user = login();
    username = user{4};

    while true
        % startArt(username);

        choice = sprintf("    1.Play    2.View Stats    3.View scoreboard    4.logout    99.Exit\n\t-> ");
        choice = input(choice,'s');
        choice_split = strsplit(lower(choice));

        clc;
    
        if any(strcmpi(choice_split{1}, {'p', 'play', '1'}))
            data = typingSpeed(user);
            updateUserData(user,data);
            
        elseif any(strcmpi(choice_split{1}, {'2', 's', 'stats', 'View Stats'}))
            clc;
            startArt(sprintf('username: %s',username));
            viewRecords(user);
            fprintf('\n\n\n');
            
        elseif any(strcmpi(choice_split{1}, {'3','l' ,'scoreboard'}))
            clc;
            startArt(sprintf('username: %s',username));
            viewScoreboard()
            fprintf('\n\n\n');

        % elseif any(strcmpi(choice_split{1}, {'5', 'help','h'}))
        %     clc;
        %     % todo
            
        elseif any(strcmpi(choice_split{1}, {'4', 'logout'}))
            break
            
        elseif strcmp(choice, '99') || strcmpi(choice, 'exit')
            return; 
            
        else
            startArt(sprintf('username: %s',username));
            fprintf("\nInvalid choice. Please try again\n");

        end
    end

end
