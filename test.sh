#!/bin/bash

set -eu

# Wait (quarter) a minute ...
sleep 15

if sudo status docker 2>/dev/null | grep -q 'process '
   then echo "Docker is up and running"
   else echo "Docker is not running!" >&2
        exit 1
fi