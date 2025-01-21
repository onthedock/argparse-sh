#!/bin/bash

# Source the argparse script
source ./argparse.sh

# Define an argument
define_arg "username" "" "Username for login" "string" "required"

# Check for -h and --help
check_for_help "$@"

# Parse the arguments
parse_args "$@"

# Main script logic
echo "Welcome, $username!"

# Usage:
# ./simple_example.sh --username Alice
