# Programming in Ada
CECS524 Programming Languages

## Terminologies

- GCC(the GNU Compiler Collection)  
[GCC](https://gcc.gnu.org/) supports C, C++, Objective-C, Fortran, Ada, Go  
**GNAT** is the GNU Ada compiler, which is part of GCC.  
**GFortran** is the GNU Fortran compiler.  
installing gcc.. [here](https://gcc.gnu.org/install/binaries.html)

- GNU(GNU's Not Unix!)  
GNU is a free UNIX style operating system. GNU's design is Unix-like, but differs from Unix by being free software and containing no Unix code. The GNU project includes an operating system kernel, GNU Hurd

- POSIX(Portable Operating System Interface uniX)  
POSIX is an IEEE standard for Unix's API(Application Programming Interface). If an operating system follows POSIX, that means it's UNIX compatible. LINUX almost follows all POSIX standard, so we consider LINUX is an UNIX compatible OS.


## Programming Ada/Fortran on Mac

MinGW is actually POSIX compatibility layer for Windows, and Mac OS is a POSIX system.
So.. this means.. what?

To find out which gcc version I have on my computer
```
$ gcc -v
```
It seems.. if I install XCode, GCC comes along with it.
Good help about running gcc on my mac from [here](https://www.daniweb.com/programming/software-development/threads/66450/mingw-equivalent-for-osx)
but... it seems XCode version of gcc doesn't support fortran??

or

gcc installer without xcode on [github](https://github.com/kennethreitz/osx-gcc-installer)

decided to install gnat and gfortran separately from gcc.   
1. installing gnat...   
[installing](http://mirrors.cdn.adacore.com/art/5b071da0c7a447e573318b01)
[info](https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gnat_ugn/Running-a-Simple-Ada-Program.html#Running-a-Simple-Ada-Program)

2. installing gfortran...  
[installing](https://github.com/fxcoudert/gfortran-for-macOS/releases)



[MacPorts](https://www.macports.org/) (package name, e.g., "gcc48") - the fastest way to get a developer version of GCC. MacPorts comes with a packing software, but all software is compiled before installation. For the developer version, the "Portfile" is updated approx. weekly.
