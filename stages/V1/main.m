clc;
clear;

start_art = ['\n\n',...
'        ████████╗██╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗     ███████╗██████╗ ███████╗███████╗██████╗ ','\n',...
'        ╚══██╔══╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔════╝     ██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗','\n',...
'           ██║    ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ███╗    ███████╗██████╔╝█████╗  █████╗  ██║  ██║','\n',...
'           ██║     ╚██╔╝  ██╔═══╝ ██║██║╚██╗██║██║   ██║    ╚════██║██╔═══╝ ██╔══╝  ██╔══╝  ██║  ██║','\n',...
'           ██║      ██║   ██║     ██║██║ ╚████║╚██████╔╝    ███████║██║     ███████╗███████╗██████╔╝','\n',...
'           ╚═╝      ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚═╝     ╚══════╝╚══════╝╚═════╝ ','\n',...
'                                                                                    \n'];

% fprintf(start_art);



while true

    
    choice = input("    1.Play    2.View My Stats    3.Leaderboard    4.logout    99.Exit\n",'s');
    choice_split = strsplit(lower(choice));

    if any(strcmpi(choice_split{1}, {'p', 'play', '1'}))

        fprintf(start_art);
        
    elseif any(strcmpi(choice_split{1}, {'2', 'view', 'my', 'stats'}))
        disp("View My Stats option chosen.");
        % Add your view stats logic here
        
    elseif any(strcmpi(choice_split{1}, {'3', 'leaderboard'}))
        disp("Leaderboard option chosen.");
        % Add your leaderboard logic here
        
    elseif any(strcmpi(choice_split{1}, {'4', 'logout'}))
        disp("Logout option chosen.");
        % Add your logout logic here
        
    elseif strcmp(choice, '99') || strcmpi(choice, 'exit')
        fprintf("\n\nExiting...\n");
        
        break; % Exit the loop when the user chooses to exit
        
    else
        disp("Invalid choice. Please try again.");

    end


end