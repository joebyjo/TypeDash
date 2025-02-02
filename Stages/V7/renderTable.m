function tableString = renderTable(headers, data)
    % Calculate column widths
    numCols = length(headers);
    colWidths = zeros(1, numCols);
    for i = 1:numCols
        colWidths(i) = max(cellfun(@length, data(:, i)));
        colWidths(i) = max(colWidths(i), length(headers{i}));
    end
    
    % Initialize table string
    tableString = '';
    
    % Append top border to table string
    tableString = [tableString, '┌'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┬'];
        end
    end
    tableString = [tableString, '┐', newline];
    
    % Append headers to table string
    tableString = [tableString, '│'];
    for i = 1:numCols
        header = headers{i};
        padding = colWidths(i) - length(header);
        leftPadding = floor(padding / 2);
        rightPadding = padding - leftPadding;
        tableString = [tableString, ' ', repmat(' ', 1, leftPadding), header, repmat(' ', 1, rightPadding), ' │'];
    end
    tableString = [tableString, newline];
    
    % Append middle border to table string
    tableString = [tableString, '├'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┼'];
        end
    end
    tableString = [tableString, '┤', newline];
    
    % Append data to table string
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
    
    % Append bottom border to table string
    tableString = [tableString, '└'];
    for i = 1:numCols
        tableString = [tableString, repmat('─', 1, colWidths(i) + 2)];
        if i < numCols
            tableString = [tableString, '┴'];
        end
    end
    tableString = [tableString, '┘', newline];
end

