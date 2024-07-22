#!/bin/bash

# Define the base URL for the downloads
BASE_URL="https://github.com/yakhyo/yolov5-onnx-inference/releases/download/v1.0.0"

# Create the weights directory if it does not exist
mkdir -p weights

# Check if a model name was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <model_name>"
    echo "Example: $0 yolov5l"
    exit 1
fi

# Determine the model name
MODEL_NAME=$1
MODEL_FILE="${MODEL_NAME}.onnx"

# Download the model
wget -O weights/$MODEL_FILE $BASE_URL/$MODEL_FILE

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Downloaded $MODEL_FILE to weights/"
else
    echo "Failed to download $MODEL_FILE"
fi