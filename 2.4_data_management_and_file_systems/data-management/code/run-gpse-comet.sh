#!/usr/bin/env bash

#SBATCH --job-name=gpse-v0.5.9-comet-compton-20170828-017
#SBATCH --account=sdu118
#SBATCH --partition=compute
#SBATCH --nodes=6
#SBATCH --ntasks-per-node=24
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=48:00:00
#SBATCH --output=%x.o%j.%N

declare -xr LOCAL_SCRATCH_DIR="/scratch/${USER}/${SLURM_JOB_ID}"
declare -xr LUSTRE_SCRATCH_DIR="/oasis/scratch/comet/${USER}/temp_project/sdu118"
declare -xr LUSTRE_PROJECTS_DIR="/oasis/projects/nsf/sdu118/${USER}"

declare -xr COMPILER_MODULE='intel/2016.3.210'
declare -xr MPI_MODULE='intelmpi/2016.3.210'
declare -xr GNUTOOLS_MODULE='gnutools/2.69'

module purge
module load "${COMPILER_MODULE}"
module load "${MPI_MODULE}"
module load "${GNUTOOLS_MODULE}"
module list
export PATH="${HOME}/software/gpse/0.5.9/bin:${PATH}"
printenv

mkdir -p "${LUSTRE_SCRATCH_DIR}/${SLURM_JOB_NAME}"
cd "${LUSTRE_SCRATCH_DIR}/${SLURM_JOB_NAME}"
cp "${SLURM_SUBMIT_DIR}/gpse.input" ./

time -p mpirun -n "${SLURM_NTASKS}" gpse.x
