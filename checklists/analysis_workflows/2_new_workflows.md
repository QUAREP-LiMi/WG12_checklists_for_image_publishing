(new_workflows)=
# New workflows

``````{admonition} Minimal 
:class: warning

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite components & platform
````{tab-set}
```{tab-item} Description
All components (plugins or packages used in the workflow) should be cited. If a publication does not exist, the download URL and the author of the component can be added in the Methods section. The specific platform used for running the workflow code should also be cited, especially in the case of Apple computers with varying chipset options. 
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_describe_sequence.svg" width="50px"> &nbsp; Describe sequence
````{tab-set}
```{tab-item} Description
The outline of the workflow explaining the key processing steps helps readers to quickly understand the overall design of the workflow before examining the workflow in details. The best format is a flowchart, but it can also be a descriptive text. This description can be either in the methods section, supplementary material, or as a documentation associated with the code package. 
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
Key settings, e.g. the sigma value used for Gaussian blur, auto threshold algorithm, or the link range used for tracking, can be included as a hard-coded part of the workflow code (minimal), but we recommend a separate list of key settings as a list to explicitly present the condition of the use of the component in the workflow. This list can appear as a part of supplementary material (minimal) or as a part of code package in public repository (recommended). 

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
TODO
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_version.svg" width="50px"> &nbsp; Exact versions
````{tab-set}
```{tab-item} Description
TODO
```
```{tab-item} Links
TODO
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
TODO
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
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_easy_install.svg" width="50px"> &nbsp; Easy install & usage, container
````{tab-set}
```{tab-item} Description
TODO
```
```{tab-item} Links
TODO
```
````
````` 

``````
<!--Notes which will not be shown on the actual page-->