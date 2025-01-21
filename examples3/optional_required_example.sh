#!/bin/bash

# Source the argparse script
source ./argparse3.sh

# Set script description
set_description "This script demonstrates optional and required arguments."

# Define arguments
define_arg "output" "./output.txt" "Path to output file" "string"
define_arg "verbose" "false" "Enable verbose mode" "bool"
define_arg "mode" "null" "Operation mode" "string" "required"

# Parse the arguments
parse_args "$@"

# Main script logic
echo "Output will be saved to: $output"
[[ $verbose == "true" ]] && echo "Verbose mode enabled."
echo "Operating in mode: $mode"

# Usage:
# ./optional_required_example.sh --mode "test" --verbose
# ./optional_required_example.sh --mode "prod" --output "/path/to/file"
