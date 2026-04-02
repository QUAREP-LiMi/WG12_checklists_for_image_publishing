(new_workflows)=
# New workflows

``````{admonition} Minimal 
:class: warning

<!-- Cite components & platform -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite components & platform

````{tab-set}
:default-tab: Description

```{tab-item} Description
All components (plugins or packages used in the workflow) should be cited with the corresponding version. If publication does not exist, the download URL and the author of the component can be added in the methods section. The platform (including version) used for running the workflow code should also be cited especially in the case of Apple computers with varying chipset options. 

```

````
````` 

<!-- Describe sequence -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_describe_sequence.svg" width="50px"> &nbsp; Describe sequence

````{tab-set}
:default-tab: Description

```{tab-item} Description
The outline of the workflow explains the key processing steps, and it helps readers to quickly understand the overall design of the workflow. The best format is a flowchart, but it can also be a descriptive text. This description can be either in the methods section, supplementary material, or provided as a documentation associated with the code package (GitHub readme, for example).   

```

```{tab-item} Links

**References**
- [Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)
- [A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)
- [The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)

```
````
````` 

<!-- Key settings -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_key_settings.svg" width="50px"> &nbsp; Key settings

````{tab-set}
:default-tab: Description

```{tab-item} Description
Key settings, e.g. the sigma value used for Gaussian blur, the auto threshold algorithm chosen, or the link range used for tracking, can be included as a hard-coded part of the workflow code (minimal), but we recommend a separate list of key settings as a table to explicitly present the condition of the use of the component in the workflow. This list can appear as a part of supplementary material (minimal) or as a part of code package in public repository (recommended). 

```

```{tab-item} Links

**References**
- [Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)
- [A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)
- [The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)

```
````
````` 

<!-- Example data & code -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_example_data_code.svg" width="50px"> &nbsp; Example data & code
````{tab-set}

```{tab-item} Description
Regardless of whether the analysis workflow is highly specific and not designed for general use or user-friendly with GUI, a workflow written in computer code, such as a script, is the best and most exact description of image analysis methods. Example data for running that code is also required so that other researchers can examine and validate the workflow. The method is then reproducible and the scientific adequacy of the workflow can be examined by reviewers and others. The minimal requirement is to associate these materials as supplementary materials with the paper. 

```

```{tab-item} Links
**References** 
- [Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)
- [A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)
- [The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)
```
````
````` 

<!-- Manual ROIs -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_roi.svg" width="50px"> &nbsp; Manual ROIs

````{tab-set}
:default-tab: Description

```{tab-item} Description
If manually annotated ROIs are used in the workflow, those ROIs should be saved as a separate file and uploaded as part of the workflow package. Without these ROIs included, manually selected areas prevent others from reproducing the workflow on their own.
```

```{tab-item} Links
**Tutorials**
- [Measurements & regions of interest · Analyzing fluorescence microscopy images with ImageJ](https://petebankhead.gitbooks.io/imagej-intro/content/chapters/rois/rois.html#saving-rois)
- [Saving ROIs created by analyze particles plugin - Development - Image.sc Forum](https://forum.image.sc/t/saving-rois-created-by-analyze-particles-plugin/39209)

```
````
````` 

<!-- Exact version -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_version.svg" width="50px"> &nbsp; 
````{tab-set}
:default-tab: Description

```{tab-item} Description
If the workflow used is published as a version tracked code in a public repository (e.g. GitHub), the release date or the exact version of the code should be present in the Methods section or supplementary material section. If the workflow is from a commercial software package, the version of the package and the name of the workflow must appear in the manuscript.  If the workflow is only published as a supplementary material, cite that publication. 
```

```{tab-item} Links

