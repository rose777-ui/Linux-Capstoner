# Module 1.6 – Essential Linux Commands

> Phase 1 – Ubuntu & Linux Foundations

---

# Overview

The Linux terminal is controlled through commands. Learning these commands is essential for Linux system administration, cybersecurity, DevOps, cloud computing, and software development.

This module introduces the most frequently used Linux commands and explains their syntax, options, and practical usage.

---

# Learning Objectives

After completing this module, I can:

- Navigate directories
- Manage files and folders
- Search files and text
- View file contents
- Compress and encode data
- Calculate file hashes
- Use manual pages
- Combine commands using pipes
- Understand command syntax

---

# Command Syntax

General syntax:

```bash
command [options] [arguments]
```

Example:

```bash
ls -l Documents
```

- `ls` → command
- `-l` → option
- `Documents` → argument

---

# 1. Navigation Commands

## pwd

Displays the current working directory.

```bash
pwd
```

Example Output:

```
/home/jannat/Desktop
```

---

## ls

Lists files and directories.

```bash
ls
```

Useful options:

```bash
ls -l
ls -a
ls -lh
ls -la
```

| Option | Meaning |
|---------|---------|
| -l | Long listing |
| -a | Hidden files |
| -h | Human-readable sizes |

---

## cd

Changes the current directory.

```bash
cd Documents
```

Go to home:

```bash
cd ~
```

Go to root:

```bash
cd /
```

Go back:

```bash
cd ..
```

---

# 2. File & Directory Management

## mkdir

Create a directory.

```bash
mkdir project
```

Create nested directories:

```bash
mkdir -p notes/linux/module1
```

---

## touch

Create an empty file.

```bash
touch notes.txt
```

Create multiple files:

```bash
touch a.txt b.txt c.txt
```

---

## cp

Copy files.

```bash
cp file.txt backup.txt
```

Copy a directory:

```bash
cp -r folder backup/
```

---

## mv

Move or rename files.

Rename:

```bash
mv old.txt new.txt
```

Move:

```bash
mv notes.txt Documents/
```

---

## rm

Delete files.

```bash
rm file.txt
```

Delete folders:

```bash
rm -r folder
```

Force delete:

```bash
rm -rf folder
```

⚠️ Be careful. Deleted files cannot be recovered easily.

---

## rmdir

Remove an empty directory.

```bash
rmdir test
```

---

# 3. Viewing File Contents

## cat

Display the entire file.

```bash
cat notes.txt
```

Combine files:

```bash
cat file1 file2
```

---

## less

View large files page by page.

```bash
less logfile.txt
```

Quit:

```
q
```

---

## head

Display the first 10 lines.

```bash
head notes.txt
```

Display first 20 lines:

```bash
head -20 notes.txt
```

---

## tail

Display the last lines.

```bash
tail notes.txt
```

Monitor live logs:

```bash
tail -f /var/log/syslog
```

---

# 4. Searching Commands

## grep

Search text inside files.

```bash
grep Linux notes.txt
```

Ignore case:

```bash
grep -i linux notes.txt
```

---

## find

Search files by name.

```bash
find . -name "*.txt"
```

Search from root:

```bash
find / -name firefox
```

---

## locate

Quickly locate files using a database.

```bash
locate passwd
```

Update database:

```bash
sudo updatedb
```

---

## which

Find executable location.

```bash
which python3
```

Example:

```
/usr/bin/python3
```

---

## whereis

Find executable, source, and manual pages.

```bash
whereis bash
```

---

# 5. File Information

## file

Determine file type.

```bash
file report.pdf
```

---

## stat

Display detailed file information.

```bash
stat report.pdf
```

Shows:

- Size
- Permissions
- Owner
- Access time
- Modification time

---

## tree

Display directory structure.

```bash
tree
```

Example:

```
project
├── README.md
├── notes
└── screenshots
```

---

# 6. Command History

## history

View command history.

```bash
history
```

Repeat last command:

```bash
!!
```

---

## clear

Clear terminal.

```bash
clear
```

Shortcut:

