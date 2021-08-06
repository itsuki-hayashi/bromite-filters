#!/bin/bash
wget -O filters/annoyances.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_14_Annoyances/filter.txt
wget -O filters/chinese.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_224_Chinese/filter.txt
wget -O filters/dutch.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_8_Dutch/filter.txt
wget -O filters/english.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_English/filter.txt
wget -O filters/french.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_16_French/filter.txt
wget -O filters/german.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_6_German/filter.txt
wget -O filters/japanese.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_7_Japanese/filter.txt
wget -O filters/korean.txt https://raw.githubusercontent.com/yous/YousList/master/youslist.txt
wget -O filters/mobile.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_11_Mobile/filter.txt
wget -O filters/russian.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_1_Russian/filter.txt
wget -O filters/social.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_4_Social/filter.txt
wget -O filters/spanish.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_9_Spanish/filter.txt
wget -O filters/spyware.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt
wget -O filters/track-param.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt
wget -O filters/turkish.txt https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_13_Turkish/filter.txt
wget -O filters/vietnamese.txt https://raw.githubusercontent.com/abpvn/abpvn/master/filter/abpvn.txt

filters=($(ls -d filters/*))
input_files=$(IFS=, ; echo "${filters[*]}")

./ruleset_converter --input_format=filter-list \
	--output_format=unindexed-ruleset \
    --input_files=$input_files \
	--output_file=filters.dat