**Example**
- [TrackMate Documentation](https://imagej.net/plugins/trackmate/tutorials/getting-started)

**References**
- [TrackMate 7: integrating state-of-the-art segmentation algorithms into tracking pipelines.](https://doi.org/10.1038/s41592-022-01507-1)
- [TrackMate: An open and extensible platform for single-particle tracking](https://doi.org/10.1016/j.ymeth.2016.09.016)
```
````
````` 

``````

``````{admonition} Recommended
:class: note

<!-- All settings -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_all_settings.svg" width="50px"> &nbsp; All settings

````{tab-set}

```{tab-item} Description
Sharing all settings is fairly straightforward in many cases - where a pipeline can be exported or a macro recorded - but can be tricky in others when certain impactful settings are "hidden" within Preferences or Settings sections of the software - for example Fiji has settings that change both the appearance (Invert LUT) and the values (Invert) of images, which may not be part of a given workflow but still can impact the results. Thus it is beneficial to list as much about the "state" of the program as possible, generally in the supplements as the lists can be quite long.
```
````
````` 

<!-- Public example data & code -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_public_example.svg" width="50px"> &nbsp; Public example data & code

````{tab-set}
:default-tab: Description

```{tab-item} Description
Publish the workflow code and example data in a public repository such as GitHub or Zenodo. These repositories allow fine-grained version tracking, enable the precise reproducibility of methods, and feedback from others can also be shared in public.  Example image data can also be separately uploaded to curated databases such as [IDR](https://idr.openmicroscopy.org/) or [Bioimage Archive](https://www.ebi.ac.uk/bioimage-archive/). 
```
```{tab-item} Links
**Tutorials**
- [How to publish and cite code using GitHub and Zenodo.](https://www.youtube.com/watch?v=HZ6m8oxwvig)
- [Overview over different repositories.](https://www.nature.com/articles/s41592-023-01987-9/figures/7)
- [Totorial showing how to use Zenodo.](https://focalplane.biologists.com/2023/02/15/sharing-research-data-with-zenodo/)
- [From publication to IDR study.](https://www.youtube.com/watch?v=dFg2PAF3k7s)
- [Submitting your data to the BioImage Archive.](https://www.youtube.com/watch?v=ZZUslnHcoz0)

**References** 
- [Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)
- [A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)
- [The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)
- [Cell Painting Gallery (CPG).](https://arxiv.org/abs/2402.02203)
- [BioImage Archive.](https://doi.org/10.1016/j.jmb.2022.167505)
- [Image Data Resource (IDR).](https://idr.openmicroscopy.org/) 
- [Electron Microscopy Public Image Archive (EMPIAR).](https://www.ebi.ac.uk/empiar/)
- [A call for public archives for biological image data.](https://doi.org/10.1038/s41592-018-0195-8)
```
````
````` 

<!-- Rationale -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_rationale.svg" width="50px"> &nbsp; Rationale

````{tab-set}
:default-tab: Description

```{tab-item} Description
Describe the biological context of why this workflow was created, the target of measurement, and possibly refer to similar or related workflows.  If necessary, include the mathematical formulations on which the workflow is based. This text can either be a part of methods, supplementary materials, or README file in the code package. 
```
```{tab-item} Links

**References** 
- [CellPose - see Main for rationale and Benchmarking for related workflows](https://www.nature.com/articles/s41592-020-01018-x#Sec1)
```
````
````` 

<!-- Limitations-->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_limitations.svg" width="50px"> &nbsp; Limitations

````{tab-set}
:default-tab: Description

```{tab-item} Description
The scope and the limit of the workflow is better be clearly explained in text. For example, "this workflow is specifically designed for this project and not intended for general use",  "This workflow is applicable only for 3D data, not 2D", "Only with 8-bit image data", "the cell diameter should be larger than xx pixels to avoid large errors", "boundary cells are excluded from analysis" etc. As suggested in the examples, all necessary file type data should be included (TIFF vs PNG vs JPG), for example if a fluorescence image is RGB rather than a 3 channel image with red green and blue channels, both of which are possible in a TIFF file.

```
````
````` 
``````


``````{admonition} Ideal
:class: tip

<!-- Screen recording or tutorial -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_screen_recording.svg" width="50px"> &nbsp; Screen recording or tutorial

````{tab-set}
:default-tab: Description

```{tab-item} Description
Including screengrabs of key steps in a pipeline, or if the option is available, a whole video (which could be a link to a hosted video, for example on YouTube or Google Drive) can make it far easier to reproduce an experiment, even a digital one. There are frequently steps or intermediate results experienced users take for granted, that may not be obvious to newer users of a given software or pipeline - these things can be captured in a full video recording of use but might be missed in a writeup.
```
```{tab-item} Links
- [How to Screen Record on Your Mac (4 Options)| The TechSmith Blog](https://www.techsmith.com/blog/screen-record-mac/)
- [How to screen record in Windows10&11](https://www.tomshardware.com/how-to/screen-record-in-windows)
- [Example of implementation](https://forum.image.sc/t/how-to-count-bees-pattern-recognition-and-segmentation/90115/9?u=mike_nelson)
```
````
````` 

<!-- Easy install & usage, container -->
`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_easy_install.svg" width="50px"> &nbsp; Easy install & usage, container

````{tab-set}
:default-tab: Description

```{tab-item} Description
Installation of software and its dependencies can become a major hurdle for usage of scientific software and thus to the reproduction of any analysis. Creating easy installations and documenting them for users is therefore vital to increase accessibility and reproducibility. 

To overcome the diversity of the computing environment and allow the execution of workflow by anyone, workflow and sample data packaged in a container together (e.g. FIJI version of ImageJ or Icy or Docker images), are ideal solutions for presenting new workflows.
```
```{tab-item} Links

**Tutorials**
- [Example of preparation of a Docker for DL4Mic.](https://github.com/HenriquesLab/DL4MicEverywhere/blob/main/docs/USER_GUIDE.md#run-dl4miceverywhere-for-the-first-time)

**References**
- [Containers for computational reproducibility.](https://doi.org/10.1038/s43586-023-00236-9)
- [Ten simple rules for writing Dockerfiles for reproducible data science](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008316)
```
````
````` 

``````
<!--Notes which will not be shown on the actual page-->