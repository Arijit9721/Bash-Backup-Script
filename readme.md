# Backup Script

A simple bash script for creating compressed backups of files with automated validation and directory management.

## Overview

This script automates the backup process by compressing files into zip archives and storing them in a designated backup directory. It includes comprehensive checks to ensure reliable backup operations.

## How It Works

The script follows these steps to create backups:

1. **Dependency Check** - Verifies that the `zip` utility is installed on the system
2. **File Validation** - Ensures the target file is provided as a parameter, exists, and is not empty
3. **Backup Directory Setup** - Checks if the backup folder exists (default: `/backup`) and creates it if necessary
4. **File Compression** - Compresses the specified file and stores it in the backup directory


## Features

- ✅ Automatic dependency checking
- ✅ File existence and size validation
- ✅ Automatic backup directory creation
- ✅ Compressed backup storage
- ✅ Customizable backup location
- ✅ Directory backup support (with modification)

## Requirements

- Linux/Unix system
- Bash shell
- `zip` utility
- Write permissions for backup directory


## Prerequisites

Before using the script, complete these setup steps:

### 1. Clone the Repository
```bash
git clone https://github.com/Arijit9721/Bash-Backup-Script.git
```

### 2. Install Dependencies
Install the zip utility:
```bash
sudo apt install zip
```

### 3. Make Script Executable
```bash
sudo chmod +x backup_script.sh
```

## Usage

### Basic Usage
```bash
<path_to_script>/backup_script.sh <path_of_file_to_backup>
```

### Example
```bash
./backup_script.sh /home/user/important_file.txt
```

## Customization Options

### 1. Change Backup Directory Location
By default, backups are stored in `/backup`. To use a different location:

- Edit the `BACKUP_DIR` variable in the script
- Set it to your preferred backup path

### 2. Backup Entire Directories
To backup directories instead of single files:

1. **Modify the script**: Add the `-r` flag between `zip` and `$ZIP_FILE` in the compression command
2. **Usage**: Provide a directory path as the parameter instead of a file path

**Example directory backup usage:**
```bash
./backup_script.sh /home/user/my_directory/
```
