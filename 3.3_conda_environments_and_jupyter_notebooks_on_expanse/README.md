# 2022 CIML Summer Institute: CONDA Environments and Jupyter Notebook on Expanse: Scalable & Reproducible Data Exploration and ML

**Session:** 3.3_conda_environments_and_jupyter_notebooks_on_expanse

**Date:** June 28, 2022

**Presented by:** [Peter Rose](https://www.sdsc.edu/research/researcher_spotlight/rose_peter.html) (pwrose @ucsd.edu) 

### Reading and Presentations:
* **Lecture material:**
   * Presentation Slides: will be made available closer to the session
* **Video Recording:** will be made available as soon as possible
* **Source Code/Examples:** [If applicable]()

## TASK 1: Launch Jupyter Lab on Expanse using a CONDA environment
1. Open a Terminal Window (expanse Shell Access) through the [Expanse Portal](https://portal.expanse.sdsc.edu/)

2. Clone the Git repository df-parallel
```
git clone https://github.com/pwrose/df-parallel.git
```
  
  
3. Launch Jupyter Lab using the Galyleo

   This script will generate a URL for your Jupyter Lab session.
```
galyleo launch --account ${CIML_ACCOUNT} --reservation ${CIML_RESERVATION_GPU} --qos ${CIML_QOS_GPU} --partition gpu-shared --cpus 10 --memory 92 --gpus 1 --time-limit 01:00:00 --conda-env df-parallel-gpu --conda-yml "${HOME}/df-parallel/environment_gpu.yml" --mamba
```

> The arguments ```--reservation ${CIML_RESERVATION_GPU} --qos ${CIML_QOS_GPU}``` are only active during the CIML workshop. Remove these arguments when running this example outside of the workshop and specify your project account number.

4. Open a new tab in your web browser and paste the Jupyter Lab URL.  

    You should see the Satellite Reserver Proxy Servive page launch in your browser.

5. In your Zoom session, select "Yes" under the Reactions after you complete these steps.

## TASK 2: Run Notebooks in Jupyter Lab

For this task you will compare the runtime for a simple data analysis using 5 dataframe libraries.

1. Go to the Jupyter Lab session launched in TASK 1

    Navigate to the ```df-parallel/notebooks``` directory.

2. Copy the sample file

    Run the 1-FetchDataCIML notebook to copy a dataset to the local scratch disk on the GPU node.

3. Run the Dataframe notebooks

   Run each of the Dataframe notebooks and write down the runtime for each dataframe library.

4. Shutdown Jupyter Lab

    ```File -> Shutdown``` to terminate the process

5. In your Zoom session, select "Yes" under the Reactions after you complete these steps.

## TASK 3: Create a packed CONDA environment
Here we will run a simple ML model to predict the protein fold class from a protein sequence.

1. Clone the Git repository notebooks-sharing
```
git clone https://github.com/sdsc-hpc-training-org/notebooks-sharing.git
```

2. Create a packed Conda environment

    This script will launch a batch job to create the packed environment ```notebooks-sharing.tar.gz``` in your home directory.

    Download and run the pack.sh script
```
wget https://raw.githubusercontent.com/sdsc-hpc-training-org/notebooks-sharing/main/pack.sh
```

    
```
chmod +x pack.sh
```

    
```
./pack.sh --account ${CIML_ACCOUNT} --conda-env notebooks-sharing --conda-yml "${HOME}/notebooks-sharing/environment.yml"
```

3. On the Expanse Portal monitor the progress of the pack batch job.
    Once the batch job completed, look for the file ```notebooks-sharing.tar.g``` in your home directory.

4. Launch Jupyter Lab using the packed Conda environment
```
galyleo launch --account ${CIML_ACCOUNT} --reservation ${CIML_RESERVATION_CPU} --partition shared --cpus 8 --memory 16 --time-limit 00:30:00 --conda-env notebooks-sharing --conda-pack "${HOME}/notebooks-sharing.tar.gz"
```

5. Run the notebooks

    In Jupyter Lab, navigate to the notebooks-sharing/notebooks directory and run the following notebooks.
```
1-CreateDataset.ipynb
2-CalculateFeatures.ipynb
3-FitModel.ipynb
4-Predict.ipynb
```

6. **Do not shutdown Jupyter Lab**. You will use it for TASK 4!

7. In your Zoom session, select "Yes" under the Reactions after you complete these steps.

## TASKS 4: Run Jupyter Lab in batch
