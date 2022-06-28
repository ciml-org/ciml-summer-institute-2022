#!/usr/bin/env bash

declare -xr SOURCE_ENDPOINT='oasis-dm.sdsc.xsede.org:2811'
declare -xr SOURCE_DIR='/oasis/projects/nsf/sdu118/mkandes/gpse-v0.5.9-comet-compton-20170828-001'

declare -xr DESTINATION_ENDPOINT='gridftp.stampede2.tacc.xsede.org:2811'
declare -xr DESTINATION_DIR='/work/03216/mckandes/maverick/gpse-v0.5.9-comet-compton-20170828-001'

module load globus

for timestep in {1000..1024}; do
  globus-url-copy -vb -stripe -tcp-bs 8m -p 4 "gsiftp://${SOURCE_ENDPOINT}/${SOURCE_DIR}/psi-${timestep}.zip" "gsiftp://${DESTINATION_ENDPOINT}/${DESTINATION_DIR}/psi-${timestep}.zip"
done