```
Ctrl + L
```

---

# 7. Output Commands

## echo

Display text.

```bash
echo "Hello Linux"
```

Write to file:

```bash
echo "Ubuntu" > notes.txt
```

Append:

```bash
echo "Linux" >> notes.txt
```

---

## tee

Display and save output simultaneously.

```bash
ls | tee files.txt
```

Append:

```bash
tee -a files.txt
```

---

# 8. Documentation Commands

## man

Open manual pages.

```bash
man ls
```

Quit:

```
q
```

---

## info

Open GNU documentation.

```bash
info ls
```

---

## apropos

Search manual pages.

```bash
apropos copy
```

---

# 9. Text Processing

## wc

Word count.

```bash
wc notes.txt
```

Options:

```bash
wc -l
wc -w
wc -c
```

---

## sort

Sort lines alphabetically.

```bash
sort names.txt
```

Reverse:

```bash
sort -r names.txt
```

---

## uniq

Remove duplicate lines.

```bash
uniq names.txt
```

---

## cut

Extract columns.

```bash
cut -d ":" -f1 /etc/passwd
```

---

## paste

Merge files.

```bash
paste file1 file2
```

---

## tr

Translate characters.

Convert lowercase to uppercase:

```bash
echo linux | tr a-z A-Z
```

Output:

```
LINUX
```

---

## xargs

Convert input into command arguments.

Example:

```bash
find . -name "*.txt" | xargs rm
```

Use carefully.

---

# 10. Encoding

## base64

Encode text.

```bash
echo Linux | base64
```

Decode:

```bash
echo TGludXgK | base64 -d
```

---

# 11. Hash Functions

## md5sum

Generate MD5 checksum.

```bash
md5sum file.iso
```

---

## sha1sum

Generate SHA1 checksum.

```bash
sha1sum file.iso
```

---

## sha256sum

Generate SHA256 checksum.

```bash
sha256sum ubuntu.iso
```

Used to verify downloaded files.

---

# Common Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Ctrl + C | Stop program |
| Ctrl + D | Logout |
| Ctrl + L | Clear screen |
| Ctrl + R | Search history |
| Tab | Auto-complete |
| Up Arrow | Previous command |

---

# Best Practices

- Read the manual before using unfamiliar commands.
- Use `pwd` to verify your location.
- Avoid using `rm -rf` unless necessary.
- Verify commands before pressing Enter.
- Use `sha256sum` to verify downloaded ISO files.
- Practice commands regularly.

---

# Common Mistakes

- Running commands in the wrong directory.
- Deleting files with `rm` unintentionally.
- Forgetting `-r` when copying folders.
- Using `find /` without permissions.
- Forgetting quotes around filenames with spaces.

---

# Practical Lab

Complete these tasks:

1. Display your current directory.
2. Create a folder named `practice`.
3. Create three text files.
4. Copy one file.
5. Rename another file.
6. Search for all `.txt` files.
7. Count the number of lines in a file.
8. Display the first five lines of a file.
9. Calculate a SHA256 checksum.
10. View the manual page for `grep`.

---

# Summary

- Linux commands are the primary way to interact with the operating system.
- Commands follow the format `command [options] [arguments]`.
- Navigation commands (`pwd`, `ls`, `cd`) help move through the filesystem.
- File management commands (`mkdir`, `cp`, `mv`, `rm`) create and organize files.
- Search commands (`grep`, `find`, `locate`) help locate files and text.
- Text processing commands (`sort`, `uniq`, `cut`, `wc`) manipulate data.
- `sha256sum` is commonly used to verify file integrity.
- Regular practice is the best way to become comfortable with Linux commands.

---

# References

- Ubuntu Documentation
- GNU Coreutils Manual
- Linux Manual Pages (`man`)

| Command | Purpose |
|----------|----------|
| pwd | Show current directory |
| ls | List files |
| cd | Change directory |
| mkdir | Create folder |
| touch | Create file |
| cp | Copy files |
| mv | Move files |
| rm | Delete files |

## Example

```bash
pwd
```

Displays the current working directory.
