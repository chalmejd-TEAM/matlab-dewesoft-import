# matlab-dewesoft-import
Import Dewsoft data into MATLAB for further analysis

This package is based on the [DEWESoft Data Reader Library](https://dewesoft.com/download/developer-downloads). With this package you can import reduced (Min, Max, Average, RMS) and fast data from analog or digital channels.

## Basic function overview.
- Use main.m
  - Prompts user for .dxd file to import into MATLAB
  - Removes any invalid characters from the channel names
  - Assigns channel data and time values into MATLAB arrays named after each channel.
