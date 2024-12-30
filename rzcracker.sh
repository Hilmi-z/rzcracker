#!/bin/bash

echo -e "\033[1;32m"
echo " ██████╗ ███████╗ ██████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ "
echo " ██╔══██╗╚══███╔╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
echo " ██████╔╝  ███╔╝ ██║     ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝"
echo " ██╔══██╗ ███╔╝  ██║     ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
echo " ██║  ██║███████╗╚██████╗██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
echo " ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo "#by xDU0"
echo -e "\033[0m"                                                             


zipfile=""
rarfile=""
dictionary=""
verbose=false

display_help() {
  echo -e "\033[1;34m"
  echo "Usage: $0 [options]"
  echo
  echo "Options:"
  echo "  -z, --zip        Specify the ZIP file"
  echo "  -r, --rar        Specify the RAR file"
  echo "  -d, --dict       Specify the dictionary file"
  echo "  -v, --verbose    Enable verbose mode (shows each password being tried)"
  echo "  -h, --help       Display this help message"
  echo
  echo -e "\033[0m"
  exit 0
}

while [[ "$#" -gt 0 ]]
do
  case $1 in
    -z|--zip)
      zipfile="$2"
      shift
      shift
    ;;
    -r|--rar)
      rarfile="$2"
      shift
      shift
    ;;
    -d|--dict)
      dictionary="$2"
      shift
      shift
    ;;
    -v|--verbose)
      verbose=true
      shift
    ;;
    -h|--help)
      display_help
    ;;
    *)
      echo "Unknown parameter passed: $1"
      exit 1
    ;;
  esac
done

# Check if either zipfile or rarfile is provided
if [ -z "$zipfile" ] && [ -z "$rarfile" ]; then
  echo "[ERROR] No ZIP or RAR file specified"
  exit 1
fi

# Check if the zipfile or rarfile exists
if [ ! -z "$zipfile" ] && [ ! -f "$zipfile" ]; then
  echo "[ERROR] ZIP file not found"
  exit 1
fi

if [ ! -z "$rarfile" ] && [ ! -f "$rarfile" ]; then
  echo "[ERROR] RAR file not found"
  exit 1
fi

# Check if dictionary file exists
if [ ! -f "$dictionary" ]; then
  echo "[ERROR] Dictionary file not found"
  exit 1
fi

# Start brute-forcing
IFS=""
while read -r pwd || [ -n "$pwd" ]
do
  if $verbose
  then
    echo "[-] Trying $pwd"
  fi

  if [ ! -z "$zipfile" ]; then
    res=$(unzip -P "$pwd" "$zipfile" 2>&1 1>/dev/null)
    wrong=$(echo "$res" | grep "incorrect")

    if [ -z "$wrong" ]; then
      echo "[+] Password found for ZIP: $pwd"
      exit
    fi
  fi

  if [ ! -z "$rarfile" ]; then
    res=$(unrar t -p"$pwd" "$rarfile" 2>&1 1>/dev/null)
    wrong=$(echo "$res" | grep -i "incorrect password")

    if [ -z "$wrong" ]; then
      echo "[+] Password found for RAR: $pwd"
      exit
    fi
  fi
done < "$dictionary"
