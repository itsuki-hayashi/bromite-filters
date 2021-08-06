#!/bin/bash

filters=($(ls -d filters/*))
input_files=$(IFS=, ; echo "${filters[*]}")

ruleset_converter --input_format=filter-list \
	--output_format=unindexed-ruleset \
    --input_files=$input_files \
	--output_file=filters.dat
