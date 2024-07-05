#!/bin/bash

KEY_TYPE=monoint
for WORKLOAD_TYPE in 1_uniform 2_uniform 3_uniform 4_uniform 5_uniform; do
  echo workload${WORKLOAD_TYPE} > workload_config.inp
  echo ${KEY_TYPE} >> workload_config.inp
  python3 gen_workload.py workload_config.inp
  # mv workloads/load_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/mono_inc_load${WORKLOAD_TYPE}_zipf_int_100M.dat
  # mv workloads/txn_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/mono_inc_txns${WORKLOAD_TYPE}_zipf_int_100M.dat
done

KEY_TYPE=monoint
for WORKLOAD_TYPE in a b c; do
  echo workload${WORKLOAD_TYPE} > workload_config.inp
  echo ${KEY_TYPE} >> workload_config.inp
  python3 gen_workload.py workload_config.inp
  # mv workloads/load_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/mono_inc_load${WORKLOAD_TYPE}_zipf_int_100M.dat
  # mv workloads/txn_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/mono_inc_txns${WORKLOAD_TYPE}_zipf_int_100M.dat
done

# KEY_TYPE=randint
# for WORKLOAD_TYPE in a b c n u; do
#   echo workload${WORKLOAD_TYPE} > workload_config.inp
#   echo ${KEY_TYPE} >> workload_config.inp
#   python3 gen_workload.py workload_config.inp
#   mv workloads/load_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/load${WORKLOAD_TYPE}_zipf_int_100M.dat
#   mv workloads/txn_${KEY_TYPE}_workload${WORKLOAD_TYPE} workloads/txns${WORKLOAD_TYPE}_zipf_int_100M.dat
# done

