cd ./src
python3 rl_train.py \
 --exp_id rl_nonlevel_ftpt \
 --pretrain False \
 --feature_pretrain True \
 --feature_pretrain_model ../exp/prob/pretrain/model_bak/model_30.pth \
 --data_dir ../data/benchmarks/iscas_aig/ \
 --num_rounds 10 --dataset benchmarks \
 --no_labels \
 --RL_model non_level \
 --gate_types INPUT,AND,NOT,BUFF --dim_node_feature 4 --no_node_cop \
 --aggr_function aggnconv --wx_update \
 --reward sparse --lr 0.0001 --op --aig \
 --resume

