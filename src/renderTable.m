function tableString = renderTable(headers, data)
    %{
    returns provided data in the form of a clean and readable table
    headers = {'username','Net WPM','Accuracy'};
    data = {'xyz','70','100';'abc','90','100';'def','70','100'};
    ┌──────────┬─────────┬──────────┐
    │ username │ Net WPM │ Accuracy │
    ├──────────┼─────────┼──────────┤
    │   xyz    │   70    │   100    │
    │   abc    │   90    │   100    │
    │   def    │   70    │   100    │
    └──────────┴─────────┴──────────┘
     

    %}

    % calculate column widths
    numCols = length(headers);
    colWidths = zeros(1, numCols);
    for i = 1:numCols
        colWidths(i) = max(cellfun(@length, data(:, i)));
        colWidths(i) = max(colWidths(i), length(headers{i}));
    end
    
    tableString = '';
    
    % append top border to tableString
    tableString = [tableString, '┌'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┬'];
        end
    end
    tableString = [tableString, '┐', newline];
    
    % append headers to tableString
    tableString = [tableString, '│'];
    for i = 1:numCols
        header = headers{i};
        padding = colWidths(i) - length(header);
        leftPadding = floor(padding / 2);
        rightPadding = padding - leftPadding;
        tableString = [tableString, ' ', repmat(' ', 1, leftPadding), header, repmat(' ', 1, rightPadding), ' │'];
    end
    tableString = [tableString, newline];
    
    % append middle border to tableString
    tableString = [tableString, '├'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┼'];
        end
    end
    tableString = [tableString, '┤', newline];
    
    % append data to tableString
    numRows = size(data, 1);
    for row = 1:numRows
        tableString = [tableString, '│'];
        for col = 1:numCols
            text = data{row, col};
            padding = colWidths(col) - length(text);
            leftPadding = floor(padding / 2);
            rightPadding = padding - leftPadding;
            tableString = [tableString, ' ', repmat(' ', 1, leftPadding), text, repmat(' ', 1, rightPadding), ' │'];
        end
        tableString = [tableString, newline];
    end
    
    % append bottom border to tableString
    tableString = [tableString, '└'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┴'];
        end
    end
    tableString = [tableString, '┘', newline];
end

