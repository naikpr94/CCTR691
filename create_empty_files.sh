#!/bin/bash
######################################################
#  "#" followed by a "SBATCH" == Slurm parameter...
#  execute script in current directory
#SBATCH --chdir=./
#  want any .e/.o stuff to show up here too
#SBATCH -e ./%x.e%j
#SBATCH -o ./%x.o%j
#  name for the job; used by Slurm
#SBATCH -J create_files
#  run job in this queue/partition:
#SBATCH -p cpu
#  request memory be available: NOTE value MUST end in M, G, or T!
#SBATCH --mem=50M
#  request CPUs for task
#SBATCH --cpus-per-task 1
#  run for 1/2 minute
#SBATCH -t 0:30
######################################################
 
#  do some shell commands to simulate doing some work:
echo "Just a simple job!!!!"
echo "------------------------------------------------------------------"
#  embed commands with backticks:
echo "$0:  My user name is `whoami`..."
echo "$0:  I'm on `hostname`.............."
echo "$0:  Beginning @ `date`..."

#  ENTER USER CONTENT HERE:
echo "Now creating a ton of empty files!"

cd ~/CCTR691
mkdir CmdLn_Lab
cd CmdLn_Lab

cat ~/file_names.txt | while read file
do
touch $file
done


#  finish:
echo "$0:  Ending @ `date`..."
echo "$0:  ***   Done at `date`...  ************"
echo "------------------------------------------------------------------"
