% need to do

function [accuracy,errors] = accuracy(inputText,text)

    % need to remove anti-cheat

    error = 0;
    
    textList = string(strsplit(text," "));
    inputList = string(strsplit(text," "));
    

    for i = 1:length(textList)
        c = textList(i);

        for j = 1:length(inputText)

            cont = inputText(j);
            try

                x = inputList(i);
                if x(j) == cont
                    disp(cont);
    
                end
            catch
                continue;
            end
            
        end

    end

end