# CIML Summer Institute:  CPU and GPU Slurm reservations

## UPDATE: 7:55 am, Thursday, 6/24/21

* Once you have logged in this morning to Expanse via your terminal, please run the following two commands in order to fix a typo in your .bashrc file.
```
$ sed -i 's/---partition/--partition/g' ~/.bashrc
$ source .bashrc
```

* If you happen to run into an issue, the corrected alias commands within your .bashrc file that the above fix is related to are:
```
alias start_cpu='galyleo.sh launch --account sds184 --reservation ciml-day3 --partition compute --cpus-per-task 128 --memory-per-node 248 --time-limit 03:00:00 --jupyter lab --notebook-dir /home/${USER} --env-modules singularitypro --sif /cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif --bind /expanse,/scratch,/cvmfs --nv --quiet'
```

```
alias start_gpu='galyleo.sh launch --account sds184 --reservation ciml-day3 --partition gpu-shared --cpus-per-task 10 --memory-per-node 93 --gpus 1 --time-limit 03:00:00 --jupyter lab --notebook-dir /home/${USER} --env-modules singularitypro --sif /cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif --bind /expanse,/scratch,/cvmfs --nv --quiet'
```

```
alias start_spark='galyleo.sh launch --account sds184 --reservation ciml-day3 --partition shared --ntasks-per-node 1 --cpus-per-task 4 --memory-per-node 8 --time-limit 03:00:00 --jupyter lab --notebook-dir /home/${USER} --sif /cm/shared/apps/containers/singularity/ciml/2021/pyspark-latest.sif --env-modules singularitypro --bind /expanse,/scratch,/cvmfs --quiet'
```

```
alias start_jupyter='galyleo.sh launch --account sds184 --reservation ciml-day3 --partition shared --cpus-per-task 1 --memory-per-node 4 --time-limit 00:30:00 --jupyter lab --notebook-dir /home/${USER} --conda-env notebooks-sharing --quiet'

```



## Summary:

| **Reservation** |  System | **User Group** |
| ----------- | ---------- | ----------| 
| ciml-day1 | CPU | Instructors |
| ciml-day2.5 | CPU | Instructors & Class |
| ciml-day3 | CPU | Instructors & Class |

<hr>
## To get the most current reservations, run the following command on Expanse:
```
[mthomas@login01 ~]$ scontrol show res

```
## Last updated:   Mon Jun 21 18:41:29 PDT 2021
[mthomas@login01 ~]$ 
[mthomas@login01 ~]$ scontrol show res

ReservationName=k8s StartTime=2021-01-07T13:55:40 EndTime=2022-04-07T08:00:00 Duration=454-17:04:20
   Nodes=exp-13-[55-56] NodeCnt=2 CoreCnt=256 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=256
   Users=root Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=drac StartTime=2021-04-24T16:00:00 EndTime=2021-07-23T16:00:00 Duration=90-00:00:00
   Nodes=exp-2-03 NodeCnt=1 CoreCnt=128 Features=(null) PartitionName=(null) Flags=MAINT,OVERLAP,IGNORE_JOBS,SPEC_NODES
   TRES=cpu=128
   Users=jeff Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml-day1 StartTime=2021-06-22T08:00:00 EndTime=2021-06-22T15:00:00 Duration=07:00:00
   Nodes=exp-9-[47-54,57-60] NodeCnt=12 CoreCnt=1184 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=1184
   Users=mhnguyen,xdtr96,p4rodrig,xdtr97,sinkovit,xdtr98,pwrose,xdtr99,mkandes,xdtr100,manu1729,xdtr101,agoetz,xdtr102,jsale,xdtr103,mthomas,xdtr108 Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml-day2 StartTime=2021-06-23T08:00:00 EndTime=2021-06-23T12:00:00 Duration=04:00:00
   Nodes=exp-9-[47-54,57-60] NodeCnt=12 CoreCnt=1184 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=1184
   Users=mhnguyen,xdtr96,p4rodrig,xdtr97,sinkovit,xdtr98,pwrose,xdtr99,mkandes,xdtr100,manu1729,xdtr101,agoetz,xdtr102,jsale,xdtr103,mthomas,xdtr108 Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml-day3 StartTime=2021-06-24T08:00:00 EndTime=2021-06-24T15:00:00 Duration=07:00:00
   Nodes=exp-5-[47-54],exp-6-[47-54],exp-7-[47-54],exp-8-[47-54,57-60],exp-9-[47-54,57-60],exp-10-[47-54,57-60] NodeCnt=60 CoreCnt=6624 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=6624
   Users=xdtr60,xdtr61,xdtr62,xdtr63,xdtr64,xdtr65,xdtr66,xdtr67,xdtr68,xdtr69,xdtr70,xdtr71,xdtr72,xdtr73,xdtr74,xdtr75,xdtr76,xdtr77,xdtr78,xdtr79,xdtr80,xdtr81,xdtr82,xdtr83,xdtr84,xdtr85,xdtr86,xdtr87,xdtr88,xdtr89,xdtr90,xdtr91,xdtr92,xdtr93,xdtr94,xdtr95,mhnguyen,xdtr96,p4rodrig,xdtr97,sinkovit,xdtr98,pwrose,xdtr99,mkandes,xdtr100,manu1729,xdtr101,agoetz,xdtr102,jsale,xdtr103,xdtr104,xdtr105,xdtr106,xdtr107,mthomas,xdtr108,xdtr108,xdtr140,xdtr141,xdtr142,xdtr143,xdtr144 Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml-day2.5 StartTime=2021-06-23T12:00:00 EndTime=2021-06-23T15:00:00 Duration=03:00:00
   Nodes=exp-5-[47-54],exp-6-[47-54],exp-7-[47-54],exp-8-[47-54,57-60],exp-9-[47-54,57-60],exp-10-[47-54,57-60] NodeCnt=60 CoreCnt=6624 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=6624
   Users=xdtr60,xdtr61,xdtr62,xdtr63,xdtr64,xdtr65,xdtr66,xdtr67,xdtr68,xdtr69,xdtr70,xdtr71,xdtr72,xdtr73,xdtr74,xdtr75,xdtr76,xdtr77,xdtr78,xdtr79,xdtr80,xdtr81,xdtr82,xdtr83,xdtr84,xdtr85,xdtr86,xdtr87,xdtr88,xdtr89,xdtr90,xdtr91,xdtr92,xdtr93,xdtr94,xdtr95,mhnguyen,xdtr96,p4rodrig,xdtr97,sinkovit,xdtr98,pwrose,xdtr99,mkandes,xdtr100,manu1729,xdtr101,agoetz,xdtr102,jsale,xdtr103,xdtr104,xdtr105,xdtr106,xdtr107,mthomas,xdtr108,xdtr108,xdtr140,xdtr141,xdtr142,xdtr143,xdtr144 Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=uprof_test StartTime=2021-06-17T13:00:00 EndTime=2021-06-24T13:00:00 Duration=7-00:00:00
   Nodes=exp-4-43,exp-6-21 NodeCnt=2 CoreCnt=256 Features=(null) PartitionName=(null) Flags=MAINT,OVERLAP,IGNORE_JOBS,SPEC_NODES
   TRES=cpu=256
   Users=mahidhar,mahidhar_test,lane99 Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)
