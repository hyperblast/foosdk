#!/bin/bash

set -e

project_file=$1

if [ -z "$project_file" ]; then
    echo "usage: $(basename $0) file.vcxproj"
    exit 1
fi

xmlns='http://schemas.microsoft.com/developer/msbuild/2003'
compile_xpath='//x:Project/x:ItemGroup/x:ClCompile/@Include'
resource_xpath='//x:Project/x:ItemGroup/x:ResourceCompile/@Include'

project_dir="$(dirname $project_file)"

if [ "$project_dir" = "." ]; then
    path_prefix=""
else
    path_prefix="$project_dir/"
fi

function write_nodes()
{
    xmlstarlet sel -N x="$xmlns" -t -v "$1" "$project_file" | \
    xargs -n1 --no-run-if-empty printf '%s%s\n' "$path_prefix" | \
    LC_ALL=C sort
}

test -f "$project_file"

write_nodes $compile_xpath
write_nodes $resource_xpath
