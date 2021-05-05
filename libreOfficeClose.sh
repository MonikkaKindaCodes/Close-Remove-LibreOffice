#!/bin/bash
#Close all current processes of LibreOffice
pid=$(ps -fe | grep 'LibreOffice' | awk '{print $2}')
if [[ -n $pid ]]; then
    kill $pid
else
    echo "Does not exist"
fi
