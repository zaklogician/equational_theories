# find_cancellative_magmas

This is a script that finds all cancellative magmas (or quasigroups) of order
5 up to isomorphism using the Mace4 model searcher.

Usage: `MACE4HOME=/path/to/mace4 ./find-cancellative-magmas.sh`

To run the script, you need Prover9/Mace4 installed on your system. Follow the
instructions on the Prover9/Mace4 website (linked from the main README of the
repo).

If mace4 is not in your system's `PATH`, you must set the `MACE4HOME`
environment variable to the *directory* where `mace4` resides.

This script will take approximately half a minute to find all cancellative
magmas of order 5 on a modern computer, producing 1411 models.
