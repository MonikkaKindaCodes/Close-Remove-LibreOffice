#!/bin/bash
#Delete application
FileToDelete="/Applications/LibreOffice.app"
if [ -d "$FileToDelete" ];  # Remove, if exists.
then
echo "removing LibreOffice.app"
rm -r "$FileToDelete"
else
echo "LibreOffice is not installed on this device"
fi