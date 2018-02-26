FROM tensorflow/tensorflow:1.4.1-gpu

RUN apt-get update && apt-get install -y  \
         git \
         protobuf-compiler \
         python-pil \
         python-lxml \
	 python-tk \
         libopencv-dev python-opencv  \
         && pip install jupyter Cython\
         && cd ~/ \
         && git clone --recursive https://github.com/GBJim/tfo_training.git \
	 && mv tfo_training models \
	 && cd models/cocoapi/PythonAPI \
	 && make \
	 && rm -rf /root/models/research/object_detection/pycocotools \
	 && mv pycocotools /root/models/research/object_detection \
	 && cd /root/models/research \
         && protoc object_detection/protos/*.proto --python_out=. \
         && cd object_detection/ \ 
         && python download_models.py \
         && rm -rf *tar.gz \
         && apt-get clean
          
ENV PYTHONPATH $PYTHONPATH:/root/models/research:/root/models/research/slim 
WORKDIR /root

CMD /bin/bash
