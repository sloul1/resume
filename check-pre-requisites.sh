#!/bin/bash

# Function to check for program's installation
check_program() {
    local prog=$1
    local cmd_name=$(which $prog 2>/dev/null)

    if [ -z "$cmd_name" ]; then
        echo "$prog is not installed."
        return 1
    else
        echo "$prog is installed. Version:"
        if [[ "$prog" == "go" ]]; then
            $prog version
        else
            $prog --version
        fi
        return 0
    fi
}

# Check for Git installation
echo "Checking for Git..."
check_program git

# Check for Go installation
echo -e "\nChecking for Go (Golang)..."
check_program go
