# Module 1.4 – Linux Kernel

> Phase 1 – Ubuntu & Linux Foundations

---

# Overview

The Linux Kernel is the core component of the Linux operating system. It acts as a bridge between the computer hardware and user applications. Every program running on Linux depends on the kernel to access hardware resources such as the CPU, memory, storage, and network devices.

The Linux kernel is open source, highly secure, stable, and widely used in servers, cloud platforms, Android devices, supercomputers, and cybersecurity environments.

---

# Learning Objectives

After completing this module, I can:

- Define the Linux Kernel.
- Explain the responsibilities of the kernel.
- Understand monolithic kernel architecture.
- Explain kernel modules.
- Understand system calls.
- Explain device drivers.
- Understand interrupts.
- Explain process scheduling.
- Understand context switching.
- Use basic kernel-related commands.

---

# What is the Linux Kernel?

The Linux Kernel is the central part of the operating system.

It is responsible for managing:

- CPU
- Memory
- Processes
- Hardware
- Filesystems
- Device Drivers
- Networking
- Security

The kernel loads immediately after the bootloader (GRUB) during system startup.

---

# Kernel Architecture

```
+-----------------------------+
|      User Applications      |
+-----------------------------+
            |
            | System Calls
            |
+-----------------------------+
|        Linux Kernel         |
|-----------------------------|
| Process Management          |
| Memory Management           |
| File Systems                |
| Device Drivers              |
| Networking                  |
| Security                    |
+-----------------------------+
            |
            |
+-----------------------------+
|        Hardware             |
+-----------------------------+
```

The kernel serves as the communication layer between software and hardware.

---

# Responsibilities of the Kernel

## 1. Process Management

The kernel creates, schedules, and terminates processes.

Responsibilities:

- Create new processes
- Stop processes
- Switch between processes
- Allocate CPU time

---

## 2. Memory Management

The kernel controls RAM.

Responsibilities:

- Allocate memory
- Free memory
- Manage virtual memory
- Swap memory pages

Example:

```
RAM Full
↓

Swap Space Used
```

---

## 3. File System Management

The kernel manages:

- Reading files
- Writing files
- File permissions
- Storage devices

Supported filesystems include:

- ext4
- FAT32
- NTFS
- XFS

---

## 4. Device Management

Linux treats almost every hardware device as a file.

Examples:

```
Keyboard
Mouse
Hard Disk
USB Drive
Printer
```

Device files are stored in:

```
/dev
```

---

## 5. Networking

The kernel handles:

- TCP/IP
- UDP
- Routing
- Firewall communication
- Network interfaces

---

## 6. Security

The kernel enforces:

- User permissions
- Process isolation
- Memory protection
- Access control

---

# Monolithic Kernel

Linux uses a **Monolithic Kernel**.

Characteristics:

- Most operating system services run inside the kernel.
- High performance.
- Direct communication between kernel components.

Advantages:

- Fast
- Efficient
- Stable

Disadvantages:

- A faulty kernel component may affect the whole system.

---

# Kernel Modules

Kernel modules are pieces of code that can be loaded or unloaded without restarting the system.

Examples:

- USB drivers
- Filesystem drivers
- Network drivers

Advantages:

- Smaller kernel
- Flexible
- Easier hardware support

List loaded modules:

```bash
lsmod
```

---

# Device Drivers

A device driver allows the operating system to communicate with hardware.

Examples:

- Graphics Driver
- Network Driver
- Printer Driver
- USB Driver

Display driver information:

```bash
modinfo <module_name>
```

Example:

```bash
modinfo usb_storage
```

---

# System Calls

Applications cannot access hardware directly.

Instead, they request services from the kernel using **System Calls**.

Example:

```
Application
↓

System Call

↓

Kernel

↓

Hardware
```

Common system calls:

- open()
- read()
- write()
- close()
- fork()
- exec()

---

# Interrupts

An interrupt is a signal sent to the CPU requesting immediate attention.

Examples:

- Keyboard press
- Mouse movement
- Network packet arrival
- USB insertion

The CPU pauses its current task, handles the interrupt, then resumes.

---

# Scheduler

The scheduler decides:

- Which process runs next.
- How long each process runs.
- CPU allocation.

Goals:

- Fairness
- Performance
- Responsiveness

---

# Context Switching

A context switch occurs when the CPU changes from one running process to another.

Example:

```
Process A
↓

CPU

↓

Process B

↓

CPU

↓

Process C
```

The kernel saves the state of the current process and restores the next one.

---

# Kernel Space vs User Space

| User Space | Kernel Space |
|------------|--------------|
| Applications | Kernel code |
| Limited privileges | Full privileges |
| Cannot access hardware directly | Direct hardware access |

Applications must use system calls to request kernel services.

---

# Kernel Commands

### Show kernel version

```bash
uname -r
```

---

### Show detailed kernel information

```bash
uname -a
```

---

### List loaded kernel modules

```bash
lsmod
```

---

### Display module information

```bash
modinfo <module_name>
```

---

### Display kernel messages

```bash
dmesg
```

---

### Show CPU information

```bash
lscpu
```

---

### Show memory information

```bash
free -h
```

---

# Practical Exercises

### Exercise 1

Display the Linux kernel version.

```bash
uname -r
```

---

### Exercise 2

Display full kernel information.

```bash
uname -a
```

---

### Exercise 3

List loaded kernel modules.

```bash
lsmod
```

---

### Exercise 4

Display kernel boot messages.

```bash
dmesg | less
```

---

### Exercise 5

View CPU details.

```bash
lscpu
```

---

# Security Notes

- Keep the Linux kernel updated.
- Install kernel updates from trusted repositories.
- Load only trusted kernel modules.
- Restrict root access.
- Monitor kernel logs for unusual events.

---

# Best Practices

- Use the latest stable LTS kernel.
- Remove unused kernel modules.
- Monitor kernel logs with `dmesg`.
- Backup important data before major kernel updates.
- Avoid modifying kernel parameters unless necessary.

---

# Common Mistakes

- Running outdated kernels.
- Loading unknown kernel modules.
- Ignoring kernel security updates.
- Confusing the kernel with the operating system.
- Modifying kernel settings without backups.

---

# Key Terms

| Term | Meaning |
|------|---------|
| Kernel | Core of Linux |
| Module | Loadable kernel component |
| Driver | Software for hardware communication |
| System Call | Interface between applications and kernel |
| Scheduler | Chooses which process runs |
| Interrupt | Hardware/software signal to CPU |
| Context Switch | CPU changes from one process to another |
| Kernel Space | Privileged operating system memory |

---

# Summary

- The Linux Kernel is the core of the operating system.
- It manages processes, memory, hardware, filesystems, networking, and security.
- Linux uses a monolithic kernel architecture with support for loadable modules.
- Applications communicate with hardware through system calls.
- The scheduler allocates CPU time among processes.
- Context switching enables multitasking.
- Keeping the kernel updated improves security and stability.
- Commands like `uname`, `lsmod`, `modinfo`, and `dmesg` help inspect kernel information.

---

# References

- Linux Kernel Documentation
- Ubuntu Documentation
- GNU/Linux Manual Pages
- Linux Foundation Documentation
- 
