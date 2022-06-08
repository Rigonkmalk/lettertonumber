# Letter To Number (LTP)

## Installation

For usage, install perl in the lastest version

### Debian / Ubuntu

```bash
apt install perl
```

### MacOS

```bash
brew install perl
```

###Windows
[Perl Windows installer](https://www.perl.org/get.html#win32)

## Main objective

We want to convert Letter for a password (WEB password) to Number (following Phone keyboard preset).

```
---------------
| |         | |
| |         | |
| |         | |
| |         | |
---------------
||1|  |2|  |3|| -> 1 : 	1 	; 2 : abc 	; 3 : def
||4|  |5|  |6|| -> 4 : 	ghi 	; 5 : jkl 	; 6 : mno
||7|  |8|  |9|| -> 7 : 	pqrs 	; 8 : tuv 	; 9 : wxyz
||*|  |0|  |#|| -> * : 	other caracter (not alphanumeric)	0: 0
---------------
```

Make a translation between Letter or non-alphanumeric caracter to a number to compose for login (in Wildix's side).

### Example 

```
ADMYV/%- : 22698***
```

### Wildix case

You just need to know 5 letter / number only.

