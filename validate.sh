#!/bin/bash

# List of variables to check
variables=("$1" "$2" "$3" "$4" "$5" "$6")

# Variable names for better error messages
var_names=("TAG_UI" "TAG_ORDERS" "TAG_CHECKOUT" "TAG_CATALOG" "TAG_CART" "TAG_ASSETS")

# Loop through each variable and check
for i in "${!variables[@]}"; do
    value="${variables[$i]}"
    var_name="${var_names[$i]}"

    # Check if the variable is empty
    if [ -z "$value" ]; then
        echo "Error: $var_name is not set or is empty."
        exit 1
    fi
    
    # Check if the value matches the pattern v1.0.0
    if [[ ! "$value" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: $var_name does not match the version pattern 'v1.0.0'. Value found: $value"
        exit 1
    fi
done

echo "All variables are set, not empty, and match the version pattern."
