 nohup python nmt.py \
    --src=en --tgt=ch \
    --ckpt=./tmp/nmt_model/translate.ckpt-89000 \
    --inference_input_file=./tmp/nmt_data/test.8000.token.bpe \
    --inference_output_file=./tmp/nmt_model/output_infer \
    --vocab_prefix=./tmp/nmt_data/vocab.bpe \
    --train_prefix=./tmp/nmt_data/train.token.bpe \
    --dev_prefix=./tmp/nmt_data/valid.token.bpe \
    --test_prefix=./tmp/nmt_data/test.token.bpe \
    --out_dir=./tmp/nmt_model \
    --num_train_steps=340000 \
    --steps_per_stats=100 \
    --num_layers=4 \
    --batch_size=128 \
    --num_units=512 \
    --dropout=0.2 \
    --metrics=bleu \
    --attention_architecture=gnmt_v2 \
    --attention=normed_bahdanau \
    --beam_width=10 \
    --colocate_gradients_with_ops=true \
    --decay_factor=0.5 \
    --decay_steps=17000 \
    --dropout=0.2 \
    --encoder_type=gnmt \
    --forget_bias=1.0 \
    --infer_batch_size=32 \
    --init_weight=0.1 \
    --learning_rate=1.0 \
    --max_gradient_norm=5.0 \
    --num_buckets=5 \
    --optimizer=sgd \
    --residual=true \
    --share_vocab=false \
    --source_reverse=false \
    --src_max_len=50 \
    --start_decay_step=170000 \
    --tgt_max_len=40 \
    --time_major=true \
    --unit_type=lstm \
    --bpe_delimiter=@@ \
    --length_penalty_weight=1.0 &


echo "AAAAAAAAAAAA Done"
