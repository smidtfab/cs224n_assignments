#!/bin/env bash
#SBATCH -A SNIC2022-5-372           # find your project with the "projinfo" command
#SBATCH -p alvis                    # what partition to use (usually not needed)
#SBATCH -t 0-02:00:00               # how long time it will take to run
#SBATCH --gpus-per-node=A40:2       # choosing no. GPUs and their type
#SBATCH -J a4                       # the jobname (not needed)
#SBATCH -o a4.out                   # name of the output file

# Set-up environment
ml purge
flat_modules
module load PyTorch/1.8.1-fosscuda-2020b torchvision/0.9.1-fosscuda-2020b-PyTorch-1.8.1 JupyterLab/2.2.8-GCCcore-10.2.0 matplotlib/3.3.3-fosscuda-2020b
source a4_env/bin/activate

# run train sh
sh run.sh train