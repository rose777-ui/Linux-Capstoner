# Module 1.5 – Linux Terminal & Bash Shell

> Phase 1 – Ubuntu & Linux Foundations

---

# Overview

The Linux Terminal is a Command Line Interface (CLI) that allows users to interact with the operating system by typing commands. Unlike graphical interfaces (GUI), the terminal provides direct control over files, processes, users, and system resources.

The default shell in Ubuntu is **Bash (Bourne Again Shell)**, one of the most widely used command interpreters in Linux.

Mastering the terminal is essential for Linux administration, cybersecurity, cloud computing, DevOps, and software development.

---

# Learning Objectives

After completing this module, I can:

- Understand the Linux Terminal.
- Explain what a Shell is.
- Understand Bash.
- Execute Linux commands.
- Navigate directories.
- Use absolute and relative paths.
- Use wildcards.
- Redirect input and output.
- Use pipes.
- Create aliases.
- View command history.
- Understand environment variables.

---

# What is the Terminal?

The Terminal is a program that allows users to interact with Linux using text commands.

Instead of clicking icons, users type commands to perform tasks.

Example:

```bash
pwd
```

Output

```
/home/jannat
```

---

# Advantages of Using Terminal

- Faster than GUI
- Uses fewer system resources
- Suitable for remote administration
- Powerful automation
- Better for cybersecurity tasks
- Easier troubleshooting

---

# What is a Shell?

A Shell is a command interpreter that receives user commands and sends them to the Linux Kernel.

Relationship

```
User

↓

Terminal

↓

Shell

↓

Kernel

↓

Hardware
```

The shell acts as the bridge between the user and the operating system.

---

# Bash

Bash stands for

**Bourne Again SHell**

It is the default shell in Ubuntu.

Features

- Command history
- Auto-completion
- Variables
- Scripting
- Aliases
- Pipes
- Redirection

Check current shell

```bash
echo $SHELL
```

Example Output

```
/bin/bash
```

---

# Terminal Prompt

Example

```
jannat@ubuntu:~$
```

Meaning

| Part | Description |
|------|-------------|
| jannat | Username |
| ubuntu | Computer Name |
| ~ | Current Directory |
| $ | Normal User |
| # | Root User |

---

# Command Syntax

General format

```
command [options] [arguments]
```

Example

```bash
ls -l Documents
```

Where

- ls = command
- -l = option
- Documents = argument

---

# Current Working Directory

Display current directory

```bash
pwd
```

Example Output

```
/home/jannat/Documents
```

---

# Listing Files

```bash
ls
```

Long listing

```bash
ls -l
```

Hidden files

```bash
ls -a
```

Human-readable sizes

```bash
ls -lh
```

---

# Absolute Path

Starts from the root directory.

Example

```
/home/jannat/Documents/file.txt
```

Always begins with

```
/
```

---

# Relative Path

Starts from the current directory.

Example

```
Documents/file.txt
```

Does not begin with `/`.

---

# Special Directory Symbols

| Symbol | Meaning |
|---------|---------|
| . | Current Directory |
| .. | Parent Directory |
| ~ | Home Directory |
| / | Root Directory |

Examples

```bash
cd ..
```

```bash
cd ~
```

```bash
cd /
```

---

# Wildcards

Wildcards help match multiple files.

### *

Matches any number of characters.

Example

```bash
ls *.txt
```

Lists all text files.

---

### ?

Matches one character.

Example

```bash
ls file?.txt
```

Matches

```
file1.txt
file2.txt
```

---

### []

Character range.

Example

```bash
ls file[1-5].txt
```

---

# Environment Variables

Environment variables store system information.

Display PATH

```bash
echo $PATH
```

Display HOME

```bash
echo $HOME
```

Display USER

```bash
echo $USER
```

Common variables

| Variable | Meaning |
|-----------|---------|
| HOME | User Home |
| USER | Current User |
| PATH | Search Path |
| SHELL | Current Shell |

