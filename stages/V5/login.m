

function login()
    
    while true

        startArt('By: Joe');
    
        username = lower(strtrim(input("Username: ",'s')));
        
        disp(username);

        % get user details function
        user = {}; %{'joebyjo','1234'};


        if isempty(user)
            fprintf('User Does Not Exist\n\n')
            ch = lower(input('Register New User(y/n): ','s'));

            if ch == 'n'
                disp('asas');
            elseif ch == 'y'
                fprintf('\n\n---------------------------------------------------------------------------------------------\n\n\n');

                name = input('Enter Name: ','s');
                age = input('Enter Age: ','s');
                password = input('Enter Password: ','s');

                fprintf('\n\n---------------------------------------------------------------------------------------------\n\n\n');

                data = [name, age, username, password];

                % todo create_user

                sleep(2,true);

                

                continue;
            end
            
        end

        while true

            passwd = input("Password: ",'s');

            if passwd == user{2}
                
                startArt(sprintf('username: %s',username))

                return

            else
                fprintf('incorrect password\n\n');
                continue
            end


        end

        
    end
end