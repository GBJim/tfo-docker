# This is a Dockerfile that builds a docker image of [Tensor Flow Object Detection Models](https://github.com/tensorflow/models/tree/master/object_detection)

## The current version supports CUDA8.0. Be sure you are using Nvidia Driver >= 367 


<p align="center">
  <img src="https://github.com/tensorflow/models/raw/master/object_detection/g3doc/img/kites_detections_output.jpg" width=676 height=450>
</p>

## Build the image:
1.Clone this repository
```Shell
git clone https://github.com/GBJim/tfo-docker.git
```

2.Build the image via the docker file
```Shell
cd tfo-docker
docker build -t <IMAGE_NAME_YOU_LIKE> .
```

## Run the demo:
1.Start the image with nvidia-docker
```Shell 
nvidia-docker run -ti <IMAGE_NAME_YOU_LIKE>
```

2.Once you are attached to the image, move to the pvanet directory
```Shell 
cd ~/object_detection
```

3.Run the demo.py
```Shell 
python demo.py
```
## Models
1.The following are models you can use.

| Model name  | Speed | COCO mAP | Outputs |
| ------------ | :--------------: | :--------------: | :-------------: |
| [ssd_mobilenet_v1_coco](http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz) | fast | 21 | Boxes |
| [ssd_inception_v2_coco](http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_11_06_2017.tar.gz) | fast | 24 | Boxes |
| [rfcn_resnet101_coco](http://download.tensorflow.org/models/object_detection/rfcn_resnet101_coco_11_06_2017.tar.gz)  | medium | 30 | Boxes |
| [faster_rcnn_resnet101_coco](http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_coco_11_06_2017.tar.gz) | medium | 32 | Boxes |
| [faster_rcnn_inception_resnet_v2_atrous_coco](http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz) | slow | 37 | Boxes |

2.To specify the model you want to use. For example, set the 3rd model RFCN-RESNET101
```Shell
python demo.py --net 3 
```
