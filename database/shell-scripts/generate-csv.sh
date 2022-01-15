#!/bin/bash

# Tag git commits with three tags
for (( c=1; c<=3; c++ ))
do
	# Suppress errors if we already have a tag
	git tag "tag-${c}" 2>/dev/null
done

# Get all tags from the latest commits
tags=$(git tag --points-at HEAD)

# Converts columns to rows with a comma delimiter
# TODO: Fix the trailing comma
echo "${tags}" | tr '\n' ','
