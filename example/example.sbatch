#!/bin/bash
#SBATCH --partition=jamesz
#SBATCH --job-name=rosetta_example               # Job name
#SBATCH --mail-type=FAIL,END                  # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=wukevin@stanford.edu  # Where to send mail	
#SBATCH --nodes=1                         # Run all processes on a single node
#SBATCH --ntasks=16                        # Number of processes
#SBATCH --mem=64gb                        # Job memory request
#SBATCH -G 1
#SBATCH -C GPU_SKU:RTX_2080Ti
#SBATCH --time=6-23:59:59                   # Time limit
#SBATCH --output=example_%j.log          # Standard output and error log

../run_pyrosetta_mine.sh input.fa ex_out
