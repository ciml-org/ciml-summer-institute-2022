4.5_deep_learning_transfer_learning_hands_on/

## Running on Expanse Portal

**1. Log in to the Expanse Portal**

Use your XSEDE username (trainXX) and password to login to the portal.

[https://portal.expanse.sdsc.edu](https://portal.expanse.sdsc.edu)

**2. Select Jupyter from the `Interactive Apps` menu on the Expanse Portal.**

**3. Specify your Job Parameters**

Account:  \<account>
  
Partition:  gpu-shared
  
Time limit (min): 180
  
Number of cores: 10
  
Memory required per node: 93
  
GPUs: 1
  
Singularity Image File: /cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif
  
Environment modules to be loaded: singularitypro
  
Reservation: \<reservation>
  
Working directory:  home
  
Type: JupyterLab

**4. Click on URL to start Jupyter**


## Running on Terminal

**1. Log in to Expanse in terminal window**
```
ssh <username>@login.expanse.sdsc.edu
```

**2. Launch Jupyter server with GPU**
```
start_gpu
```

This is an alias for

export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"

galyleo.sh launch --account \<account\> --reservation \<reservation\> --partition 'gpu-shared' --cpus-per-task 10 --memory-per-node 93 --gpus 1 --time-limit 03:00:00 --jupyter 'lab' --notebook-dir "/home/${USER}" --env-modules 'singularitypro' --sif '/cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif' --bind '/expanse,/scratch,/cvmfs' --nv --quiet


**3. Copy URL in a web browser**



