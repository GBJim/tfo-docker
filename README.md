# This is a Dockerfile that builds a docker image of [Tensor Flow Object Detection Models](https://github.com/tensorflow/models/tree/master/object_detection)

## The current version supports CUDA8.0. Be sure you are using Nvidia Driver >= 367 



## Build the image:
1.Clone this repository
```Shell
git clone http://172.16.15.205/ainvr/tfo-docker.git
```

2.Build the image via the docker file
```Shell
cd tfo-docker
docker build -t <IMAGE_NAME_YOU_LIKE> .
```

## Run the Docker image:
1.Start the image with nvidia-docker. Mounting the default data volume and port mapping is recommended.
```Shell 
nvidia-docker run -tiv /home/chunhao/data:/root/data -p <PORT_YOU_LIKE>:8888 <IMAGE_NAME_YOU_LIKE>
```



