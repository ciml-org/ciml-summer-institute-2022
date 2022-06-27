# 2022 CIML Summer Institute: GPU Computing - Hardware architecture and software infrastructure

**Session:** 2.5_gpu_computing_hardware_architecture_and_software_infrastructure

**Date:** June 27, 2022

**Presented by:** [Andreas Goetz](https://www.sdsc.edu/research/researcher_spotlight/goetz_andreas.html) ( agoetz  @  sdsc.edu ) 

### Reading and Presentations:
* **Lecture material:**
   * Presentation Slides:
	 * [GPU Computing - Hardware Architecture and Software Infrastructure](https://github.com/ciml-org/ciml-summer-institute-2022/blob/main/2.5_gpu_computing_hardware_architecture_and_software_infrastructure/CIML-SI22-Day2-GPU-Computing-2022-06-27.pdf)
* **Video Recording:** will be made available as soon as possible
* **Source Code/Examples:** [Nvidia CUDA Samples](https://github.com/NVIDIA/cuda-samples)

### TASKS:

Well will log into an Expanse GPU node, compile and test some examples from the Nvidia CUDA samples.

### Log into Expanse, get onto a shared GPU node, and load required modules

First, log onto Expanse using your `xdtr` training account. You can do this either via the Expanse user portal or simply using ssh:
```
ssh xdtrXXX@login.expanse.sdsc.edu
```

Next we will use the alias for the `srun` command that is defined in your `.bashrc` file to access a single GPU on a shared GPU node:
```
srun-gpu-shared
```

Once we are on a GPU node, we load the `gpu` module to gain access to the GPU software stack. We will also load the `nvhpc` module, which provides the NVIDIA HPC SDK:
```
module load gpu
module load nvhpc
module list
```
You should see following output
```

Currently Loaded Modules:
  1) shared                  3) sdsc/1.0         5) gpu/0.15.4
  2) slurm/expanse/21.08.8   4) DefaultModules   6) nvhpc/22.2
```

We can use the `nvidia-smi` command to check for available GPUs and which processes are running on the GPU.
```
nvidia-smi
```
You should have a single V100 GPU available and there should be no processes running:
```
Mon Jun 27 08:39:33 2022       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 510.39.01    Driver Version: 510.39.01    CUDA Version: 11.6     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  Tesla V100-SXM2...  On   | 00000000:18:00.0 Off |                    0 |
| N/A   39C    P0    41W / 300W |      0MiB / 32768MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+
```

### Copy the Nvidia CUDA samples into your home directory

We will first copy the Nvidia CUDA samples from the shared CIML Summer Institute Data directory. This operation will take a few minutes, in particular if there are many participants copying the data at the same time, as there are many files to copy. We are going to use rsync so we can restart the copy operation in case it gets interrupted. We also exclude some data to speed up the copy:
```
rsync --exclude=2_Concepts_and_Techniques --exclude=3_CUDA_Features --exclude=5_Domain_Specific --exclude=6_Performance -au $CIML_DATA_DIR/cuda-samples ./
```
You can look into the data directory to see if there other samples that are of interest to you. The 


[Back to Top](#top)
