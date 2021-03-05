#!/bin/bash
set -x

sed -e "s/$/.$1/" big_subdomain_wordlist.txt > $1-subbrute.txt
# massdns -r /mnt/c/Tools/dns/massdns/lists/resolvers.txt -q -t A -o S -w $1-brute-resolved.txt $1-subbrute.txt

# rm $1-subbrute.txt