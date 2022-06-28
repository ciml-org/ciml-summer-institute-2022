# 2022 CIML Summer Institute: CONDA Environments and Jupyter Notebook on Expanse: Scalable & Reproducible Data Exploration and ML

**Session:** 3.3_conda_environments_and_jupyter_notebooks_on_expanse

**Date:** June 28, 2022

**Presented by:** [Peter Rose](https://www.sdsc.edu/research/researcher_spotlight/rose_peter.html) (pwrose @ucsd.edu) 

### Reading and Presentations:
* **Lecture material:**
   * [Presentation Slides](https://github.com/ciml-org/ciml-summer-institute-2022/blob/main/3.3_conda_environments_and_jupyter_notebooks_on_expanse/CIML_3.3_2022.pdf)
* **Video Recording:** will be made available as soon as possible
* **Source Code/Examples:** [df-parallel](https://github.com/sbl-sdsc/df-parallel.git), [notebooks-sharing](https://github.com/sdsc-hpc-training-org/notebooks-sharing.git)

## TASK 1A: Launch Jupyter Lab on Expanse using a CONDA environment
1. Open a Terminal Window ("expanse Shell Access") through the [Expanse Portal](https://portal.expanse.sdsc.edu/)

2. Clone the Git repository df-parallel
```
git clone https://github.com/sbl-sdsc/df-parallel.git
```
  
3. Launch Jupyter Lab using the Galyleo script

   This script will generate a URL for your Jupyter Lab session.
```
galyleo launch --account ${CIML_ACCOUNT} --reservation ${CIML_RESERVATION_GPU} --qos ${CIML_QOS_GPU} --partition gpu-shared --cpus 10 --memory 92 --gpus 1 --time-limit 00:30:00 --conda-env df-parallel-gpu --conda-yml "${HOME}/df-parallel/environment_gpu.yml" --mamba
```

> The arguments ```--reservation ${CIML_RESERVATION_GPU} --qos ${CIML_QOS_GPU}``` are only active during the CIML workshop. Remove these arguments when running this example outside of the workshop and specify your project account number.

4. Open a new tab in your web browser and paste the Jupyter Lab URL.  

> You should see the Satellite Reserver Proxy Servive page launch in your browser.

5. In your Zoom session, select "Yes" under Reactions after you complete these steps.

## TASK 1B: Run Notebooks in Jupyter Lab

For this task you will compare the runtime for a simple data analysis using 5 dataframe libraries.

1. Go to the Jupyter Lab session launched in TASK 1A

    Navigate to the ```df-parallel/notebooks``` directory.

2. Copy the sample file

    Run the ```1-FetchDataCIML.ipynb``` notebook to copy a dataset to the local scratch disk on the GPU node.

3. Run the Dataframe notebooks

    Run the following Dataframe notebooks and write down the runtime shown at the bottom of each notebook.
```
2-PandasDataframe.ipynb
3-DaskDataframe.ipynb
4-SparkDataframe.ipynb
5-CudaDataframe.ipynb
6-DaskCudaDataframe.ipynb
```

4. Shutdown Jupyter Lab

    ```File -> Shutdown``` to terminate the process

5. In your Zoom session, select "Yes" under "Reactions" after you complete these steps.

## TASK 2A: Create a packed CONDA environment
Here we will run an ML model to predict the protein fold class from a protein sequence.

1. Clone the Git repository notebooks-sharing
```
git clone https://github.com/sdsc-hpc-training-org/notebooks-sharing.git
```

2. Create a packed Conda environment

    This script will launch a batch job to create the packed environment ```notebooks-sharing.tar.gz``` in your home directory.
    
```
./notebooks-sharing/pack.sh --account ${CIML_ACCOUNT} --conda-env notebooks-sharing --conda-yml "${HOME}/notebooks-sharing/environment.yml"
```
 > This job will take about 4:30 minutes to complete
 
3. On the Expanse Portal, check that your job is running.

4. In your Zoom session, select "Yes" under "Reactions" after you complete these steps.  
    
## TASK 2B: Run a packed CONDA environment
1. Launch Jupyter Lab using the packed Conda environment
```
galyleo launch --account ${CIML_ACCOUNT} --reservation ${CIML_RESERVATION_CPU} --partition shared --cpus 8 --memory 16 --time-limit 01:00:00 --conda-env notebooks-sharing --conda-pack "${HOME}/notebooks-sharing.tar.gz"
```

2. Run the notebooks

    In Jupyter Lab, navigate to the ```notebooks-sharing/notebooks``` directory and run the following notebooks.
```
1-CreateDataset.ipynb
2-CalculateFeatures.ipynb
3-FitModel.ipynb
4-Predict.ipynb
```

3. **Do not shutdown Jupyter Lab**. You will use it for TASK 2C!

4. In your Zoom session, select "Yes" under "Reactions" after you complete these steps.

## TASK 2C: Run Jupyter Lab in batch

1. Parameterize the 3-FitModel.ipynb 

   Add a "parameters" tag to cell ```[1]```.
   
   - Select the cell to parameterize

   - Click the property inspector in the right sidebar (double gear icon)

   - Type “parameters” in the “Add Tag” box and hit “Enter”.
   
   - Save the notebook
    
![](ParameterizeNotebook.png)

2. Review the ```notebooks-sharing/batch.sh``` script
    
> Note how the 3-FitModel.ipynb notebook has been parameterized to run both ```SVM``` and ```LogisticRegression```.

3. Submit the batch script with sbatch

    From your home directory, run the following command
```
sbatch ./notebooks-sharing/batch.sh
```
4. Using the Expanse Portal, monitor the progress of your job

> This jobs takes about 3 minutes to complete

5. Compare the performance of the LogisticRegression model with the SVM model

   When the job is complete, use your Jupyter Lab session from TASK 2B to navigate to the ```notebooks-sharing/results``` directory

    Open the ```3-FitModel-LogisticRegression.ipynb``` and the ```3-FitModel-SVM.ipynb``` notebooks and compare the performance of the two models.
    
6. In your Zoom session, select "Yes" under "Reactions" after you complete these step
    
