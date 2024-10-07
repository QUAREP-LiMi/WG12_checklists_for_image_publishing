(new_workflows)=
# New workflows

``````{admonition} Minimal 
:class: warning

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite components & platform
````{tab-set}
```{tab-item} Description
All components (plugins or packages used in the workflow) should be cited with the corresponding version. If publication does not exist, the download URL and the author of the component can be added in the methods section. The platform (including version) used for running the workflow code should also be cited, especially in the case of Apple computers with varying chipset options. 
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_describe_sequence.svg" width="50px"> &nbsp; Describe sequence
````{tab-set}
```{tab-item} Description
The outline of the workflow explains the key processing steps, and it helps readers to quickly understand the overall design of the workflow. The best format is a flowchart, but it can also be a descriptive text. This description can be either in the methods section, supplementary material, or provided as a documentation associated with the code package (GitHub readme, for example).  
```
```{tab-item} Links
[Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)

[A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)

[The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_key_settings.svg" width="50px"> &nbsp; Key settings
````{tab-set}
```{tab-item} Description
Key settings, e.g. the sigma value used for Gaussian blur, the auto threshold algorithm chosen, or the link range used for tracking, can be included as a hard-coded part of the workflow code (minimal), but we recommend a separate list of key settings as a table to explicitly present the condition of the use of the component in the workflow. This list can appear as a part of supplementary material (minimal) or as a part of code package in public repository (recommended). 

```
```{tab-item} Links
[Reproducible image handling and analysis](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7849301/)
https://doi.org/10.15252/embj.2020105889
[A guide to accurate reporting in digital image processing – can anyone reproduce your quantitative analysis?](https://journals.biologists.com/jcs/article/134/6/jcs254151/237886/A-guide-to-accurate-reporting-in-digital-image)
https://doi.org/10.1242/jcs.254151
```
````
````` 



`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_roi.svg" width="50px"> &nbsp; Manual ROIs
````{tab-set}
```{tab-item} Description
If manually annotated ROIs are used in the workflow, those ROIs should be saved as a separate file and uploaded as part of the workflow package. Without these ROIs included, manually selected areas prevent others from reproducing the workflow on their own.
```
```{tab-item} Links
Measurements & regions of interest · Analyzing fluorescence microscopy images with ImageJ
https://petebankhead.gitbooks.io/imagej-intro/content/chapters/rois/rois.html#saving-rois

Saving ROIs created by analyze particles plugin - Development - Image.sc Forum
https://forum.image.sc/t/saving-rois-created-by-analyze-particles-plugin/39209

```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_version.svg" width="50px"> &nbsp; Exact versions
````{tab-set}
```{tab-item} Description
If the workflow used is published as a version tracked code in a public repository (e.g. GitHub), the release date or the exact version of the code should be present in the Methods section or supplementary material section. If the workflow is from a commercial software package, the version of the package and the name of the workflow must appear in the manuscript.  If the workflow is only published as a supplementary material, cite that publication. 
```
```{tab-item} Links
For example: 
https://imagej.net/plugins/trackmate/tutorials/getting-started
For example: 

Ershov, D., Phan, M.-S., Pylvänäinen, J. W., Rigaud, S. U., Le Blanc, L., Charles-Orszag, A., … Tinevez, J.-Y. (2022). TrackMate 7: integrating state-of-the-art segmentation algorithms into tracking pipelines. Nature Methods, 19(7), 829–832. doi:10.1038/s41592-022-01507-1

and / or

Tinevez, J.-Y., Perry, N., Schindelin, J., Hoopes, G. M., Reynolds, G. D., Laplantine, E., … Eliceiri, K. W. (2017). TrackMate: An open and extensible platform for single-particle tracking. Methods, 115, 80–90. doi:10.1016/j.ymeth.2016.09.016
```
````
````` 

``````

``````{admonition} Recommended
:class: note

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_example_data_code.svg" width="50px"> &nbsp; Public example data & code
````{tab-set}
```{tab-item} Description
Publish the workflow code and example data in public repository such as GitHub or Zenodo. These repositories allow fine-grained version tracking, enable the precise reproducibility of methods, and feedback from others can also be shared in public.  Example image data can also be separately uploaded to curated daatbases such as IDR or Bioimage Archive. 
```
```{tab-item} Links
[Reproducible image handling and analysis | The EMBO Journal](https://www.embopress.org/doi/full/10.15252/embj.2020105889)

[A Practical Guide for Improving Transparency and Reproducibility in Neuroimaging Research | PLOS Biology](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002506)

[The five pillars of computational reproducibility: bioinformatics and beyond - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10591307/)
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_all_settings.svg" width="50px"> &nbsp; All settings
````{tab-set}
```{tab-item} Description
Sharing all settings is fairly straightforward in many cases - where a pipeline can be exported or a macro recorded - but can be tricky in others when certain impactful settings are "hidden" within Preferences or Settings sections of the software - for example Fiji has settings that change both the appearance (Invert LUT) and the values (Invert) of images, which may not be part of a given workflow but still can impact the results. Thus it is beneficial to list as much about the "state" of the program as possible, generally in the supplements as the lists can be quite long.
```
```{tab-item} Links
TODO
```
````
````` 



`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_rationale.svg" width="50px"> &nbsp; Rationale
````{tab-set}
```{tab-item} Description
Describe the biological context of why this workflow was created, the target of measurement, and possibly refer to similar or related workflows. This text can either be a part of methods, supplementaty materials, or README file in the code package. 
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_limitations.svg" width="50px"> &nbsp; Limitations
````{tab-set}
```{tab-item} Description
The scope and the limit of the workflow is better be clearly explained in text. For example, "this workflow is specifically designed for this project and not intended for general use",  "This workflow is applicable only for 3D data, not 2D", "Only with 8-bit image data", "the cell diameter should be larger than xx pixels to avoid large errors", "boundary cells are excluded from analysis" etc. As suggested in the examples, all necessary file type data should be included (TIFF vs PNG vs JPG), for example if a fluorescence image is RGB rather than a 3 channel image with red green and blue channels, both of which are possible in a TIFF file.
```
```{tab-item} Links
TODO
```
````
````` 

``````

``````{admonition} Ideal
:class: tip

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_screen_recording.svg" width="50px"> &nbsp; Screen recording or tutorial
````{tab-set}
```{tab-item} Description
Including screengrabs of key steps in a pipeline, or if the option is available, a whole video (which could be a link to a hosted video, for example on YouTube or Google Drive) can make it far easier to reproduce an experiment, even a digital one. There are frequently steps or intermediate results experienced users take for granted, that may not be obvious to newer users of a given software or pipeline - these things can be captured in a full video recording of use but might be missed in a writeup.
```
```{tab-item} Links
How to Screen Record on Your Mac (4 Options)| The TechSmith Blog
https://www.techsmith.com/blog/screen-record-mac/

How to screen record in Windows10&11
https://www.tomshardware.com/how-to/screen-record-in-windows

Example: https://forum.image.sc/t/how-to-count-bees-pattern-recognition-and-segmentation/90115/9?u=mike_nelson
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_easy_install.svg" width="50px"> &nbsp; Easy install & usage, container
````{tab-set}
```{tab-item} Description
Installation of software and its dependencies can become a major hurdle for usage of scientific software and thus to the reproduction of any analysis. Creating easy installations and documenting them for users is therefore vital to increase accessibility and reproducibility. 

To overcome the diversity of the computing environment and allow the execution of workflow by anyone, workflow and sample data packaged in a container together (e.g. FIJI version of ImageJ or Icy or Docker images), are ideal solutions for presenting new workflows.
```
```{tab-item} Links
see example of preparation of a Docker for DL4Mic:

https://github.com/HenriquesLab/DL4MicEverywhere/blob/main/docs/USER_GUIDE.md#run-dl4miceverywhere-for-the-first-time

References
Moreau, D., Wiebels, K. & Boettiger, C. Containers for computational reproducibility. Nat Rev Methods Primers 3, 50 (2023). https://doi.org/10.1038/s43586-023-00236-9

Ten simple rules for writing Dockerfiles for reproducible data science | PLOS Computational Biology
https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008316

https://github.com/HenriquesLab/DL4MicEverywhere/blob/main/docs/USER_GUIDE.md#run-dl4miceverywhere-for-the-first-time
```
````
````` 

``````
<!--Notes which will not be shown on the actual page-->