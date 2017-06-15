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
Make sure CMakeList.txt is correct 
```
rm -rf build
mkdir build
cd build
cmake ..
make
```

### Running Executable
```
./app publisher
```
On new terminal
```
./app subscriber
```

### Documentation
* fastrtps get-started (http://eprosima-fast-rtps.readthedocs.io/en/latest/introduction.html0)
* fastrtps (https://github.com/grassjelly/Fast-RTPS)
* fastrtps_minimal (https://github.com/grassjelly/fastrtps_minimal)
* tutorial (https://youtu.be/JW9yWhekpW4)
