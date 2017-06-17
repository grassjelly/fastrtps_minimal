### Building application
To build minimal application, first define the topic and its type
```
struct app
{
    type topic;
};
```

First time build:
```
$ ./build.sh
```
Subsequent compile:
Remove build folder
```
$ ./compile.sh
```

### Running Executable
Change directory to build directory
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
