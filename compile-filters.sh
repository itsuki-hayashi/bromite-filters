#!/bin/bash
ruleset_converter --input_format=filter-list \
	--output_format=unindexed-ruleset \
    --input_files=filters/annoyances.txt,filters/chinese.txt,filters/chinese.txt,filters/english.txt,filters/japanese.txt,filters/mobile.txt,filters/social.txt,filters/spyware.txt,filters/track-param.txt \
	--output_file=filters.dat
