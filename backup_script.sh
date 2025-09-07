#!/bin/bash 

# needed variables
  BACKUP_DIR="/backup"
  ZIP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).zip"

# Check if the zip utility is installed
  if ! which zip >/dev/null ; then
    echo "Zip utility not installed, install to continue"
    exit 1
  else
    echo "Zip utility present ..."
  fi

# Check if the file to be backed up is provided as a parameter
  if [ -z $1 ] >/dev/null ; then             # checking if the parameter is provided
    echo "Please provide the file to be backed up as a parameter when running the script"
    exit 1
  elif ! find $1 > /dev/null 2>&1 ; then     # checking if the file is valid
    echo "The file is not found, check the entered file"
    exit 1
  elif [ ! -s  $1 ] >/dev/null ; then        # checking if the file is empty
    echo "The file is empty"
    exit 1
  else
    echo "Found the file to backup, starting backup ..."
  fi

# Check if the /backup folder is present
  if ! ls $BACKUP_DIR 2>/dev/null ; then
    echo "  backup folder not present, creating ..."     
    mkdir $BACKUP_DIR
  else
    echo "backup folder present, continuing the backup process ..." 
  fi

# compressing the file with zip
  if ! zip $ZIP_FILE $1 2>/dev/null ; then
     echo " File compression unsuccessful, exiting ..."
     exit 1
  else
    echo "File Backup successful"
  fi
  exit 0