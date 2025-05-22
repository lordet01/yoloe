#!/bin/bash

#sudo docker login docker.io -u kmjeon -p # Type yourself

sudo docker commit yolov10_25.03 yolov10:25.03
sudo docker tag yolov10:25.03 intflow/yolov10:25.03
sudo docker push intflow/yolov10:25.03