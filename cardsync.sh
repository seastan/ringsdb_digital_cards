#!/bin/bash

# Rename plain-english image names in ./images to the coded image names for ringsdb in ./renamed 
python3.5 rename.py

# Syncronize ./renamed with ringsdb
rsync -v ./renamed/* rings@ringsdb.com:/var/www/ringsdb_digital/web/bundles/cards/

