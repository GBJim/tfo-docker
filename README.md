# This is a Dockerfile that builds a docker image of [Tensor Flow Object Detection Models](https://github.com/tensorflow/models/tree/master/object_detection)
## WARNING! The detection of speed of this Docker image is much slower than . Please refer to [this thread](https://github.com/tensorflow/models/issues/1715) for more detail
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

## Available Objects
1. person
2. bicycle
3. car
4. motorcycle
5. airplane
6. bus
7. train
8. truck
9. boat
10. traffic light
11. fire hydrant
12. stop sign
13. parking meter
14. bench
15. bird
16. cat
17. dog
18. horse
19. sheep
20. cow
21. elephant
22. bear
23. zebra
24. giraffe
25. backpack
26. umbrella
27. handbag
28. tie
29. suitcase
30. frisbee
31. skis
32. snowboard
33. sports ball
34. kite
35. baseball bat
36. baseball glove
37. skateboard
38. surfboard
39. tennis racket
40. bottle
41. wine glass
42. cup
43. fork
44. knife
45. spoon
46. bowl
47. banana
48. apple
49. sandwich
50. orange
51. broccoli
52. carrot
53. hot dog
54. pizza
55. donut
56. cake
57. chair
58. couch
59. potted plant
60. bed
61. dining table
62. toilet
63. tv
64. laptop
65. mouse
66. remote
67. keyboard
68. cell phone
69. microwave
70. oven
71. toaster
72. sink
73. refrigerator
74. book
75. clock
76. vase
77. scissors
78. teddy bear
79. hair drier
80. toothbrush
