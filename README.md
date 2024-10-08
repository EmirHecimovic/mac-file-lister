# Mac File Lister

## Overview

The Mac File Lister script is a Bash script designed to list all files and folders in specific directories on your Mac and any connected external drives. The script outputs two text files to your Desktop: `files_list.txt` and `folders_list.txt`, which contain the paths of all files and folders, respectively.

## Script Functionality

### List Files in Specified Folders

- The script lists all files located in the following directories:
  - `~/Desktop`
  - `~/Downloads`
  - `~/Documents`
  - `~/Pictures`
- The file paths are stored in `files_list.txt`.

### List Folders in Specified Folders

- It also lists all folders located in the above directories.
- The folder paths are stored in `folders_list.txt`.

### List Files and Folders on External Drives

- The script automatically detects external drives and lists every file and folder.
- The file paths are appended to `files_list.txt`, and folder paths are appended to `folders_list.txt`.

### Logging

- The script logs its start and end times, along with any errors encountered, in a `debug.txt` file on your Desktop.

## Usage

### Running the Script

- Save the script to a `.sh` file on your Mac.
- Open Terminal and navigate to the directory where the script is saved.
- Run the script.

### Output Files

- After running the script, you will find three files on your Desktop:
  - `files_list.txt`: A list of all files in the specified directories and external drives.
  - `folders_list.txt`: A list of all folders in the specified directories and external drives.
  - `debug.txt`: A log file containing the script’s start and end times, as well as any errors encountered during execution.

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any enhancements or bug fixes.

## License

This project is open-source and available under the MIT License.
