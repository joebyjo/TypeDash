

function sleep(seconds,quiet)
    %{ 
     starts a timer for n seconds. no output is printed if quiet=True
     if quiet=false, then print verbose message to start typing 3...2...1...Go!
    %}
    
    % check if ~quiet=true
    if ~quiet
        for i = seconds:-1:1
            fprintf("%i",i);
            pause(0.2);
            for j = 1:4
                fprintf('.');
                pause(0.2)
            end
        end
        fprintf("GO! \n")

    else

        pause(seconds)

    end



end