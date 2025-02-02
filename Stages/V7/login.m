

function user = login()
    
    while true
        clc;

        startArt('By: Joe');
    
        % gets username and removes any extra spaces
        username = lower(strtrim(input("Username: ",'s')));

        % get user details function
        user = getUserDetails(username); %{'joebyjo','1234'};

        % check if user exists otherwise give option to register
        if isempty(user)
            fprintf('User Does Not Exist\n\n')
            ch = lower(input('Register New User(y/n): ','s'));

            if ch == 'n'
                continue;
            elseif ch == 'y'
                fprintf('\n\n---------------------------------------------------------------------------------------------\n\n\n');
                
                % do input validation to prevent csv file breaking
                name = input('Enter Name: ','s');
                age = input('Enter Age: ','s');
                password = input('Enter Password: ','s');

                % check if any input contains a comma
                if any(cellfun(@(x) contains(x, ','), {name, age, username, password}))
                    fprintf('Input cannot contain commas. Please re-enter\n');
                    sleep(2,true);
                    continue;
                end

                fprintf('\n\n---------------------------------------------------------------------------------------------\n\n\n');

                data = {name, age, username, password};
                
                % create user in csv files
                createUser(data);
                sleep(1.5,true);

                continue;
            end
            
        end

        while true

            passwd = input("Password: ",'s');

            if strcmp(passwd,user{5})
                clc;
                startArt(sprintf('username: %s',username))
                

                return

            else
                fprintf('incorrect password\n\n');
                continue
            end

        end

    end
end