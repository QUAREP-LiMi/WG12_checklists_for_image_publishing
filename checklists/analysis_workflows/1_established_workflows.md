(established_workflows)=
# Established workflows


``````{admonition} Minimal 
:class: warning

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cite.svg" width="50px"> &nbsp; Cite workflow & platform
````{tab-set}
```{tab-item} Description
TODO
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_key_settings.svg" width="50px"> &nbsp; Key settings
````{tab-set}
```{tab-item} Description
Key settings are specific settings of variable parameters that significantly affect the outcome of the workflow when those settings are changed, and can be unique for a given program and version. For example, the spot diameter setting in Trackmate is a key setting that may change the tracking results with a slightly different setting. The choice of algorithm for particle linking is also a key setting.  If the exact same settings are used as the referenced workflow, it is possible to omit them, but writers should be aware that readers will be more likely to use and cite their work if they can utilize their protocol!  WARNING: Users should be careful that the overall defaults have not been changed by an administrator, for example a single installation of Fiji accessed by multiple users may have left over settings changes (like "Invert") that significantly impact an analysis workflow.
```
```{tab-item} Links
[Reproducible image handling and analysis](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7849301/)
https://doi.org/10.15252/embj.2020105889
[A guide to accurate reporting in digital image processing – can anyone reproduce your quantitative analysis?](https://journals.biologists.com/jcs/article/134/6/jcs254151/237886/A-guide-to-accurate-reporting-in-digital-image)
https://doi.org/10.1242/jcs.254151

```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_example.svg" width="50px"> &nbsp; Example data
````{tab-set}
```{tab-item} Description
Example data is required for testing the workflow and the outcome, for peers to study the behavior of the workflow and evaluate its scientific adequacy. 
```
```{tab-item} Links
TODO
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_roi.svg" width="50px"> &nbsp; Manual ROIs
````{tab-set}
```{tab-item} Description
If manually annotated ROIs are used in the workflow, those ROIs should be saved as a separate file and uploaded as part of the workflow package. Without these ROIs included, manually selected areas prevent others from reproducing the workflow on their own.
```
```{tab-item} Links
[Measurements & regions of interest · Analyzing fluorescence microscopy images with ImageJ](https://petebankhead.gitbooks.io/imagej-intro/content/chapters/rois/rois.html#saving-rois)

[Saving ROIs created by analyze particles plugin - Development - Image.sc Forum](https://forum.image.sc/t/saving-rois-created-by-analyze-particles-plugin/39209)
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_version.svg" width="50px"> &nbsp; Exact version
````{tab-set}
```{tab-item} Description
If the workflow used is published as a version tracked code in a public repository (e.g. GitHub), the release date or the exact version of the code should be present in the Methods section or supplementary material section. If the workflow is from a commercial software package, the version of the package and the name of the workflow must appear in the manuscript.  If the workflow is only published as a supplementary material, cite that publication. 
```
```{tab-item} Links
For example: 
https://imagej.net/plugins/trackmate/tutorials/getting-started

Example references: 

Ershov, D., Phan, M.-S., Pylvänäinen, J. W., Rigaud, S. U., Le Blanc, L., Charles-Orszag, A., … Tinevez, J.-Y. (2022). TrackMate 7: integrating state-of-the-art segmentation algorithms into tracking pipelines. Nature Methods, 19(7), 829–832. doi:10.1038/s41592-022-01507-1


Tinevez, J.-Y., Perry, N., Schindelin, J., Hoopes, G. M., Reynolds, G. D., Laplantine, E., … Eliceiri, K. W. (2017). TrackMate: An open and extensible platform for single-particle tracking. Methods, 115, 80–90. doi:10.1016/j.ymeth.2016.09.016
```
````
````` 

``````

``````{admonition} Recommended
:class: note

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_all_settings.svg" width="50px"> &nbsp; All settings
````{tab-set}
```{tab-item} Description
Sharing all settings is fairly straightforward in many cases - where a pipeline can be exported or a macro recorded - but can be tricky in others when certain impactful settings are "hidden" within Preferences or Settings sections of the software - for example Fiji has settings that change both the appearance (Invert LUT) and the values (Invert) of images, which may not be part of a given workflow but still can impact the results. Thus it is beneficial to list as much about the "state" of the program as possible, generally in the supplements as the lists can be quite long.
```
```{tab-item} Links
[Reproducible image handling and analysis](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7849301/)
https://doi.org/10.15252/embj.2020105889
[A guide to accurate reporting in digital image processing – can anyone reproduce your quantitative analysis?](https://journals.biologists.com/jcs/article/134/6/jcs254151/237886/A-guide-to-accurate-reporting-in-digital-image)
https://doi.org/10.1242/jcs.254151
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_public_example.svg" width="50px"> &nbsp; Public example
````{tab-set}
```{tab-item} Description
Example data is required for testing the workflow and the outcome, for peers to study the behavior of the workflow and evaluate its scientific adequacy. Best is to provide this example data on a public repository. 
```
```{tab-item} Links
TODO
```
````
````` 

``````

``````{admonition} Ideal
:class: tip

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_screen_recording.svg" width="50px"> &nbsp; Document usage (e.g. screen recording or tutorial)
````{tab-set}
```{tab-item} Description
Including screengrabs of key steps in a pipeline, or if the option is available, a whole video (which could be a link to a hosted video, for example on YouTube or Google Drive) can make it far easier to reproduce an experiment, even a digital one. There are frequently steps or intermediate results experienced users take for granted, that may not be obvious to newer users of a given software or pipeline - these things can be captured in a full video recording of use but might be missed in a writeup.
```
```{tab-item} Links
How to Screen Record on Your Mac (4 Options)| The TechSmith Blog
https://www.techsmith.com/blog/screen-record-mac/

Screen recording in Windows - https://www.tomshardware.com/how-to/screen-record-in-windows
```
````
````` 

`````{dropdown} <img src="/analysis_workflows/icons_analysis_workflows/icon_cloud_container.svg" width="50px"> &nbsp; Cloud hosted or container
````` 
````{tab-set}
```{tab-item} Description
The method reproducibility is best ensured with a workflow code included in a container (e.g. Docker container) that allows the exact reproduction of the environment for running the workflow code together with the example data. The image of that container can be shared as the reproducible workflow.  Otherwise, a publicly accessible executable environment (e.g. cloud hosted server) can be prepared to let others run the workflow code.
```
```{tab-item} Links
[Tutorial - PDF](https://fox.cs.vt.edu/talks/2020/JCDL%202020%20Reproducibility%20Tutorial.pdf)
[Ten simple rules for writing Dockerfiles for reproducible data science](
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7654784/)

[Containers for computational reproducibility](https://www.nature.com/articles/s43586-023-00236-9)

```
````

``````

<!--Notes which will not be shown on the actual page-->