---

# Command History

View previous commands

```bash
history
```

Repeat previous command

```bash
!!
```

Execute command number

```bash
!25
```

Search history

```
Ctrl + R
```

---

# Input and Output Redirection

### >

Overwrite output

```bash
ls > files.txt
```

---

### >>

Append output

```bash
echo "Linux" >> notes.txt
```

---

### <

Input redirection

```bash
sort < names.txt
```

---

# Pipes

Pipe operator

```
|
```

Passes output from one command to another.

Example

```bash
ls | less
```

Another example

```bash
cat file.txt | grep Linux
```

---

# Command Substitution

Use output of another command.

Example

```bash
echo $(date)
```

---

# Aliases

Create shortcut commands.

Example

```bash
alias ll="ls -la"
```

Use

```bash
ll
```

Remove alias

```bash
unalias ll
```

---

# Help Commands

Manual pages

```bash
man ls
```

Short help

```bash
ls --help
```

Information pages

```bash
info ls
```

---

# Keyboard Shortcuts

| Shortcut | Function |
|-----------|----------|
| Ctrl + C | Stop command |
| Ctrl + L | Clear screen |
| Ctrl + D | Logout |
| Ctrl + R | Search history |
| Tab | Auto-complete |
| Up Arrow | Previous command |

---

# Practical Examples

Display current directory

```bash
pwd
```

Go to home directory

```bash
cd ~
```

List files

```bash
ls
```

Show hidden files

```bash
ls -a
```

Display home path

```bash
echo $HOME
```

Create alias

```bash
alias cls="clear"
```

---

# Best Practices

- Learn keyboard shortcuts.
- Use Tab auto-completion.
- Read manual pages before using unfamiliar commands.
- Avoid running commands as root unless necessary.
- Verify commands before pressing Enter.
- Use aliases for frequently used commands.

---

# Common Mistakes

- Forgetting spaces between commands and options.
- Running commands from the wrong directory.
- Using absolute paths incorrectly.
- Overwriting files accidentally with `>`.
- Misusing wildcards.
- Forgetting to quote filenames containing spaces.

---

# Practical Exercises

### Exercise 1

Display current directory.

```bash
pwd
```

---

### Exercise 2

Navigate to the home directory.

```bash
cd ~
```

---

### Exercise 3

List hidden files.

```bash
ls -a
```

---

### Exercise 4

Display PATH.

```bash
echo $PATH
```

---

### Exercise 5

Create an alias.

```bash
alias ll="ls -la"
```

---

### Exercise 6

Redirect output.

```bash
ls > files.txt
```

---

### Exercise 7

Use a pipe.

```bash
history | less
```

---

# Key Terms

| Term | Meaning |
|------|---------|
| Terminal | Command Line Interface |
| Shell | Command Interpreter |
| Bash | Default Ubuntu Shell |
| CLI | Command Line Interface |
| PATH | Command Search Path |
| Alias | Shortcut Command |
| Pipe | Connect Commands |
| Redirection | Send Input/Output |

---

# Summary

- The Terminal provides direct access to the Linux operating system through text commands.
- Bash is the default shell in Ubuntu and acts as the interface between the user and the Linux kernel.
- Linux commands follow the format: `command [options] [arguments]`.
- Absolute paths start from the root (`/`), while relative paths start from the current directory.
- Wildcards help work with multiple files efficiently.
- Environment variables store useful system information such as `HOME`, `USER`, and `PATH`.
- Redirection (`>`, `>>`, `<`) controls command input and output.
- Pipes (`|`) combine commands to perform more powerful operations.
- Aliases simplify frequently used commands.
- Learning the terminal is the foundation for Linux administration, cybersecurity, and automation.

---

# References

- Ubuntu Documentation
- GNU Bash Manual
- Linux Manual Pages (`man bash`)
- GNU Core Utilities Documentation
