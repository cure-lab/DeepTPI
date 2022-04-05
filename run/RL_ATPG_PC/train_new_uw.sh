cd ./src

python3 rl_train.py \
 --exp_id atpg_pc_new_uw \
 --RL_model non_level \
 --ftpt update_with \
  --feature_pretrain_model ../exp/prob/pretrain/model_bak/model_30.pth \
 --target ATPG_PC \
 --data_dir ../data/benchmarks/iscas_aig/ \
 --num_rounds 10 --dataset benchmarks \
 --no_labels \
 --gate_types INPUT,AND,NOT,BUFF --dim_node_feature 4 --no_node_cop \
 --aggr_function aggnconv --wx_update \
 --reward cont --lr 0.0001 --op --aig \
