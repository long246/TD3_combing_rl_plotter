#!/bin/bash

# Script to reproduce results

for ((i=0;i<5;i+=1))
do
	python main.py \
	--policy "TD3" \
	--env "HalfCheetah-v2" \
	--seed $i

	 python main.py \
	 --policy "TD3" \
	 --env "Hopper-v2" \
	 --seed $i

	 python main.py \
	 --policy "TD3" \
	 --env "Walker2d-v2" \
	 --seed $i

	python main.py \
	--policy "TD3" \
	--env "Ant-v2" \
	--seed $i

	 python main.py \
	 --policy "TD3" \
	 --env "Humanoid-v2" \
	 --seed $i

#	 python main.py \
#	 --policy "TD3" \
#	 --env "InvertedPendulum-v2" \
#	 --seed $i \
#	 --start_timesteps 1000
#
#	 python main.py \
#	 --policy "TD3" \
#	 --env "InvertedDoublePendulum-v2" \
#	 --seed $i \
#	 --start_timesteps 1000
#
#	 python main.py \
#	 --policy "TD3" \
#	 --env "Reacher-v2" \
#	 --seed $i \
#	 --start_timesteps 1000
done
