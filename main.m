data = S46_PPA_dw_data_reader('Add .dxd file path here');


for i = 1:height(data)
    channel = regexprep(cell2mat(data.name(i)), '[\% ()#/\\-]', '');
    output = cell2mat(data.data(i));
    eval(['Dewe_' channel '= output;']);
end