#!/bin/bash
#X11
sudo xhost +local:root

#Pull update docker image
#sudo docker pull intflow/yolov10:latest

#Run Docker
sudo docker run --name yoloe \
--gpus all \
--mount type=bind,src=/home/intflow/works,dst=/works \
--mount type=bind,src=/DL_data_big,dst=/DL_data_big \
--mount type=bind,src=/DL_data_super_hdd,dst=/DL_data_super_hdd \
--mount type=bind,src=/DL_data_super_ssd,dst=/DL_data_super_ssd \
--net=host \
--privileged \
--ipc=host \
--workdir /works \
-it ultralytics/ultralytics:latest /bin/bash

