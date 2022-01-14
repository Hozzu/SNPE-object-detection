#!/bin/bash
INPUT_TYPE=image_tensor
PIPELINE_CONFIG_PATH=~/Downloads/ssd_mobilenet_v1_coco_2018_01_28/pipeline.config
TRAINED_CKPT_PREFIX=~/Downloads/ssd_mobilenet_v1_coco_2018_01_28/model.ckpt
EXPORT_DIR=~/ssd_mobilenet_v1_exported_graph
pushd ~/models/research
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
python object_detection/export_inference_graph.py \
--input_type=${INPUT_TYPE} \
--pipeline_config_path=${PIPELINE_CONFIG_PATH} \
--trained_checkpoint_prefix=${TRAINED_CKPT_PREFIX} \
--output_directory=${EXPORT_DIR}
popd
