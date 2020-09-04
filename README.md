# Wordlists
Shared wordlists used for common subdomains , directory bruteforcing etc.

# Merging wordlists 

```
cat wordlist1.txt wordlist2.txt | sort -uf > wordlist_combined.txt
```

# FFuF Fast Web Fuzzer Commands

```
go get github.com/ffuf/ffuf
ffuf -w /path/to/wordlist -u https://target/FUZZ
```

