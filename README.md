# NachOS

Practice of Nachos.

## Download the NachOS

1. [nachos-4.0](http://cc.ee.ntu.edu.tw/~farn/courses/OS/OS2015/projects/project.1/nachos-4.0.tar.gz)
2. [mips-x86.linux-xgcc](http://cc.ee.ntu.edu.tw/~farn/courses/OS/OS2015/projects/project.1/mips-x86.linux-xgcc.tar.gz)

## Use the Docker Image

1. Build the image:

```bash
docker build . -t nachos/nachos_build:latest
```

2. Enter the contaiener and share the volume:

```bash
docker run -it --rm -v $PATH_TO_NACHOS:/home/nachos nachos/nachos_build:latest
```

3. Build the NachOS:

```bash
export PATH=$PATH:/mips-x86.linux-xgcc
cd code/
make
```

4. Do the test:

```bash
cd code/userprog/
./nachos -e ../test/test1
```

## Reference

1. [NachOS](https://homes.cs.washington.edu/~tom/nachos/)
2. [Nachos Introduction](https://jeffprogrammer.wordpress.com/2016/10/31/作業系統-nachos-簡介/)
