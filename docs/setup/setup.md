# Setup

Run the command
```bash
make
```
This command is supported for Linux, MacOS, and Windows (Use MSYS2)
Next, install QEMU on your machine

## MacOS
To install QEMU we will use Homebrew
If you don't have Homebrew installed on your machine, the run the command
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next, run the command 
```bash
brew install qemu
```

This should install QEMU on your machine

## Linux
- Arch: ```pacman -S qemu```
- Debian/Ubuntu: ```sudo apt-get install ```
- Fedora: ```dnf install @virtualization```
- Gentoo: ```emerge --ask app-emulation/qemu```
- RHEL/CentOS: ```yum install qemu-kvm``` or ```yum install qemu```
- SUSE: ```zypper install qemu```

## Windows
- MSYS2: ```pacman -S mingw-w64-x86_64-qemu```