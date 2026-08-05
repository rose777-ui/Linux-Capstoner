# Module 1.7 – Linux File Permissions

> Phase 1 – Ubuntu & Linux Foundations

---

# Overview

Linux is a multi-user operating system where many users can access the same system. To protect files and directories from unauthorized access, Linux uses a permission-based security model.

Every file and directory has an owner, a group, and a set of permissions that determine who can read, write, or execute it.

Understanding file permissions is essential for Linux administration, cybersecurity, cloud computing, and server security.

---

# Learning Objectives

After completing this module, I can:

- Understand Linux permissions
- Explain Read, Write, and Execute permissions
- Interpret permission strings
- Use chmod
- Use chown
- Use chgrp
- Understand numeric permissions
- Explain umask
- Understand ACL
- Explain Sticky Bit
- Explain SUID
- Explain SGID
- Secure files and directories

---

# Linux Permission Model

Every file has three permission categories.

```
Owner
Group
Others
```

Each category has three permissions.

```
Read
Write
Execute
```

---

# Permission Symbols

| Symbol | Meaning |
|---------|----------|
| r | Read |
| w | Write |
| x | Execute |

---

# Read Permission (r)

Numeric Value

```
4
```

Allows:

- View file contents
- Open files

Example

```bash
cat notes.txt
```

---

# Write Permission (w)

Numeric Value

```
2
```

Allows

- Modify files
- Delete files
- Rename files

Example

```bash
echo "Linux" >> notes.txt
```

---

# Execute Permission (x)

Numeric Value

```
1
```

Allows

- Run programs
- Execute shell scripts
- Enter directories

Example

```bash
./script.sh
```

---

# Permission Layout

Example

```
-rwxr-xr--
```

Breakdown

```
-

File Type

rwx

Owner

r-x

Group

r--

Others
```

---

# File Types

| Symbol | Type |
|----------|------|
| - | File |
| d | Directory |
| l | Symbolic Link |

View permissions

```bash
ls -l
```

Example

```
-rw-r--r--
```

---

# Numeric Permissions

Permission values

```
Read = 4

Write = 2

Execute = 1
```

Total

| Permission | Value |
|-------------|-------|
| r | 4 |
| w | 2 |
| x | 1 |

---

# Common Numeric Permissions

## 777

```
rwxrwxrwx
```

Everyone has full access.

⚠️ Never use on important files.

---

## 755

```
rwxr-xr-x
```

Owner

- Read
- Write
- Execute

Others

- Read
- Execute

Most common for directories.

---

## 644

```
rw-r--r--
```

Owner

- Read
- Write

Others

- Read

Most common for files.

---

## 600

```
rw-------
```

Only owner can access.

Ideal for

- SSH Keys
- Password files
- Private documents

---

# chmod Command

Change permissions.

Syntax

```bash
chmod permissions filename
```

Example

```bash
chmod 755 script.sh
```

Another example

```bash
chmod 644 report.txt
```

---

# Symbolic chmod

Add execute permission

```bash
chmod +x script.sh
```

Remove write permission

```bash
chmod -w notes.txt
```

Owner only

```bash
chmod u+x script.sh
```

Group

```bash
chmod g+w project.txt
```

Others

```bash
chmod o-r file.txt
```

---

# Ownership

Every file belongs to

```
Owner

Group
```

View ownership

```bash
ls -l
```

Example

```
jannat staff notes.txt
```

Owner

```
jannat
```

Group

```
staff
```

---

# chown Command

Change owner.

Syntax

```bash
sudo chown newowner filename
```

Example

```bash
sudo chown jannat report.txt
```

Change owner and group

```bash
sudo chown jannat:developers report.txt
```

---

# chgrp Command

Change group.

Example

```bash
sudo chgrp developers report.txt
```

---

# Groups

A group is a collection of users.

Benefits

- Easier permission management
- Shared project folders
- Better security

View groups

```bash
groups
```

View user information

```bash
id
```

---

# Default Permissions

Default permissions are assigned automatically when a file or directory is created.

Usually

Files

```
666
```

Directories

```
777
```

These are modified by **umask**.

---

# umask

umask removes permission bits from default permissions.

View current umask

```bash
umask
```

Example

```
022
```

Meaning

Files

```
666 - 022 = 644
```

Directories

```
777 - 022 = 755
```

---

# Access Control Lists (ACL)

ACL provides more flexible permissions than the standard Owner-Group-Others model.

View ACL

```bash
getfacl filename
```

Set ACL

```bash
setfacl -m u:student:rwx project
```

Benefits

- Fine-grained permissions
- Better collaboration
- Enterprise environments

---

# Sticky Bit

Sticky Bit prevents users from deleting files they do not own inside shared directories.

Example

```
/tmp
```

Permission

```
drwxrwxrwt
```

Notice

```
t
```

Set Sticky Bit

```bash
chmod +t shared
```

---

# SUID

SUID

```
Set User ID
```

Allows a program to run with the permissions of its owner.

Example

```
passwd
```

Permission

```
-rwsr-xr-x
```

Notice

```
s
```

Set SUID

```bash
chmod u+s program
```

Security Note

Only use SUID when absolutely necessary.

---

# SGID

SGID

```
Set Group ID
```

Files

Program runs with group permissions.

Directories

New files inherit the directory's group.

Set SGID

```bash
chmod g+s project
```

---

# Security Best Practices

✔ Never use **777** unless absolutely necessary.

✔ Use **755** for directories.

✔ Use **644** for regular files.

✔ Store SSH keys with **600**.

✔ Review permissions regularly.

✔ Use groups instead of granting access to everyone.

✔ Apply the principle of least privilege.

---

# Common Mistakes

❌ Using 777 everywhere

❌ Running everything as root

❌ Giving execute permission to text files

❌ Ignoring ownership

❌ Leaving private files readable by others

---

# Practical Exercises

## Exercise 1

Create a file.

```bash
touch report.txt
```

---

## Exercise 2

View permissions.

```bash
ls -l report.txt
```

---

## Exercise 3

Change permission to 644.

```bash
chmod 644 report.txt
```

---

## Exercise 4

Make a script executable.

```bash
chmod +x script.sh
```

---

## Exercise 5

Check current umask.

```bash
umask
```

---

## Exercise 6

Create a shared directory with Sticky Bit.

```bash
mkdir shared
chmod +t shared
ls -ld shared
```

---

## Exercise 7

View file owner.

```bash
ls -l
```

---

## Exercise 8

Display ACL.

```bash
getfacl report.txt
```

---

# Key Terms

| Term | Meaning |
|------|---------|
| r | Read |
| w | Write |
| x | Execute |
| chmod | Change permissions |
| chown | Change owner |
| chgrp | Change group |
| ACL | Access Control List |
| Sticky Bit | Protect shared directories |
| SUID | Execute as file owner |
| SGID | Execute/inherit group permissions |
| umask | Default permission mask |

---

# Summary

- Linux uses a permission-based security model with Owner, Group, and Others.
- The three basic permissions are Read (4), Write (2), and Execute (1).
- Numeric permissions such as 755, 644, and 600 simplify permission management.
- `chmod` changes permissions, while `chown` and `chgrp` manage ownership.
- `umask` controls the default permissions for newly created files and directories.
- ACL extends the standard permission model for more flexible access control.
- Sticky Bit, SUID, and SGID provide advanced permission features but should be used carefully.
- Applying the principle of least privilege helps maintain a secure Linux system.

---

# References

- Ubuntu Documentation
- GNU Coreutils Manual
- Linux Manual Pages (`man chmod`, `man chown`, `man umask`)
