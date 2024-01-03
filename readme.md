# [PwGen: A Bash Password Generator](https://github.com/viduxsh/pwgen)

[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/viduxsh/pwgen/blob/main/LICENSE)

## Description
PwGen is a powerful and easy-to-use password generator written in Bash. It can generate strong and complex passwords for any type of account, including email accounts, social media accounts, and website logins.

## Features
Generates strong and complex passwords
Supports uppercase, lowercase, numbers, and special characters
Customizable password length
Easy to use

## Usage

To generate a password, simply run the following command:

```sh
./pwgen.sh
```

This will generate a 16-character password with all four character types. You can also customize the password length and character types using the following options:

- -x NUM: Set the password length to NUM characters
- -u: Include given uppercase letters
- -l: Include given lowercase letters
- -n: Include given numbers
- -s: Include given special characters

For example, to generate a 32-character password with only uppercase and lowercase letters, you would use the following command:

```sh
./pwgen.sh -x 32 -u ABCDEFGHIJKLMNOPQRSTUVWXYZ -l abcdefghijklmnopqrstuvwxyz
```

This script is licensed under the MIT License.
