#!/usr/bin/env bash
python senti_analysis.py \
  --do_train=True \
  --task_name=sentiment \
  --data_dir=./data/sentiment \
  --train_dir='train_mix.tsv' \
  --output_dir=./data/sentiment/output \
  --uncased=False \
  --spiece_model_file=./data/pretrained_model/chinese_xlnet_mid_L-24_H-768_A-12/spiece.model \
  --model_config_path=./data/pretrained_model/chinese_xlnet_mid_L-24_H-768_A-12/xlnet_config.json \
  --init_checkpoint=./data/pretrained_model/chinese_xlnet_mid_L-24_H-768_A-12/xlnet_model.ckpt \
  --max_seq_length=8 \
  --train_batch_size=2 \
  --learning_rate=5e-5 \
  --train_steps=1200 \
  --warmup_steps=120 \
  --save_steps=600 \
