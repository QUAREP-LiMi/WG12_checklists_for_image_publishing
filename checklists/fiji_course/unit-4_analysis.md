(unit-4_analysis)=
# Unit 4: Quantification

Topics: Image analysis, software versions, code, and example availability

## Motivation

Quantitative results are stronger than qualitative results alone. However, it is critical that the analysis, the tools used, and their settings are all properly documented in the methods. For a custom analysis, the workflow or code itself should be shared so others can reproduce it. 

## Key considerations

- Provide quantifications, not only qualitative results.
- Cite the software tool and specify the version.
- Describe the workflow.
- Disclose critical parameters.

## Learning objective

By the end of this unit, learners will be able to describe how quantitative image analysis should be documented to ensure transparency and reproducibility.

<!---
TODO: Specify time for unit
-->

## Introduction

For our example figure, we could easily imagine that we create a quantitative analysis to count the number of small rounded cells. This could either be based on existing tools or writing our own analysis. 

```{figure} ./resources_unit-3/annotations/annotated_panel.png
:alt: In
:align: center
:name: image_panel
:width: 100%

Nocodazole treatment results in the appearance of small rounded cells in U2-OS cells: (a) U2-OS cells treated with DMSO only. (b) Cropped image of a single cell treated with DMSO. (c) U2-OS cells treated with Nocodazole at a 5 µM concentration over 24h show appearance of small rounded cells (White Arrowheads). (d) Cropped image of a small rounded cells. Scale bar represents 100 µm (a) and 20 µm (b). 
```

Download the example images here: 
- [multichannel_image.tif](./resources_unit-1/unit-1_examples/multichannel_image.tif).
- [multichannel_image_treat.tif](./resources_unit-3/examples/multichannel_image_treat.tif).

## Analysis based on existing workflows

For our example images, we were able to adopt a published tool, OrgaMapper:

Schmied, C., Ebner, M., Samsó, P. et al. OrgaMapper: a robust and easy-to-use workflow for analyzing organelle positioning. BMC Biol 22, 220 (2024). [https://doi.org/10.1186/s12915-024-02015-8](https://doi.org/10.1186/s12915-024-02015-8)

To reproduce the analysis, you will need to get the plugin in Fiji:

Help > Update...


```{figure} ./resources_unit-3/figure/imagej_updater.png
:alt: In
:align: center
:name: orgamapper_updater
:width: 50%

Update Fiji.
```

Press: Manage update site

Select Cellular Imaging Facility

Press OK and restart Fiji.

Save the example images in an input folder (e.g., test). OrgaMapper documents the analysis settings using an .xml file. Please download the settings: [settings .xml](./resources_unit-4/existing_workflow/2026-04-13T175308-settings.xml) and put it into the input folder. Create an output folder (e.g., test_out). 

Start OrgaMapper:

Plugins > CellularImaging > Map Organelle

Specify the location of the input folder, output folder, and the settings file. Then press OK to start OrgaMapper. 

```{figure} ./resources_unit-4/existing_workflow/orgamapper_start.png
:alt: In
:align: center
:name: orgamapper_start
:width: 50%

Start OrgaMapper.
```

OrgaMapper then performs a simple watershed-based image segmentation and a basic per-cell analysis on both the control and treatment images. For more information about the analysis performed, you can go to the [documentation of OrgaMapper](https://schmiedc.github.io/OrgaMapper/). 

OrgaMapper visualizes this on the example images using the "Preview" button:

```{figure} ./resources_unit-4/existing_workflow/orgamapper.png
:alt: In
:align: center
:name: orgamapper
:width: 50%

OrgaMapper preview of the segmentation.
```

To execute the analysis, press the "Batch Process" button. OrgaMapper then performs the analysis based on the loaded settings and will save the results in the output folder. 

```{figure} ./resources_unit-4/existing_workflow/orgamapper_results.png
:alt: In
:align: center
:name: orgamapper_results
:width: 50%

OrgaMapper Results.
```

Critical is that we can extract the cell area in the "cellMeasurements.csv" file:

```{figure} ./resources_unit-4/existing_workflow/orgamapper_cellarea.png
:alt: In
:align: center
:name: orgamapper_cellarea
:width: 50%

OrgaMapper cell area results.
```

We then applied a simple threshold to ask how many cells in the control and Nocodazole-treated images had an area above or below 1000 µm², yielding the following result:


Treatment |Cells with area <1000 µm² |Cells with area >1000 µm² |Total cells  |% small cells|
----------|--------------------------|--------------------------|-------------|-------------|
DMSO      |0	                     |63	                    |63           |0            |
Nocodazole|23	                     |6	                        |29           |79           |


This quantification could now be in the result of your manuscript. It is important to properly document the performed analysis. For this, it is again critical to document the used software platform as well as the tools and their versions:


Image analysis was performed using Fiji Is Just ImageJ (Fiji) ([Schindelin et al. 2012](https://doi.org/10.1038/nmeth.2019)) version 2.16/1.54p and the OrgaMapper plugin version 2.0.0 ([Schmied et al. 2024](https://doi.org/10.1186/s12915-024-02015-8)). Nuclei were segmented using an intensity-based segmentation with the Li automatic threshold after filtering with a median filter (size 5 pixels) and a rolling-ball background subtraction (radius 10 pixels). After thresholding, an erosion of 1 pixel was applied to the nuclei masks, and the segmented nuclei were filtered by size, keeping those between 1 µm² and 750 µm². The cell area was segmented using a manual intensity threshold of 150 fluorescent intensity (A.U.) after a median filter (size 10 pixels) and a rolling-ball background subtraction (radius 150 pixels). For the watershed-based cell segmentation, cell centers were detected using a summed nuclei and cytoplasm channel: a Laplacian-of-Gaussian filter was applied with a sigma of 2 pixels, and peaks with a prominence of 40 fluorescent intensity (A.U.) were retained. Separated cells were then filtered by keeping cells above 10 µm² with a circularity above 0.3. For each cell, the cell area was further analyzed. Small cells were defined as those with an area below 1000 µm².

- Schindelin, J., Arganda-Carreras, I., Frise, E. et al. Fiji: an open-source platform for biological-image analysis. Nat Methods 9, 676–682 (2012). https://doi.org/10.1038/nmeth.2019

- Schmied, C., Ebner, M., Samsó, P. et al. OrgaMapper: a robust and easy-to-use workflow for analyzing organelle positioning. BMC Biol 22, 220 (2024). [https://doi.org/10.1186/s12915-024-02015-8](https://doi.org/10.1186/s12915-024-02015-8)


:::{tip} 

Since OrgaMapper provides a settings file, this settings file can be shared in a data repository. 

:::

:::{note}

Manual intensity based thresholds based on fluorescent intensity (A.U.) are image data specific. Thus, are not directly transferable to other data. 

:::

## Analysis based on new workflows

For this analysis, we could just as easily write a custom Fiji macro instead of using an existing plugin. In that case, the code is itself the analysis, so the macro and a small example dataset should be deposited in a data or code repository — without these, neither reviewers nor future readers can verify or reproduce what was done. 

## Code and example availability


```{figure} ./resources_unit-3/availability/repositories.png
:alt: In
:align: center
:name: data_repositories
:width: 100%

Examples of different repositories. Overview provided by [Cimini 2023](https://doi.org/10.5281/zenodo.7628604).
```