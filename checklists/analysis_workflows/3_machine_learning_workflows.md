(machine_learning_workflows)=
# Machine learning workflows

``````{admonition} Minimal
:class: warning

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite original method
````{tab-set}
```{tab-item} Description
It is vital that the original deep learning method can be clearly identified. Thus, it is critical that the original methods paper is cited that describes the used machine learning approach.
```
```{tab-item} Links
Example: https://cellpose.readthedocs.io/en/latest/index.html

References
https://doi.org/10.1038/s41592-020-01018-x
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_model.svg" width="50px"> &nbsp; Access to model
````{tab-set}
```{tab-item} Description
The model used for ML-based processing needs to be publicly accessible. The aim is to allow others to test and examine the workflow. Thus, making the model accessible on request is a minimum requirement. 
```
```{tab-item} Links
Examples
https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks

https://bioimage.io/#/

References
https://doi.org/10.1038/s41467-021-22518-0


```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_example.svg" width="50px"> &nbsp; Example or validation data
````{tab-set}
```{tab-item} Description
Example image data that can be used for testing the workflow should be openly accessible for testing the machine learning workflow. 
```
```{tab-item} Links
Examples
https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks

https://bioimage.io/#/

References
Heil, B.J., Hoffman, M.M., Markowetz, F. et al. Reproducibility standards for machine learning in the life sciences. Nat Methods 18, 1132–1135 (2021). https://doi.org/10.1038/s41592-021-01256-7

```
````
````` 

``````

``````{admonition} Recommended (Pre-trained & novel models)
:class: note

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_train_test_metadata.svg" width="50px"> &nbsp; Train, test & metadata
````{tab-set}
```{tab-item} Description
To facilitate the reproduction and validation of results from either models trained from scratch or pre-trained models that were re-trained, the full training and testing data and any training metadata (e.g. hyperparameters, training time given computing resources) should be made available.
```
```{tab-item} Links
References
Heil, B.J., Hoffman, M.M., Markowetz, F. et al. Reproducibility standards for machine learning in the life sciences. Nat Methods 18, 1132–1135 (2021). https://doi.org/10.1038/s41592-021-01256-7
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_code.svg" width="50px"> &nbsp; Code available
````{tab-set}
```{tab-item} Description
The code used for training the model should be provided. Code, as well as data, should be provided via public repositories (European Organization For Nuclear Research and OpenAIRE 2013).
```
```{tab-item} Links
Examples: 
https://github.com/MouseLand/cellpose 
https://github.com/stardist/stardist  
Heil, B.J., Hoffman, M.M., Markowetz, F. et al. Reproducibility standards for machine learning in the life sciences. Nat Methods 18, 1132–1135 (2021). https://doi.org/10.1038/s41592-021-01256-7
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_limitations.svg" width="50px"> &nbsp; Limitations
````{tab-set}
```{tab-item} Description
The authors should discuss and ideally test how well the model has performed and show or at least discuss any limitations of the used machine learning approach on their data.
```
```{tab-item} Links
References
https://www.nature.com/articles/s41551-017-0151-4

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7611896/

https://www.nature.com/articles/s41592-023-02151-z

https://doi.org/10.1109/MSP.2021.3123589
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cloud_container.svg" width="50px"> &nbsp; Cloud hosted or container
````{tab-set}
```{tab-item} Description
The uptake and integration of code, models, and training data is vastly improved by tools that minimize the effort required for access.  Containers enable code to be run locally on a variety of operating systems without modification. Alternatively, with appropriate compute infrastructure, cloud-hosted interfaces can democratize access to powerful runtime environments.
```
```{tab-item} Links
Moreau, D., Wiebels, K. & Boettiger, C. Containers for computational reproducibility. Nat Rev Methods Primers 3, 50 (2023). https://doi.org/10.1038/s43586-023-00236-9

Ten simple rules for writing Dockerfiles for reproducible data science | PLOS Computational Biology
https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008316
```
````
````` 

``````

``````{admonition} Ideal (novel models)
:class: tip

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_model_format.svg" width="50px"> &nbsp; Standardized format
````{tab-set}
```{tab-item} Description
Utilization of community standards and formats is further increasing the ease of reproduction. This is also true for machine learning. New machine learning models could therefore be be created complying with standardized formats. 
```
```{tab-item} Links
References
Ouyang W, Beuttenmueller F, Gómez-de-Mariscal E, et al. BioImage Model Zoo: A Community-Driven Resource for Accessible Deep Learning in BioImage Analysis. bioRxiv; 2022.
ttp://doi.org/10.1101/2022.06.07.495102
```
````
````` 

``````

<!--Notes which will not be shown on the actual page-->