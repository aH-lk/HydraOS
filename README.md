# Basic Operating System in C, C++, Assembly, and Make

## Introduction

In this project, we will develop a basic operating system using a combination of programming languages, including C, C++, Assembly, and build automation with Make. This project aims to provide a fundamental understanding of operating system development and the integration of various languages and tools.

## Technologies Used

- **C**: Used for low-level system programming and core functionality implementation.
- **C++**: Employed for object-oriented programming and higher-level system components.
- **Assembly**: Utilized for low-level hardware interactions and optimizing critical sections of the code.
- **Make**: A  build automation tool, simplifying the build process and managing dependencies.

## Project Structure

```markdown
- 📂 **src**
  - 📂 **bootloader** (Bootloader written in Assembly and C standard libraries)
      - 📂 stage1
        - 📄 boot.asm (Bootloader written in Assembly)
        - 📄 Makefile (Makefile to build stage1)
      - 📂 stage2
        - 📄 boot.asm (Bootloader written in Assembly)
        - 📄 Makefile (Makefile to build stage2)
        - 📄 ctype.c (Standard Library)
        - 📄 ctype.h (Header File)
        - 📄 disk.c (Standard Library)
        - 📄 disk.h (Header File)
        - 📄 fat.c (Standard Library)
        - 📄 fat.h (Header File)
        - 📄 memdefs.h (Header File)
        - 📄 memory.c (Standard Library)
        - 📄 memory.h (Header File)
        - 📄 minmax.h (Header File)
        - 📄 stdio.h (Header File)
        - 📄 stdio.c (Standard Library)
        - 📄 string.h (Header File)
        - 📄 string.c (Standard Library)
        - 📄 entry.asm (Entry Assmebly)
        - 📄 linker.ld (Linker Script)
        - 📄 main.c (Core Bootloader of stage2)
        - 📄 x86.asm (Standard Assembly Library)
        - 📄 x86.h (Header File)
  - 📂 **kernel** (Core kernel functionality in C)
    - 📂 **arch/i686** (Core i686 functionality in C)
      - 📄 gdt.asm (Global Descriptor Table functionality in Assembly)
      - 📄 i8259.h (Intel 8259 PIC Header File)
      - 📄 io.asm (Input/Output Functions for PIC and STDIO in Assembly)
      - 📄 irq.h  (Interrupt Request Header File)
      - 📄 isrs_gen.c (ISR Auto-Gen in C)
      - 📄 gdt.c (Global Descriptor Table functionality in C)
      - 📄 idt.asm (Interrupt Descriptor Table functionality in Assembly)
      - 📄 io.c (Input/Output Functions for PIC and STDIO in Assembly)
      - 📄 isr.asm (Interrupt Status Register Functionality in Assembly)
      - 📄 isrs_gen.inc (ISR Auto-Gen)
      - 📄 gdt.h (Global Descriptor Table Header File)
      - 📄 idt.c Interrupt Descriptor Table Functionality in C)
      - 📄 io.h (Input/Output Header File for PIC)
      - 📄 isr.c (Interrupt Status Register Functionality in C)
      - 📄 pic.h (PIC Information Header File)
      - 📄 i8259.c (Intel 8259 PIC Driver File)
      - 📄 idt.h (Interrupt Descriptor Table Header File)
      - 📄 irq.c (Interrupt Request Functionality in C)
- 📄 isr.h
    - 📂 **hal** (Core HAL functionality in C)
      - 📄 hal.c (HAL File)
      - 📄 hal.h (HAL Header File)
    - 📂 **util** (Core util functionality in C)
      - 📄 binary.h (Header File)
      - 📄 array.h (Header File)
    - 📄 stdio.h (Header File)
    - 📄 stdio.c (Standard Library)
    - 📄 linker.ld (Linker Script)
    - 📄 memory.c (Standard Library)
    - 📄 memory.h (Header File)
    - 📄 main.c (Core Kernel File)
- 📂 **build**
  - 📄 main_floppy.img (Image to run OS)
- 📄 README.md (Project overview and instructions)
```

## Implementation Details

### Bootloader (Assembly)

The bootloader, written in Assembly, is responsible for loading the operating system kernel into memory and transferring control to the kernel code.

### Kernel (C and C++)

- **kernel.c**: Contains low-level functionality such as memory management, hardware interactions, and system calls.
- **kernel.hpp**: Includes class definitions and higher-level system components like process management, file system, and device drivers.

## Build Process with Make

The build process is managed by Make, ensuring efficient compilation and linking of source files. The `Makefilet` file in the `src` directory contains build configurations and dependencies.

### Building the Project

To build the project, execute the following command in the terminal:

```bash
make
```

This command will compile the bootloader, kernel, and other necessary components, generating binary files in the `build` directory.

## Running the Operating System

To run the operating system in an emulator, follow the instructions provided in the `docs/usage.md` file.

## Conclusion

This project demonstrates the development of a basic operating system using a combination of C, C++, Assembly, and Make. By exploring this project, developers can gain insights into low-level system programming, language integration, and build automation, paving the way for more complex operating system projects and system-level optimizations.