# CIML Summer Institute:  CPU and GPU Slurm reservations

## To get the most current reservations, run the following command on Expanse:
```
scontrol show res
```
* Note the dates for when the reservations are available.


## UPDATE: Friday, 6/24/22

ReservationName=k8s StartTime=2021-01-07T13:55:40 EndTime=2023-10-04T14:55:40 Duration=1000-00:00:00
   Nodes=exp-13-[55-56] NodeCnt=2 CoreCnt=256 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=256
   Users=root Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=jjres StartTime=2021-11-08T09:17:23 EndTime=2022-11-03T10:17:23 Duration=360-00:00:00
   Nodes=exp-15-[02-03,56] NodeCnt=3 CoreCnt=384 Features=(null) PartitionName=(null) Flags=OVERLAP,IGNORE_JOBS,SPEC_NODES
   TRES=cpu=384
   Users=jmoline1,hhijazi,dtruong1,emlynars,bmautz,mblack1,bsarver,ekhramts,ppate156,khe2,aporrell,pfilipec,gabdelaz,sguo2,sli101,xliu153,yzhan378 Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=GPUmemoryissue StartTime=2022-01-20T17:30:16 EndTime=2022-08-08T18:30:16 Duration=200-00:00:00
   Nodes=exp-6-58 NodeCnt=1 CoreCnt=40 Features=(null) PartitionName=(null) Flags=IGNORE_JOBS,SPEC_NODES
   TRES=cpu=40
   Users=root,mahidhar Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=sebatlab StartTime=2022-05-17T10:43:44 EndTime=2022-07-06T10:43:44 Duration=50-00:00:00
   Nodes=exp-15-55 NodeCnt=1 CoreCnt=128 Features=(null) PartitionName=(null) Flags=SPEC_NODES
   TRES=cpu=128
   Users=j3guevar,ux453059 Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=maint StartTime=2022-05-27T14:01:01 EndTime=2023-05-27T14:01:01 Duration=365-00:00:00
   Nodes=exp-15-[05-08,11,19,23,25-32,34-35,37-38,42-44],exp-112-[01-32],exp-113-[01-32],exp-115-[01-16],exp-120-[01-32],exp-121-[01-32],exp-150-[01-16] NodeCnt=182 CoreCnt=4240 Features=(null) PartitionName=(null) Flags=MAINT,OVERLAP,SPEC_NODES
   TRES=cpu=5664
   Users=root,tcooper Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ampres2022 StartTime=2022-06-24T18:00:00 EndTime=2022-06-25T06:00:00 Duration=12:00:00
   Nodes=exp-1-40 NodeCnt=1 CoreCnt=128 Features=(null) PartitionName=shared Flags=DAILY
   TRES=cpu=128
   Users=ampuser Groups=(null) Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=abaqusres StartTime=2022-06-06T14:00:00 EndTime=2022-07-06T14:00:00 Duration=30-00:00:00
   Nodes=exp-14-[55-56] NodeCnt=2 CoreCnt=256 Features=(null) PartitionName=(null) Flags=OVERLAP,SPEC_NODES
   TRES=cpu=256
   Users=mahidhar,briggsn,mattchellali,padilla,adesa Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml2022cpu StartTime=2022-06-27T07:00:00 EndTime=2022-06-27T15:00:00 Duration=08:00:00
   Nodes=exp-1-[01-03,05,07-15,17,19-21,24-56],exp-2-[01-04,06-08,10-16] NodeCnt=64 CoreCnt=8192 Features=(null) PartitionName=compute Flags=DAILY
   TRES=cpu=8192
   Users=(null) Groups=(null) Accounts=sds184 Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml2022gpu StartTime=2022-06-27T07:00:00 EndTime=2022-06-27T15:00:00 Duration=08:00:00
   Nodes=exp-1-[57-60],exp-2-[57-58,60],exp-3-[57-60],exp-4-[57,59-60],exp-5-[57-58] NodeCnt=16 CoreCnt=640 Features=(null) PartitionName=gpu Flags=DAILY
   TRES=cpu=640
   Users=(null) Groups=(null) Accounts=sds184 Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=ciml-dev StartTime=2022-06-22T16:00:00 EndTime=2023-06-22T16:00:00 Duration=365-00:00:00
   Nodes=exp-8-40 NodeCnt=1 CoreCnt=128 Features=(null) PartitionName=(null) Flags=
   TRES=cpu=128
   Users=xdtr104,p4rodrig Groups=(null) Accounts=(null) Licenses=(null) State=ACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=29thDIMM StartTime=2022-06-29T00:00:00 EndTime=2022-07-30T00:00:00 Duration=31-00:00:00
   Nodes=exp-15-[05-08,11,13-15,17,19,21,23-26,28-29,31,34,37-38,41-44] NodeCnt=25 CoreCnt=3200 Features=(null) PartitionName=(null) Flags=OVERLAP,IGNORE_JOBS,SPEC_NODES
   TRES=cpu=3200
   Users=root Groups=(null) Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)

ReservationName=30thDIMM StartTime=2022-06-30T00:00:00 EndTime=2022-07-30T00:00:00 Duration=30-00:00:00
   Nodes=exp-15-[01-04,09-10,12,16,18,20,22,27,30,32-33,35-36,39-40,45-56] NodeCnt=31 CoreCnt=3968 Features=(null) PartitionName=(null) Flags=OVERLAP,IGNORE_JOBS,SPEC_NODES
   TRES=cpu=3968
   Users=root Groups=(null) Accounts=(null) Licenses=(null) State=INACTIVE BurstBuffer=(null) Watts=n/a
   MaxStartDelay=(null)






