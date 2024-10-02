#!/bin/bash

# Step 1: Check if 'mace4' is in the current PATH
if command -v mace4 >/dev/null 2>&1; then
    # If found, set MACE4HOME to the location of the executable
    MACE4HOME=$(dirname "$(command -v mace4)")
else
    # Step 2: Check if MACE4HOME is set and 'mace4' exists in that path
    if [[ -z "$MACE4HOME" || ! -x "$MACE4HOME/mace4" ]]; then
        echo "Error: 'mace4' not found in PATH, and MACE4HOME not set."
        echo "Please obtain Prover9/Mace4 and set MACE4HOME to its bin directory."
        exit 1
    fi
fi

# Step 3: Invoke MACE4
"$MACE4HOME/mace4" -f cancellative-magma-5.in | "$MACE4HOME/get_interps" | "$MACE4HOME/isofilter" > cancellative-magma-5.out
