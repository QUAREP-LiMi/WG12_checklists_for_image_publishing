(unit-2_format)=
# Unit 2: Format and annotations

Topics: Foundations of Image Figures. Crop, resize, rotate, scale-bar

## Motivation

Scientific image figures communicate scientific results in a qualitative manner. It is important that the result is readily apparent in the image figures without distorting or degrading the information. 

Additionally, scientific images capture real world objects that have a physical dimension. These dimensions can cover different magnitudes of scales (e.g., electron microscopy, light microscopy). This physical dimension needs to be communicated using scale bars. 

## Key considerations

- Is the communicated result readily apparent?
- Are key annotations e.g., scale bar communicate?

## Introduction

We start with the result of [Unit 1: Visibility](./unit-1_visibility.md) the composite image with adjusted colors, brightness and contrast. You can download the image here: [composite.tif](./unit-1_resources/merge/composite.tif).

Open Fiji...

Then open the image in Fiji: 

File > Open... (or drag and drop image into Fiji task bar)

```{figure} /tutorials/unit-1_resources/merge/composite.png
:alt: In
:align: center
:name: Composite image 2
:width: 100%

Composite image
```

The image shows a field of view of many cells. This image gives the reader a good overview and might be an appropriate figure panel if the number of cells, cell density or the overall look of the cellular neighborhood is the actual result. However if the result that is discussed happens in the cells for instance the size, distribution of a specific cellular compartment morphology (e.g., Mitochondria in the magenta channel) this overview will be insufficient. 

Also the image is missing key annotations. The cells shown are physical objects that have dimension that can be expressed in specific units. This is not readily apparent to the viewer with the image alone. Particularily if the image figure might also show enlarged insets or use the results of other imaging modalities (e.g., electron microscopy, light microscopy). Further, other critical information is also not readily apparent to the viewer for instance what cell line is shown (U2-OS) or what do the colors mean (Green = Cytoskeleton, Magenta = Mitochondria, Cyan = Nucelus).

To clearly communicate the result the image needs to be further processed and annotated with key labels (scale bar at the minimum). 

## Format

Lets assume our result is discussing the size and distribution of organelles. For this we want to focus the viewer on key image content using cropping. First identify a representative object in your image.

:::{important}

The selection of the object in the image that should be cropped is as important as the selection of the overview. The shown object should be representative. Acceptable methods to choose a image for a figure could be:
- Representative image
- Random selection
- Based on analysis (middle of distribution)
- Show multiple examples of range of phenotype

:::

### Crop

Draw region of interest (ROI) by selecting a ROI tool in the Fiji task bar, for instance using the rectangle. 

```{figure} /tutorials/unit-2_resources/crop/roi.png
:alt: In
:align: center
:name: roi
:width: 100%

Rectangle ROI drawn on image.
```

:::{tip}
You can save the exact ROI on the image as a non-destructive overlay to easily label origin of crop. This is done by saving the image with an active ROI as TIFF image.  
:::


The part of the image within the ROI can now be cropped using: 

Image > Crop... (Ctrl + Shift + X)


```{figure} /tutorials/unit-2_resources/crop/crop.png
:alt: In
:align: center
:name: crop
:width: 25%

Crop
```

Since it is preserving the original image it is better to use duplication: Image > Duplicate (Ctrl + Shift + D)

```{figure} /tutorials/unit-2_resources/crop/duplicate_roi.png
:alt: In
:align: center
:name: duplicate_crop
:width: 75%

Cropping via duplication
```

:::{tip}
You can manage multiple ROIs via the ROI Manager. Just open the ROI Manager:

Analyze > Tools > ROI Manager...

In the ROI Manager the press Add [t]

Alternatively pressing t will also open the ROI Manager and add the current active ROI.

```{figure} /tutorials/unit-2_resources/crop/roi_manager.png
:alt: In
:align: center
:name: roi_manager
:width: 100%

ROI Manager
```

The ROIs can then be saved as an independent file.

ROI Manager > Deselect (This selects all ROIs)

ROI Manager > More > Save...

:::

### Rotate

Sometimes the visualization in the images benefits also from rotating the objects. This can be achieved in Fiji:

Image > Transform > Rotate 90 Degress...

Image > Transform > Flip...

:::::{important} 

Rotation by multiple of 90 Degree in Fiji can preserve data. Any other rotation performed in Fiji needs to interpolate pixel values and thus can alter the image information.

```{figure} /tutorials/unit-2_resources/crop/rotation_interpolation.png
:alt: In
:align: center
:name: interpolation
:width: 100%

Interpolation and rotation. Left: 10 x 10 px original, Middle: 90 Degree rotation, Right: 45 Degree rotation bilinear interpolation.
```

Interpolation is needed since in Fiji images are processed as Raster graphics (grid of pixels). The effect of raster graphics and interpolation is also discussed here: [Background Unit 3](/background/unit-3_figure_prep_background.md) 

:::::

## Annotations

We have now the overview image as well as the crop that shows the details of one representative cell. 

```{figure} /tutorials/unit-2_resources/annotate/scale_bar1.png
:alt: In
:align: center
:name: scale_bar1
:width: 100%

Overview and crop show different scale.
```

We need to communicate the scale information as well as other important information (e.g., color) to the viewer such that the image becomes interpretable. 

### Scale Bar

The scale bar can be created in Fiji via:

Analyze > Tools > Scale Bar...

```{figure} /tutorials/unit-2_resources/annotate/scale_bar2.png
:alt: In
:align: center
:name: scale_bar2
:width: 100%

Scale added to the overview as overlay. 
```

Important is to tick the "Overlay" setting. This adds the scale bar to the image as a non-desctructive layer. 

:::{important}

The scale bar depends on the pixel size. This is information that is typically deposited in the saved image by the microscope. This information can be wrong therefore verify via your acquistion settings. 

The correct pixel size can be verified and changed in Fiji via: 

Analyze > Set Scale...

```{figure} /tutorials/unit-2_resources/annotate/set_scale.png
:alt: In
:align: center
:name: set_scale
:width: 100%

Verify and set the correct pixel size before creating scale bars
```


:::

The width of the scale bar should be done in a size that relates to the actual size of the shown objects. 

```{figure} /tutorials/unit-2_resources/annotate/scale_bar3.png
:alt: In
:align: center
:name: scale_bar3
:width: 100%

The width of the scale bar should be in relation to the shown object
```

<!---
Tip box: What if my scale is incorrect. Setting scales
--->

### Colors, Dimensions, Arrows

Further annotations can be created in Fiji using the following commands:

Image > Stacks > Label...

Image > Annotate > Arrow...

<!---
## Quantification

- Results of quantifications are better than just visual results
- Cite software tool and specify version
- Describe workflow
- Disclose critical parameters

## Describe images in figures

## Methods description
--->