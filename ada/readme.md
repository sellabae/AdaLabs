# Compiling Ada/Fortran on Mac

## CECS524 Lab2 Assignment
1. Setup the environment for ada and fortran
2. Compile an Ada program 'hello.adb', and Run.
3. Compile a Fortran program 'hello.f', and Run.


## To find out gcc version on my computer
```
$ gcc -v
```

## Install GNAT and GFortran
decided to install gnat and gfortran separately from gcc.   
### installing gnat...   
1. [download](http://mirrors.cdn.adacore.com/art/5b071da0c7a447e573318b01)  
2. At the root directory, set PATH to the bin folder by adding the line below in .bash_profile
```
export PATH="$PATH:/Users/username/opt/gnat/2018/bin"
```
3. Apply the change by the command below, or just reopen the terminal
```
$ source .bash_profile
```
4. Compile/Bind/Link Ada file by
```
$ gnatmake hello.adb
```
about [gnatmake](https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gnat_ugn/Running-a-Simple-Ada-Program.html#Running-a-Simple-Ada-Program)  
5. Run Ada program
```
./hello
```
Type './' in front of the executable file to run it.

### installing gfortran...  
1. [download](https://github.com/fxcoudert/gfortran-for-macOS/releases).  
detailed info [here](https://gcc.gnu.org/wiki/GFortranBinaries#MacOS).  
2. compile the fortran code
```
$ gfortran hello.f
```
3. run the executable Fortran program
```
$ ./hello
```
*labels in Fortran have to be the left and give two tab spaces and continue the command*

### other ways...
[MacPorts](https://www.macports.org/) (package name, e.g., "gcc48") - the fastest way to get a developer version of GCC. MacPorts comes with a packing software, but all software is compiled before installation. For the developer version, the "Portfile" is updated approx. weekly.
*but can't figure out what to do next after installing it...*   


## Terminologies

#### GCC
GCC(the GNU Compiler Collection)
[GCC](https://gcc.gnu.org/) supports C, C++, Objective-C, Fortran, Ada, Go
**GNAT** is the GNU Ada compiler, which is part of GCC.
**GFortran** is the GNU Fortran compiler.
installing gcc.. [here](https://gcc.gnu.org/install/binaries.html)

#### GNU
GNU(GNU's Not Unix!)  
GNU is a free UNIX style operating system. GNU's design is Unix-like, but differs from Unix by being free software and containing no Unix code. The GNU project includes an operating system kernel, GNU Hurd

#### POSIX
POSIX(Portable Operating System Interface uniX)  
POSIX is an IEEE standard for Unix's API(Application Programming Interface). If an operating system follows POSIX, that means it's UNIX compatible. LINUX almost follows all POSIX standard, so we consider LINUX is an UNIX compatible OS.

MinGW is actually POSIX compatibility layer for Windows, and Mac OS is a POSIX system.



## hm....
It seems.. if I install XCode on my mac, GCC comes along with it.
Good help about running gcc on my mac from [here](https://www.daniweb.com/programming/software-development/threads/66450/mingw-equivalent-for-osx)
but... it seems XCode version of gcc doesn't support fortran??
....  
gcc installer without xcode on [github](https://github.com/kennethreitz/osx-gcc-installer)
