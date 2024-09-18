#!/bin/bash
######################################################
#  "#" followed by a "SBATCH" == Slurm parameter...
#  execute script in current directory
#SBATCH --chdir=./
#  want any .e/.o stuff to show up here too
#SBATCH -e ./error
#SBATCH -o ./output
#  name for the job; used by Slurm
#SBATCH -J List.files.pn
#  run job in this queue/partition:
#SBATCH -p cpu
#  request memory be available: NOTE value MUST end in M, G, or T!
#SBATCH --mem=50M
#  request CPUs for task
#SBATCH --cpus-per-task 1
######################################################
echo "List of content of folder data"
ls /lustre/home/naikpr/CCTR691/CmdLn_Lab/data
ls -1 /lustre/home/naikpr/CCTR691/CmdLn_Lab/data | wc -l
sleep 120
