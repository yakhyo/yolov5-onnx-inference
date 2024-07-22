# YOLOv5 ONNX Object Detection Inference

![Downloads](https://img.shields.io/github/downloads/yakhyo/yolov5-onnx-inference/total)

<video controls autoplay loop src="https://github.com/user-attachments/assets/f988c823-0638-44b3-be7e-a77fe423e275" muted="false"></video>
Link: https://youtu.be/Snyg0RqpVxY

This repository contains code and instructions for performing object detection using YOLOv5 inference using ONNX Runtime.
## Features

- Inference using ONNX Runtime using GPU (tested on Ubuntu).
- Easy-to-use Python scripts for inference.
- Supports multiple input formats: image, video or webcam.

## Installation

#### Clone the Repository

```bash
git clone https://github.com/yourusername/yolov5-onnx-inference.git
cd yolov5-onnx-inference
```

#### Install Required Packages

```bash
pip install -r requirements.txt
```

## Usage

Before running inference, you need to download weights of YOLOv5 model weights in ONNX format.

#### Download weights (Linux)

```bash
download.sh yolov5s
```

#### Download weights from following links

**Note:** The weights are saved in FP32.

| Model Name | ONNX Model Link                                                                                       | Number of Parameters | Model Size |
| ---------- | ----------------------------------------------------------------------------------------------------- | -------------------- | ---------- |
| YOLOv5n    | [yolov5n.onnx](https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0/yolov5n.onnx) | 1.9M                 | 8 MB       |
| YOLOv5s    | [yolov5s.onnx](https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0/yolov5s.onnx) | 7.2M                 | 28 MB      |
| YOLOv5m    | [yolov5m.onnx](https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0/yolov5m.onnx) | 21.2M                | 84 MB      |
| YOLOv5l    | [yolov5l.onnx](https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0/yolov5l.onnx) | 46.5M                | 176 MB     |
| YOLOv5x    | [yolov5x.onnx](https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0/yolov5x.onnx) | 86.7M                | 332 MB     |

<br>

> If you have custome weights, you can convert your weights to ONNX format. Follow the instructions in the [YOLOv5 repository](https://github.com/ultralytics/yolov5) to convert your model. You can use converted onnx model with this repo.

#### Inference

```bash
python main.py --weights weights/yolov5s.onnx --source assets/vid_input.mp4 # video
                                              --source 0 --view-img # webcam and display
                                              --source assets/img_input.jpg # image
```

- To save results add `--save-img` argument and results will be saved under `runs` folder
- To display video add `--view-img` argument

**Command Line Arguments**

```
usage: main.py [-h] [--weights WEIGHTS] [--source SOURCE] [--img-size IMG_SIZE [IMG_SIZE ...]] [--conf-thres CONF_THRES] [--iou-thres IOU_THRES]
               [--max-det MAX_DET] [--save-img] [--view-img] [--project PROJECT] [--name NAME]

options:
  -h, --help            show this help message and exit
  --weights WEIGHTS     model path
  --source SOURCE       Path to video/image/webcam
  --img-size IMG_SIZE [IMG_SIZE ...]
                        inference size h,w
  --conf-thres CONF_THRES
                        confidence threshold
  --iou-thres IOU_THRES
                        NMS IoU threshold
  --max-det MAX_DET     maximum detections per image
  --save-img            Save detected images
  --view-img            View inferenced images
  --project PROJECT     save results to project/name
  --name NAME           save results to project/name
```

## Reference

1. https://github.com/ultralytics/yolov5