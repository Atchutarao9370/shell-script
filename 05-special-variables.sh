#!/bin/bash

echo "All variables passed: $@"
echo "Number of varaiables: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $Home"
echo "Which user is running this script: $USER"
echo "Process ID of current script:  $$"
echo "Process ID of last command in background: $!"