#!/usr/bin/env bash

declare -xr LUSTRE_SCRATCH_DIR="/oasis/scratch/comet/${USER}/temp_project"
declare -xr LUSTRE_PROJECTS_DIR="/oasis/projects/nsf/sdu118/${USER}"

declare -xr JOB_NAME='gpse-v0.5.9-comet-compton-20170828-013'

declare -xir START_TIMESTEP=1000
declare -xir END_TIMESTEP=1240

cd "${LUSTRE_SCRATCH_DIR}/sdu118/${JOB_NAME}"

for ((x="${START_TIMESTEP}"; x<="${END_TIMESTEP}"; x++)); do
  mkdir -p psi-${x}
  mv psi-${x}-*.vtk psi-${x}
  zip -r psi-${x}.zip psi-${x}
  rm -rf psi-${x}
done
