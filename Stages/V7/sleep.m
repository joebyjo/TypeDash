

function sleep(seconds,quiet)

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