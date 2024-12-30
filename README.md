# rzcracker

# 🔒 Password Cracker Tool

**Author:** xDU0  
**Version:** 1.0  
**License:** MIT  

---

## 📜 **Description**
This script is a powerful password brute-force tool designed to crack password-protected **ZIP** and **RAR** archives using a dictionary-based attack.

It supports verbose output, allowing users to monitor the password attempts in real time.

---

## ⚙️ **Features**
- 🗂️ Supports both **ZIP** and **RAR** archive formats.
- 📖 Dictionary-based brute-force attack.
- 🛠️ Verbose mode for detailed output.
- 🧠 Intelligent error handling and validation.

---

## 🚀 **Installation**
Make sure you have the necessary dependencies installed:

```bash
sudo apt install unzip unrar
```

Make the script executable:

```bash
chmod +x archiveCracker.sh
```

---

## 📚 **Usage**

### Basic Syntax
```bash
./archiveCracker.sh [OPTIONS]
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
./archiveCracker.sh -z secret.zip -d passwords.txt -v
```

#### Cracking a RAR File:
```bash
./archiveCracker.sh -r secret.rar -d passwords.txt -v
```

---

## 🛡️ **Disclaimer**
This tool is intended for **educational purposes only**. Unauthorized use on systems or archives without proper authorization is strictly prohibited.

Use responsibly!

---

## 🤝 **Contributing**
Feel free to submit **issues**, **pull requests**, or feature suggestions!

---

## 📝 **License**
This project is licensed under the **MIT License**.

---

**Happy Cracking! 🐍**

