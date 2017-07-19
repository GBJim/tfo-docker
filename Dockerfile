FROM tensorflow/tensorflow:latest-gpu 


RUN apt-get update && apt-get install -y  \
         git \
         protobuf-compiler \
         python-pil \
         python-lxml \
         libopencv-dev python-opencv  \
         && cd ~/ \
         && git clone https://github.com/GBJim/object_detection.git \
         && protoc object_detection/protos/*.proto --python_out=. \
         && cd object_detection/ \ 
         && python download_models.py \
         && apt-get clean
          
ENV PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim 
WORKDIR /root
CMD /bin/bash
