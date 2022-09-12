#!/bin/env bash
#SBATCH -A SNIC2022-5-372           # find your project with the "projinfo" command
#SBATCH -p alvis                    # what partition to use (usually not needed)
#SBATCH -t 0-00:30:00               # how long time it will take to run
#SBATCH --gpus-per-node=A40:1       # choosing no. GPUs and their type
#SBATCH -J a4_test                  # the jobname (not needed)
#SBATCH -o a4_test.out              # name of the output file

# Set-up environment
ml purge
flat_modules
module load PyTorch
source $HOME/a4/bin/activate

# run test sh
sh run.sh test