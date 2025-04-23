https://roadmap.sh/projects/log-archive-tool

# Log-Archive

A simple CLI tool for archiving logs on Unix-based systems. This script compresses a specified log directory into a `.tar.gz` file and stores it in a designated `archive/` directory. It helps manage disk space and keep systems clean while retaining historical logs in a compressed format.

## 📌 Features

- Accepts a log directory path as an argument
- Verifies if the provided directory exists
- Compresses the log directory into a timestamped `.tar.gz` archive
- Stores the archive in an `archive/` folder

## 🛠️ Requirements

- Unix-based OS (Linux/macOS)
- Bash shell
- Sufficient permissions to read the target log directory

> **Note:** Some logs (e.g., in `/var/log/`) may require `sudo` to access. Use with appropriate permissions.

## 📦 Usage


'/log_archive.sh <log-directory>'


## Example
'./log_archive.sh /var/log'
This will create a compressed archive like:
'archive/log_archive_20250422_223404.tar.gz'


## Permissions 

If you encounter Permission denied errors (especially when accessing system logs), run the script with sudo:

```
sudo ./log_archive.sh /var/log
```