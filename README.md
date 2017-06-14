### Building application
To build minimal application, first define the topic
```
// HelloWorld.idl
struct HelloWorld
{
    string msg;
};
```

On Linux:
```
rm -rf gen
mkdir gen
cd gen

fastrtpsgen -example x64Linux2.6gcc HelloWorld.idl
```

### Making Executable
Write CMakeList.txt and Makefile
```
rm -rf build
mkdir build
cd build
cmake ..
make
```
### Documentation
* fastrtps (https://github.com/grassjelly/Fast-RTPS)
* fastrtps_minimal (https://github.com/grassjelly/fastrtps_minimal)
