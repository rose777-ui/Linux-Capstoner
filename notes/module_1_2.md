# Module 1.2 – Linux Filesystem

> Phase 1 – Ubuntu & Linux Foundations

---

# Overview

The Linux Filesystem is the foundation of every Linux operating system. Unlike Windows, Linux organizes all files and directories into a single hierarchical structure beginning from the **root directory (/)**.

Understanding the Linux filesystem is essential for system administration, cybersecurity, ethical hacking, digital forensics, and server management.

---

# Learning Objectives

After completing this module, I can:

- Understand the Linux Filesystem Hierarchy Standard (FHS)
- Explain the purpose of major Linux directories
- Navigate the filesystem using terminal commands
- Understand file organization in Linux
- Explain security importance of different directories
- Identify which directories should be backed up
- Locate configuration files and user data

---

# What is a Filesystem?

A filesystem is the method used by an operating system to organize, store, retrieve, and manage files on a storage device.

A filesystem keeps track of:

- File names
- File locations
- Permissions
- Ownership
- Metadata
- Storage allocation

Without a filesystem, the operating system cannot locate files efficiently.

---

# Linux Filesystem Hierarchy Standard (FHS)

Linux follows the **Filesystem Hierarchy Standard (FHS)**.

Everything starts from one directory:

```
/
```

This is called the **Root Directory**.

Example:

```
/
├── bin
├── sbin
├── etc
├── home
├── root
├── usr
├── var
├── proc
├── sys
├── dev
├── tmp
├── boot
├── opt
├── media
├── mnt
├── run
└── srv
```

Unlike Windows, Linux does not use separate drive letters like **C:** or **D:**. Every storage device is mounted somewhere under the root (`/`) directory.

---

# Root Directory (/)

The root directory is the top-level directory in Linux.

All files and folders originate from this directory.

Example:

```
/
```

