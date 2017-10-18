nohup python nmt.py \
    --src=en --tgt=ch \
    --vocab_prefix=/home/haiyang/1.NMTModel/3.nmt/tmp/nmt_data/vocab \
    --train_prefix=./home/haiyang/1.NMTModel/3.nmt/tmp/nmt_data/train.token.shuffle \
    --dev_prefix=/home/haiyang/1.NMTModel/3.nmt/tmp/nmt_data/valid.token \
    --test_prefix=/home/haiyang/1.NMTModel/3.nmt/tmp/nmt_data/test.token \
    --out_dir=./tmp/nmt_model \
    --num_train_steps=340000 \
    --steps_per_stats=100 \
    --num_layers=4 \
    --batch_size=200 \
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
    --length_penalty_weight=1.0 &