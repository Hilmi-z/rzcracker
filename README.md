# rzcracker
[![Static Badge](https://img.shields.io/badge/Author-xDU0-blue)](https://github.com/Hilmi-z)
![Static Badge](https://img.shields.io/badge/Version-1.0-green)
![Static Badge](https://img.shields.io/badge/License-MIT-orange)

---

## **Description**
Rzcracker is a powerful password brute-force tool designed to crack password-protected **ZIP** and **RAR** archives using a dictionary-based attack.

It supports verbose output, allowing users to monitor the password attempts in real time.

---

## **Features**
- 🗂️ Supports both **ZIP** and **RAR** archive formats.
- 📖 Dictionary-based brute-force attack.
- 🛠️ Verbose mode for detailed output.
- 🧠 Intelligent error handling and validation.

---

## **Installation**
### Clone the Repository
First, clone the repository from GitHub:
```bash
git clone https://github.com/xDU0/rzcracker.git
cd rzcracker
```

### Install Dependencies
Make sure you have the necessary dependencies installed:
```bash
sudo apt install unzip unrar
```

### Make the Script Executable
```bash
chmod +x rzcracker.sh
```

### Run the Script
You are now ready to use the script:
```bash
./rzcracker.sh -h
```

---

## **Usage**

### Basic Syntax
```bash
./rzcracker.sh [OPTIONS]
```

### Options:
- `-z, --zip` → Specify the ZIP file.
- `-r, --rar` → Specify the RAR file.
- `-d, --dict` → Specify the dictionary file.
- `-v, --verbose` → Enable verbose mode.
- `-h, --help` → Display help message.

### Example Usage
#### Cracking a ZIP File:
```bash
./rzcracker.sh -z secret.zip -d passwords.txt -v
```

#### Cracking a RAR File:
```bash
./rzcracker.sh -r secret.rar -d passwords.txt -v
```

---

##  **Disclaimer**
This tool is intended for **educational purposes only**. Unauthorized use on systems or archives without proper authorization is strictly prohibited.

Use responsibly!

---

## **Contributing**
Feel free to submit **issues**, **pull requests**, or feature suggestions!

---

## **License**
This project is licensed under the **MIT License**.

---

**Happy Cracking!**

