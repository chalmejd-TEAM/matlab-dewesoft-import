clc
clear
close all

% Prompting user for target Dewesoft file
[file,location] = uigetfile('*.dxd');
fullFileName = fullfile(location, file);

% Importing data from Dewesoft file
data = dw_data_reader(fullFileName);

% Loop through each channel in the Dewesoft file
for i = 1:height(data)
    % Remove invalid characters from channel names for variables
    channel = regexprep(cell2mat(data.name(i)), '[\% ()#/\\-]', '');
    % Change cell array to matlab array
    output = cell2mat(data.data(i));
    % Assign output array to variable matching channel name
    eval([channel '= output;']);
    
    % Repeat above for time data for each channel
    timeOutput = cell2mat(data.time(i));
    eval([channel '_time = timeOutput;']);
end