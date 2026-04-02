(machine_learning_workflows)=
# Machine learning workflows

``````{admonition} Minimal
:class: warning

<!-- Cite original method -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite original method
:open:

````{tab-set}


```{tab-item} Description
It is vital that the original deep learning method can be clearly identified. Thus, it is critical that the original methods paper is cited that describes the used machine learning approach.

```

```{tab-item} Resources
**Examples**
- [Cellpose documentation](https://cellpose.readthedocs.io/en/latest/index.html)

**References**
- [Cellpose: a generalist algorithm for cellular segmentation](https://doi.org/10.1038/s41592-020-01018-x)
```
````
````` 

<!-- Access to model -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_model.svg" width="50px"> &nbsp; Access to model
:open:

````{tab-set}


```{tab-item} Description
The model used for ML-based processing needs to be publicly accessible. The aim is to allow others to test and examine the workflow. Thus, making the model accessible on request is a minimum requirement.  

```

```{tab-item} Resources
**Examples**
- [Zero Cost Deep Learning for microscopy (ZeroCostDL4Mic)](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks)
- [Bioimage model zoo](https://bioimage.io/#/)

**References**
- [Democratising deep learning for microscopy with ZeroCostDL4Mic](https://doi.org/10.1038/s41467-021-22518-0)
```
````
````` 

<!-- Example or validation data -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_example.svg" width="50px"> &nbsp; Example or validation data
:open:

````{tab-set}


```{tab-item} Description
Each machine learning workflow must be accompanied by example image data that is openly accessible, appropriate and sufficient for testing the workflow performance.
```
```{tab-item} Resources
**Examples** 
- [Zero Cost Deep Learning for microscopy (ZeroCostDL4Mic)](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks)
- [Bioimage model zoo](https://bioimage.io/#/)
- [From publication to IDR study](https://www.youtube.com/watch?v=dFg2PAF3k7s)
- [Submitting your data to the BioImage Archive](https://www.youtube.com/watch?v=ZZUslnHcoz0)

**References**
- [Reproducibility standards for machine learning in the life sciences](https://doi.org/10.1038/s41592-021-01256-7)
- [Cell Painting Gallery](https://arxiv.org/abs/2402.02203)
- [BioImage Archive.](https://doi.org/10.1016/j.jmb.2022.167505)
- [Image Data Resource.](https://idr.openmicroscopy.org/) 
- [EMPIAR.](https://www.ebi.ac.uk/empiar/)
- [A call for public archives for biological image data](https://doi.org/10.1038/s41592-018-0195-8)

```
````
````` 

``````

``````{admonition} Recommended (Pre-trained & novel models)
:class: note

<!-- Train, test & metadata -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_train_test_metadata.svg" width="50px"> &nbsp; Train, test & metadata
:open:

````{tab-set}


```{tab-item} Description
To enable the reproduction and validation of the results, whether from model trained from scratch or fine-tuned, the full training and testing data should be made available, alongside all necessary metadata (e.g. hyperparameters, configuration, training time given computing resources).

```

```{tab-item} Resources
**Examples** 
- [Stardist model and training dataset for automated tracking of MDA-MB-231 and BT20 cells](https://zenodo.org/records/4811213)

**References**
- [Reproducibility standards for machine learning in the life sciences](https://doi.org/10.1038/s41592-021-01256-7)
```
````
````` 

<!-- Code available -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_code.svg" width="50px"> &nbsp; Code available
:open:

````{tab-set}


```{tab-item} Description
The code used for training the model should be provided via public repositories with long-term record (e.g. Zenodo), while also referencing the public datasets.

```
```{tab-item} Resources

**Tutorial**
- [How to publish and cite code using GitHub and Zenodo.](https://www.youtube.com/watch?v=HZ6m8oxwvig)

**Examples**
- [Cellpose](https://github.com/MouseLand/cellpose)
- [Stardist](https://github.com/stardist/stardist)

**References**
- [Reproducibility standards for machine learning in the life sciences](https://doi.org/10.1038/s41592-021-01256-7)
```
````
````` 

<!-- Limitations -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_limitations.svg" width="50px"> &nbsp; Limitations
:open:

````{tab-set}


```{tab-item} Description
The authors should discuss and ideally test how well the model has performed and show, or at least discuss any, limitations of the used machine learning approach on their data.
```
```{tab-item} Resources
**References**
- [Avoid hype.](https://doi.org/10.1038/s41551-017-0151-4)
- [Avoiding a replication crisis in deep-learning-based bioimage analysis.](https://doi.org/10.1038/s41592-021-01284-3)
- [Metrics reloaded: recommendations for image analysis validation.](https://doi.org/10.1038/s41592-023-02151-z)
- [A Practical Guide to Supervised Deep Learning for Bioimage Analysis: Challenges and good practices.](https://doi.org/10.1109/MSP.2021.3123589)
```
````
````` 

<!-- Cloud hosted or container -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cloud_container.svg" width="50px"> &nbsp; Cloud hosted or container
:open:

````{tab-set}


```{tab-item} Description
The uptake and integration of code, models, and training data is vastly improved by tools that minimize the effort required for access.  Containers enable code to be run locally on a variety of operating systems without modification. Alternatively, with appropriate compute infrastructure, cloud-hosted interfaces can democratize access to powerful runtime environments.
```
```{tab-item} Resources

**Tutorials**
- [Example of preparation of a Docker for DL4Mic.](https://github.com/HenriquesLab/DL4MicEverywhere/blob/main/docs/USER_GUIDE.md#run-dl4miceverywhere-for-the-first-time)

**References**
- [Containers for computational reproducibility.](https://doi.org/10.1038/s43586-023-00236-9)
- [Ten simple rules for writing Dockerfiles for reproducible data science.](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008316)

```
````
````` 

``````

``````{admonition} Ideal (novel models)
:class: tip

<!-- Standardized format -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_model_format.svg" width="50px"> &nbsp; Standardized format
:open:

````{tab-set}


```{tab-item} Description
Utilization of community standards and formats is further increasing the ease of reproduction. This is also true for machine learning. New machine learning models could therefore be be created complying with standardized formats. 

```

```{tab-item} Resources
**Examples**
- [BioImage Model Zoo Documentation](https://biapy.readthedocs.io/en/latest/get_started/bmz.html)   
- [Hugging face tutorial](https://huggingface.co/blog/proflead/hugging-face-tutorial)

References
- [BioImage Model Zoo: A Community-Driven Resource for Accessible Deep Learning in BioImage Analysis.](http://doi.org/10.1101/2022.06.07.495102)
```
````
````` 

``````

<!--Notes which will not be shown on the actual page-->