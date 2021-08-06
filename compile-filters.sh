#!/bin/bash
ruleset_converter --input_format=filter-list \
	--output_format=unindexed-ruleset \
    --input_files=filters/annoyances.txt,filters/chinese.txt,filters/dutch.txt,filters/english.txt,filters/french.txt,filters/german.txt,\
filters/japanese.txt,filters/korean.txt,filters/mobile.txt,filters/russian.txt,filters/social.txt,filters/spanish.txt,filters/spyware.txt,\
filters/track-param.txt,filters/turkish.txt,filters/vietnamese.txt \
	--output_file=filters.dat
