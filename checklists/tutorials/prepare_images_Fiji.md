(tutorials)=
# Prepare images with Fiji

This tutorial is showing in practice how to create an image figure for publication using [Fiji](https://fiji.sc/). The intention is to go with one example from original image to an image figure. 

For this tutorial you are going to need: 

- Fiji is just ImageJ (Fiji): [https://fiji.sc/](https://fiji.sc/)
- Image data: [Zenodo repository]()

## Input images

- Is the result clearly shown?
- Is the information visible?
- What do the colors mean?
- Are key annotations present?

Another important aspect that we should also consider is the choice of images. 

Acceptable methods to choose a image for a figure:
- Representative image
- Random selection
- Based on analysis (middle of distribution)
- Show multiple examples of range of phenotype


:::{tip}

Fiji allows to record all processing steps that are carried including the settings using the macro recorder. This can be used to create a script to automatically process multipe images but could also be used to document all the processing. 

Record used functions and settings: Plugins > Macros > Record...
:::

## Visibility - Brightness Contrast

Image > Adjust > Brightness/Contrast... (Ctrl + Shift + C)


TIP: Check intensity sampling: Analyze > Histogram... (Ctrl + H)

<!---
Tip box: intensity sampling: how to interpret a Histogram.
-->


## Visibility - Colors

In order to process individual channels we need to first split the images

Image > Color > Split

TIP: Work on a copy of the image: Image > Duplicate... (Ctrl + Shift + D)

Look up tables (LUT)

Image > Lookup Tables...

Image > Color > Merge Channels...

<!---
>>> Tip box: Discuss color choices
-->

We recommend to also provide gray scale images.

Provide calibration bar: Analyze > Tools > Calibration Bar…

## Format

Focus on key image content using crop.

Draw region of interest (ROI)

Image > Crop... (Ctrl + Shift + X)

Better: Image > Duplicate (Ctrl + Shift + D)

<!---
Tip: You can save ROI on the image as overlay to easily label origin of crop
-->

<!---
Tip: Use ROI Manager to handle ROIs
--->

## Annotation

### Scale Bar

Analyze > Tools > Scale Bar...

<!---
Tip box: What if my scale is incorrect. Setting scales
--->

### Colors, Dimensions, Arrows

Image > Stacks > Label...
Image > Annotate > Arrow...

## Availability

- Public repository
- Original images used in figures (lossless compression)
- If applicable ground truth and manual annotations

<!---
Tip box: Repository examples
--->

<!---
## Quantification

## Describe images in figures

## Methods description
--->

## Further material

Cheatsheets for creating image figures

Schmied C and Jambor HK. Effective image visualization for publications – a workflow using open access tools and concepts [version 2]. F1000Research 2021, 9:1373 (doi: 10.12688/f1000research.27140.2)

## Help

If you need help write to the team on [image.sc](image.sc): [https://forum.image.sc/tag/quarep](https://forum.image.sc/tag/quarep). 

You can also reach out to the creator of this tutorial: [schmiedc](https://forum.image.sc/u/schmiedc) 