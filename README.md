# CS-F321 Operating Systems
## Class Notes and Homework Repository :dizzy: :earth_americas:
  ```
  #include <iostream>
  int main() {
    std::cout << "Hello traveler, here's a towel for protection. Take care of yourself out there." << std::endl;
    return 0;
  }
  ```

### Class Repositories
  - [sowens23-GitHub](https://github.com/sowens23)
  - [GitHubPortal](https://github.com/sowens23/Newbie-Gains/blob/main/README.md)
  - [CS-F321 Class Homepage](https://canvas.alaska.edu/courses/23575/modules)

### Assembly/C# References
  - [x86 CheatSheet](https://docs.google.com/document/d/1hwABu-SL6u2cdhVkjOCUU6T0UyALujep1NfwYfQzWSo/edit)
  - [ARM CheatSheet](https://docs.google.com/document/d/1ozon1FnGTX7LZFA1JKBaXTrAZxlJNj0jMzrKgaUd_zA/edit#heading=h.8lf08sx6cr75)
  - [Assembly CheatSheet](https://docs.google.com/document/d/1hwABu-SL6u2cdhVkjOCUU6T0UyALujep1NfwYfQzWSo/edit)
  - [printf reference](https://cplusplus.com/reference/cstdio/printf/)
  - [OpCodes](https://www.sandile.org/x86/)

# Class Notes and Assignments
  | Weekly Notes | Assignments | Other Notes |
  | --- | --- | --- |
  | [Week-1](#Week-1) | [HW00](https://github.com/sowens23/CS-F301/tree/main/homework) | |

# Week-3
[Top](#TOP)
## 2025-01-29
  - exit() will request OS to delete program
  - wait() will relay status of child to parent
  - abort() will terminate execution of child process

# Week-1 Introduction to OS
[Top](#TOP)
## 2025-01-17
  ### Getting into the Chinook HPC Cluster
  - Username: sowens23@chinook04.alaska.edu 
## 2025-01-15
  ### I/O Structure
  - When I/O starts, control only returns to the user after it has finished.
    - Wait instruction idles CPU till next interrupt
  - **System Call** - Requests to the OS to allow user to wait for I/O completion.
  - **Device-Status Table** - Contains entry for each I/O device indicating it's type, address, and state.
## 2025-01-13
  - What is an **operating system**: A program that acts as an intermediary between a user of a computer and the computer hardware
  - OS is a **resource allocator**
    - Manages all resources
    - Decides between conflicting requests for efficient and fair resource use
  - OS is a **control program**
    - Controls execution of programs to prevent errors and improper use of computer
  - It's goals are:
    1. To execute user programs.
    2. Make computer system convenient to use.
    3. Use computer hardware in efficient manner.
  - **Computer systems** can be divided into four categories
    1. Hardware
    2. Operating System
    3. Application programs
    4. Users
- **Bootstrap program** is loaded at power-up or reboot.
  - Typically stoed in ROM or EPROM, known as **firmware**
  - Initializes all aspects of system
  - Loads OS kernel and starts execution.
- **Interrupt** transfers control to the interrupt service routine, generally through the **interrupt vector**, which contains addresses of service routine.
  - Interrupt archnitecture must save addresses of interrupted instruction
  - A **trap** or **exception** is a software-generated interrupt caused either by an error or a user request.
  - An operating system is **interrupt drive**
- Interrupt Handling:
  1. The operating sys preserves state of CPU in registers and with the program counter.
  2. OS determines which type of interrupt has occurred (**polling** or **Vectored**)
    - **Polling**: Does not have the identity of device
    - **Vectored**: Has identity of the device
  