# Wordlists
Shared wordlists used for common subdomains , directory bruteforcing etc.

## Update Feb 2021
Added files and exploits lists from nuclei templates https://github.com/projectdiscovery/nuclei-templates

### Types of wordlists
| Report               | Description                                             |
|----------------------|---------------------------------------------------------|
| words_and_files_and_exploits.txt       | all words/exploits and files with extentions                                |
| words_and_files.txt            | words and files with extentions              |
| words_without_ext.txt            | words without extentions              |
| words_and_files_small.txt            | smaller list < 15K              |
| exploits.txt            | Only URL based exploits              |
| dotfiles.txt            | Only dotfiles (configs etc.)              |
| big_subdomain_wordlist.txt            | useful for creating subdomain bruteforce list for massdns             |

# Merging wordlists 

```
cat wordlist1.txt wordlist2.txt | sort -uf > wordlist_combined.txt
```

# FFuF Fast Web Fuzzer Commands
https://github.com/ffuf/ffuf

```
go get github.com/ffuf/ffuf
```
FFuF Scan with Auto Calibration -ac
```
ffuf -w wordlists/words_and_files.txt -u https://example.org -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0' -of csv -o example.org-ffuf.csv -r -mc 200,301,403,405 -ac
```
```
for i in $(cat urls.txt); do ./ffuf.sh project $i; done
```
