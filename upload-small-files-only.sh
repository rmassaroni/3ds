#!/bin/bash

MAX_SIZE=100000000  # 100MB in bytes

# Find files that are small enough
small_files=$(find . -type f -size -"$MAX_SIZE"c ! -path "./.git/*")

# Stage only small files
git add $small_files

# Commit and push
git commit -m "Auto-commit small files"
git push origin main
