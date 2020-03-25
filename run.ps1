$BERT_BASE_DIR="../multi_cased_L-12_H-768_A-12"

$MY_DATASET="../data/"

$OUTPUT_Dir="../output/"

write-host $BERT_BASE_DIR $MY_DATASET $OUTPUT_Dir

python run_classifier.py --data_dir=$MY_DATASET --task_name=imdb --vocab_file=$BERT_BASE_DIR/vocab.txt --bert_config_file=$BERT_BASE_DIR/bert_config.json --output_dir=$OUTPUT_Dir --do_train=true --do_eval=true --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt --max_seq_length=200 --train_batch_size=16 --learning_rate=5e-5 --num_train_epochs=2.0 --do_lower_case=False