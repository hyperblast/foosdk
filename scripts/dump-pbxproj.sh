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

source_dir="$(dirname $project_dir)"

if [ "$project_dir" = "." ]; then
    path_prefix=""
else
    path_prefix="$source_dir/"
fi

sed -n '/Begin PBXBuildFile section/,/End PBXBuildFile section/p' "$project_file" | \
grep -Po '(?<=/\*).*(?=in Sources \*/)' | \
xargs -n1 --no-run-if-empty printf '%s%s\n' "$path_prefix"
