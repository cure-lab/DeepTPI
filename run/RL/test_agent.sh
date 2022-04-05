cd ./src
python3 rl_test.py \
 --target LBIST \
 --exp_id rl_test --pretrain False \
 --data_dir ../data/benchmarks/small_aig/ \
 --num_rounds 10 --dataset benchmarks \
 --gate_types INPUT,AND,NOT,BUFF \
 --dim_node_feature 4 --no_node_cop \
 --aggr_function aggnconv --wx_update \
 --bench_dir ../bench --no_labels \
 --save_bench --circuit_info --op --aig \
 --reward no_reward \
 --resume --ignore_action \
 --no_cp 10 --no_tp_each_round 1 \
  --RL_model deepgate \
 --feature_pretrain True \
 --feature_pretrain_model ../exp/prob/pretrain/model_bak/model_30.pth

