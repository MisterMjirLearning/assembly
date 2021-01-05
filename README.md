# Assembly

Stuff from learning x86 assembly

I am using x64 Ubunutu, there are some differences I need to do from the book I'm using

```
$ as --32 foo.s -o foo.o
$ ld -m elf_i386 -s foo.o -o foo 
```

I have created a bash script for this though, make sure you do:
```
$ chmod +x compile.sh
```
to make it executable and
```
$ ./compile.sh foo
```
to use it. (Also make sure you have a 'bin' directory) (Keep in mind this is just for one file executables)
