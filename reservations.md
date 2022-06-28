# CIML Summer Institute:  CPU and GPU Slurm reservations

## To get the most current reservations, run the following command on Expanse:
```
[xdtr107@login01 ~]$scontrol show res
```
* Note that the eservations are available only for specific dates and times.


## UPDATE: Friday, 6/27/22

```
jupyter-compute-tensorflow='galyleo launch --account sds184 --reservation ciml2022cpu --partition compute --qos normal-eot --cpus 128 --memory 243 --time-limit 04:00:00 --env-modules singularitypro --sif /expanse/lustre/scratch/mkandes/temp_project/tensorflow-2.8.2-ubuntu-20.04-cuda-11.2-mlnx-ofed-4.9-4.1.7.0-openmpi-4.1.3.sif --bind /cm,/expanse,/scratch --quiet'
```

```
jupyter-gpu-shared-tensorflow='galyleo launch --account sds184 --reservation ciml2022gpu --partition gpu-shared --qos gpu-shared-eot --cpus 10 --memory 92 --gpus 1 --time-limit 04:00:00 --env-modules singularitypro --sif /cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif --bind /cm,/expanse,/scratch --nv --quiet'
```

```
jupyter-shared-spark='galyleo launch --account sds184 --reservation ciml2022cpu --partition shared --cpus 4 --memory 16 --time-limit 04:00:00 --env-modules singularitypro --sif /cm/shared/apps/containers/singularity/ciml/2021/pyspark-latest.sif --bind /cm,/expanse,/scratch --quiet'
```

```
srun-compute='srun --account=sds184 --reservation=ciml2022cpu --partition=compute --qos=normal-eot --nodes=1 --ntasks-per-node=1 --cpus-per-task=128 --mem=243G --time=04:00:00 --pty --wait=0 /bin/bash'
```

```
srun-gpu-shared='srun --account=sds184 --reservation=ciml2022gpu --partition=gpu-shared --qos=gpu-shared-eot --nodes=1 --ntasks-per-node=1 --cpus-per-task=10 --mem=92G --gpus=1 --time=04:00:00 --pty --wait=0 /bin/bash'
```

```
srun-shared='srun --account=sds184 --reservation=ciml2022cpu --partition=shared --nodes=1 --ntasks-per-node=1 --cpus-per-task=4 --mem=16G --time=04:00:00 --pty --wait=0 /bin/bash'
```
