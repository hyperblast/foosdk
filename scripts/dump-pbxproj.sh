#!/bin/bash

set -e

project_dir=$1

if [ -z "$project_dir" ]; then
    echo "usage: $(basename $0) dir.xcodeproj"
    exit 1
fi

project_file="$project_dir/project.pbxproj"

if [ ! -f "$project_file" ]; then
    echo "File not found: $project_file"
    exit 1
fi

source_dirs=($(dirname $project_dir))

shift

for arg in "$@"; do
    source_dirs+=($arg)
done

function resolve_paths
{
    while IFS= read -r file_name; do
        found=0

        for dir in "${source_dirs[@]}"; do
            if [ -f "$dir/$file_name" ]; then
                echo "$dir/$file_name"
                found=1
                break
            fi
        done

        if [ $found -eq 0 ]; then
            echo "# File not found: $file_name" >&2
        fi
    done
}

sed -n '/Begin PBXBuildFile section/,/End PBXBuildFile section/p' "$project_file" | \
grep -Po '(?<=/\* ).*(?= in Sources \*/)' | \
resolve_paths
