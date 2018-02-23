#!/bin/bash

set -e

target_prefix=$1
project_file=$2

if [ -z "$target_prefix" ] || [ -z "$project_file" ]; then
    echo "usage: $(basename $0) project_file target_prefix"
    exit 1
fi

xmlns='http://schemas.microsoft.com/developer/msbuild/2003'
compile_xpath='//x:Project/x:ItemGroup/x:ClCompile/@Include'
resource_xpath='//x:Project/x:ItemGroup/x:ResourceCompile/@Include'
include_xpath='//x:Project/x:ItemGroup/x:ClInclude/@Include'

project_dir="$(dirname $project_file)"

if [ "$project_dir" = "." ]; then
    path_prefix=""
else
    path_prefix="$project_dir/"
fi

if [ -n "$VCXPROJ_IGNORE" ]; then
    ignore_pattern="$VCXPROJ_IGNORE"
else
    ignore_pattern='$^'
fi

function write_header()
{
    printf '\nset(\n    %s_%s\n' "$target_prefix" "$1"
}

function write_footer()
{
    printf ')\n'
}

function write_nodes()
{
    xmlstarlet sel -N x="$xmlns" -t -v "$1" "$project_file" | \
    grep -viE "$ignore_pattern" | \
    xargs -n1 --no-run-if-empty printf '    %s%s\n' "$path_prefix"
}

test -f "$project_file"

write_header SOURCES
write_nodes $compile_xpath
write_nodes $resource_xpath
write_footer

if [ "$3" != "--skip-headers" ]; then
    write_header HEADERS
    write_nodes $include_xpath
    write_footer
fi
