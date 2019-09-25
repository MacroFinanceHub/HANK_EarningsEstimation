#!/bin/bash
#SBATCH --account=def-iskander
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:8
##SBATCH --gres=gpu:v100:8
##SBATCH --exclusive
#SBATCH --cpus-per-task=1
##SBATCH --ntasks-per-node=32
#SBATCH --mem=2G
#SBATCH --time=1:00:00
#SBATCH --job-name=HANK
#SBATCH --error=estimate.err
#SBATCH --output=estimate-V100.out
#module load arch/avx512 StdEnv/2018.3
#valgrind -v --main-stacksize=20787144 --max-stackframe=17787144 --gen-suppressions=yes --suppressions=./ignore --tool=memcheck --leak-check=yes --show-reachable=yes ./estimate 12
./estimate 24
