clc;
clear;


text = 'album blade future farm high camel ruling';
inputText = 'album blade future farm high camel ruli';



[accuracy,errors] = accuracy(inputText,text)


% inputText = string(strsplit('album blade future farm high camel ruling'," "))
% text = 'album blade future farm high camel ruling'
% 
% 
% for i = 1:length(text)
%     c = text(i);
% 
%     for j = 1:length(inputText)
% 
%         cont = inputText(j);
% 
%         x = inputText(i);
%         if x == cont
%             disp(cont);
% 
%         end
% 
% 
%     end
% 
% end
