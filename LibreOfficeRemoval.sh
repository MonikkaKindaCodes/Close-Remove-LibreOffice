#!/bin/bash

    # Exit script if user cancels
    [[ "$response" = "Cancel LibreOffice Removal" ]] && exit 0

    #If not cancelled, delete application
    FileToDelete="/Applications/LibreOffice.app"
    if [ -d "$FileToDelete" ];  # Remove, if exists.
    then
    echo "Closing LibreOffice"
    killall "LibreOffice" || echo "LibreOffice wasn't open"
    echo "removing LibreOffice.app"
    rm -r "$FileToDelete"
    else
    echo "LibreOffice is not installed on this device"
    fi