#!/bin/bash
#PBS -N  greenfn
#PBS -l nodes=10:ppn=24
#PBS -o  output-greens
#PBS -e  error-greens
#PBS -l walltime=12:00:00
cd $PBS_O_WORKDIR
echo $PBS_JOBID
export TERM=xterm
echo "Starting at "`date`
#cat $PBS_NODEFILE
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/users/apps/ciao-4.7/ciao-4.7/ots/lib
/usr/local/bin/pbsdsh $HOME/anaconda/bin/python $PBS_O_WORKDIR/main.py
echo "Finished at "`date`
