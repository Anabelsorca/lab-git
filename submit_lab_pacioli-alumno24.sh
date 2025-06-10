#!/bin/bash

#SBATCH --partition=hpc-bio-pacioli
#SBATCH --chdir=/home/alumno24/lab4-Git
#SBATCH --job-name=lab4_cut
#SBATCH --output=slurm-%j.out
#SBATCH --error=err-%j.err
#SBATCH --mail-type=NONE
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00

# Script para lanzar file-cut.sh en SLURM

echo "Inicio del trabajo: $(date)"

bash file-cut.sh

echo "Trabajo finalizado: $(date)"