Do not confuse **/** (root directory) with **/root** (root user's home directory).

---

# /bin

Meaning:

```
Binary Executables
```

Contains essential command-line programs required by all users.

Examples:

```
ls
cp
mv
rm
cat
pwd
echo
mkdir
```

Example:

```bash
ls /bin
```

Security Importance:

- Essential system commands
- Should not be modified without administrative permission

Backup Importance:

Not usually backed up because packages can reinstall these binaries.

---

# /sbin

Contains system administration commands.

Examples:

```
shutdown
reboot
fdisk
mkfs
fsck
```

Mostly used by the root user.

Example:

```bash
ls /sbin
```

Security Importance:

Contains powerful administrative utilities.

---

# /etc

The configuration directory.

Stores system-wide configuration files.

Examples:

```
passwd
shadow
hosts
fstab
ssh
network
```

Example:

```bash
cd /etc
```

Security Importance:

Extremely important.

Changing the wrong configuration file may prevent Linux from booting correctly.

Backup Importance:

Always include `/etc` in backups.

---

# /home

Stores personal user data.

Example:

```
/home/jannat
```

Contains

- Documents
- Downloads
- Pictures
- Videos
- Desktop
- Projects

Example:

```bash
cd /home
```

Security Importance:

Contains personal and sensitive data.

Backup Importance:

One of the most important directories to back up.

---

# /root

Home directory of the root (administrator) user.

Example:

```
/root
```

Only the root user can access this directory by default.

Security Importance:

Contains administrator files and scripts.

---

# /usr

Contains user applications and shared resources.

Examples:

```
Programs
Libraries
Manual pages
Documentation
```

Subdirectories:

```
/usr/bin
/usr/lib
/usr/share
```

Example:

```bash
ls /usr/bin
```

Security Importance:

Contains installed software.

---

# /var

Variable data directory.

Contains files that frequently change.

Examples:

```
Logs
Mail
Cache
Databases
Print queues
```

Important subdirectories

```
/var/log
/var/cache
```

Example:

```bash
cd /var/log
```

Security Importance:

Very important for cybersecurity.

Logs help detect attacks and troubleshoot problems.

Backup Importance:

Important for servers and forensic investigations.

---

# /proc

A virtual filesystem.

Does not contain real files.

Provides information about

- CPU
- Memory
- Running Processes
- Kernel

Example:

```bash
cat /proc/cpuinfo
```

Example:

```bash
cat /proc/meminfo
```

Useful for system monitoring.

---

# /sys

Provides information about hardware and kernel devices.

Example:

```bash
ls /sys
```

Used by system administrators and kernel developers.

---

# /dev

Contains device files.

Everything in Linux is treated as a file.

Examples:

```
Hard Drives
USB Devices
Keyboard
Mouse
Terminal
```

Example:

```bash
ls /dev
```

Common device files:

```
/dev/sda
/dev/null
/dev/random
/dev/tty
```

---

# /tmp

Temporary storage.

Used by applications during execution.

Files may be deleted automatically after reboot.

Example:

```bash
cd /tmp
```

Security Note:

Sensitive data should never remain in `/tmp`.

---

# /boot

Contains files required to start Linux.

Includes

- Linux Kernel
- GRUB
- Initial RAM Disk

Example:

```bash
ls /boot
```

Security Importance:

Critical.

Deleting files here may make the system unbootable.

---

# /opt

Stores optional third-party software.

Examples

```
Google Chrome
VMware
Commercial Applications
```

---

# /media

Automatically mounts removable devices.

Examples

```
USB Drives
DVDs
External Hard Drives
```

Example

```bash
ls /media
```

---

# /mnt

Temporary mount location.

Mostly used manually by administrators.

Example

```bash
sudo mount /dev/sdb1 /mnt
```

---

# /run

Stores runtime information.

Contents disappear after reboot.

Includes

- Process IDs
- Socket Files
- Temporary Runtime Data

---

# /srv

Stores data for services.

Example

```
FTP Server
Web Server
File Server
```

---

# Filesystem Navigation Commands

| Command | Purpose |
|----------|----------|
| pwd | Show current directory |
| ls | List files |
| cd | Change directory |
| tree | Display directory tree |
| find | Search files |
| locate | Locate files quickly |

Examples

```bash
pwd
```

```bash
ls
```

```bash
cd /etc
```

```bash
cd /home
```

```bash
tree
```

---

# Security Importance of Directories

| Directory | Security Level |
|------------|---------------|
| /etc | Very High |
| /boot | Critical |
| /home | High |
| /var/log | High |
| /root | Critical |
| /tmp | Medium |
| /usr | Medium |

---

# Backup Importance

Always back up:

- /home
- /etc
- /var
- Databases
- Important scripts

Usually no need to back up:

- /proc
- /sys
- /tmp
- /run

These directories are regenerated by the system.

---

# Best Practices

- Keep user files inside `/home`.
- Do not edit system files unless necessary.
- Regularly monitor `/var/log`.
- Protect `/etc` configuration files.
- Back up important directories frequently.
- Use permissions to restrict unauthorized access.

---

# Common Mistakes

- Deleting files from `/boot`
- Editing `/etc` without backups
- Running commands as root unnecessarily
- Storing permanent files in `/tmp`
- Confusing `/` with `/root`

---

# Practical Exercises

### Exercise 1

Display your current directory.

```bash
pwd
```

---

### Exercise 2

List the contents of the root directory.

```bash
ls /
```

---

### Exercise 3

Navigate to your home directory.

```bash
cd ~
```

---

### Exercise 4

View CPU information.

```bash
cat /proc/cpuinfo
```

---

### Exercise 5

View memory information.

```bash
cat /proc/meminfo
```

---

### Exercise 6

Display system logs.

```bash
cd /var/log
ls
```

---

# Key Terms

| Term | Meaning |
|------|---------|
| Filesystem | Organizes files and directories |
| Root | Top-level directory |
| FHS | Filesystem Hierarchy Standard |
| Mount | Attach a storage device |
| Device File | Hardware represented as a file |
| Configuration | System settings |
| Log | Record of system events |

---

# Summary

- Linux organizes all files under a single root directory (`/`).
- The Filesystem Hierarchy Standard (FHS) defines the purpose of each directory.
- `/bin` and `/sbin` contain essential system commands.
- `/etc` stores configuration files.
- `/home` contains user data and should be backed up regularly.
- `/var/log` stores system logs used for troubleshooting and security.
- `/proc` and `/sys` provide runtime and hardware information.
- `/boot` contains files needed to start Linux.
- Proper understanding of the filesystem is essential for Linux administration and cybersecurity.

---

# References

- Filesystem Hierarchy Standard (FHS)
- Ubuntu Documentation
- Linux Manual Pages
