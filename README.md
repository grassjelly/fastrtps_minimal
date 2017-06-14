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
fastrtpsgen -example x64Linux2.6gcc HelloWorld.idl
```

### Adding Environment for fastrtps and fastcdr
```
set(fastcdr_DIR "$ENV{FASTRTPSHOME}/build/install/lib/fastcdr/cmake")
set(fastrtps_DIR "$ENV{FASTRTPSHOME}/build/install/lib/fastrtps/cmake")
```

### Documentation
* fastrtps (https://github.com/grassjelly/Fast-RTPS)
* fastrtps_minimal (https://github.com/grassjelly/fastrtps_minimal)
