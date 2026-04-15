(unit-2_format)=
# Unit 2: Format and annotations

Topics: Crop, rotate, scale-bar

## Motivation

Scientific image figures communicate scientific results in a qualitative manner. Therefore, it is important that the result is readily apparent in the image figure without distorting or degrading the information. 

Additionally, scientific images capture real world objects that have a physical dimension. These dimensions can cover different magnitudes of scales depending on the imaging modality, e.g., electron microscopy or light microscopy. At a minimum, this physical dimension needs to be communicated using scale bars. 

## Key considerations

- Is the communicated result readily apparent?
- Are key annotations, e.g., scale bar, present?

## Introduction

We start with the result of [Unit 1: Visibility](./unit-1_visibility.md), the composite image with adjusted colors, brightness, and contrast. You can download the image here: [composite.tif](./unit-1_resources/merge/composite.tif).

Open Fiji...

Then open the image in Fiji: 

File > Open... (or drag and drop image into Fiji task bar)

```{figure} /tutorials/unit-1_resources/merge/composite.png
:alt: In
:align: center
:name: Composite image 2
:width: 100%

Composite image.
```
The image shows a field of view of many cells. It gives the viewer a good overview and might be an appropriate figure panel if the number of cells, cell density, or the overall look of the cellular neighborhood is the actual result. However, if the result is, for instance, the size or distribution of a specific cellular compartment (e.g., Mitochondria in the magenta channel), this overview alone will be insufficient. 

Further, the image is missing key annotations. The cells shown are physical objects that have dimensions that can be expressed in specific units. This is not readily apparent to the viewer with the image alone. Particularly if the image figure might also show enlarged views or other images that show results of other imaging modalities (e.g., electron microscopy, light microscopy). Finally, other critical information is also not readily apparent to the viewer, for instance, what cell line is shown (U2-OS) or what the colors mean (Green = Cytoskeleton, Magenta = Mitochondria, Cyan = Nucleus).

To clearly communicate the result, the image needs to be further processed and annotated with key labels (scale bar at a minimum). 

:::{tip}

Work on a copy of the image: Image > Duplicate... (Ctrl + Shift + D)

:::

## Format

Let's assume our result is discussing the size and distribution of the mitochondria. For this, we want to focus the viewer on key image content using cropping. First, identify a representative object in your image.

:::{important}

The selection of the object in the image that should be cropped is as important as the selection of the overview. The shown object should be representative. Acceptable methods to choose an image for a figure could be:

- Representative image.
- Random selection.
- Based on analysis (middle of distribution).
- Show multiple examples of the range of phenotypes.

Since the selection of the cropped example is so critical, it is best to always show the overview next to the crop with the origin annotated.

:::

### Crop

Draw a region of interest (ROI) by selecting a ROI tool in the Fiji task bar, for instance, using the rectangle. 

```{figure} /tutorials/unit-2_resources/crop/roi.png
:alt: In
:align: center
:name: roi
:width: 100%

Rectangle ROI drawn on image.
```

:::{tip}

You can save the exact ROI on the image as a non-destructive overlay to easily label the origin of the crop. This is done by saving the image with an active ROI as a TIFF image.  

File > Save As > Tiff...

:::


The part of the image within the ROI can now be cropped using: 

Image > Crop... (Ctrl + Shift + X)


```{figure} /tutorials/unit-2_resources/crop/crop.png
:alt: In
:align: center
:name: crop
:width: 25%

Cropped image.
```

To create a crop, one can also use the duplicate command: 

Image > Duplicate (Ctrl + Shift + D)

```{figure} /tutorials/unit-2_resources/crop/duplicate_roi.png
:alt: In
:align: center
:name: duplicate_crop
:width: 75%

Cropping via duplication of the content of the ROI.
```

### Rotate

Sometimes the visualization in the images also benefits from rotating the objects. This can be achieved by:

Image > Transform > Rotate 90 Degress...

Image > Transform > Flip...

:::::{important} 

Rotation by multiples of 90 degrees in Fiji can preserve data. Any other rotation performed in Fiji needs to interpolate pixel values and thus can alter the image information.

```{figure} /tutorials/unit-2_resources/crop/rotation_interpolation.png
:alt: In
:align: center
:name: interpolation
:width: 100%

Interpolation and rotation. (Left) 10 x 10 px original. (Middle) 90 Degree rotation. (Right) 45 Degree rotation bilinear interpolation.
```

Interpolation is needed since in Fiji, images are processed as Raster graphics (grid of pixels). The effect of raster graphics, image transformation, and interpolation is also discussed here: [Raster graphics and interpolation](/background/raster_graphics_interpolation.md) 

:::::

## Annotations

We now have the overview image as well as the crop that shows the details of one representative cell. 

```{figure} /tutorials/unit-2_resources/annotate/scale_bar1.png
:alt: In
:align: center
:name: scale_bar1
:width: 100%

Overview and crop show different scale.
```

We need to communicate the scale information as well as other important information (e.g., color) to the viewer such that the image becomes interpretable. 

### Scale Bar

The scale bar depends on the pixel size. This is information that is typically deposited in the saved image by the microscope. This information can be wrong. We therefore need to verify this information via your acquisition settings. 

The correct pixel size can be verified and changed in Fiji via: 

Analyze > Set Scale...

```{figure} /tutorials/unit-2_resources/annotate/set_scale.png
:alt: In
:align: center
:name: set_scale
:width: 100%

Verify and set the correct pixel size before creating scale bars.
```

After the correct pixel size has been verified, the scale bar can be created in Fiji via:

Analyze > Tools > Scale Bar...

```{figure} /tutorials/unit-2_resources/annotate/scale_bar2.png
:alt: In
:align: center
:name: scale_bar2
:width: 100%

Scale bar added to the overview as an overlay. 
```

:::{important} 

Tick the "Overlay" setting. This adds the scale bar to the image as a non-destructive layer. 

:::

The width of the scale bar should be done in a size that relates to the actual size of the shown objects (e.g., size of a cell, size of the nucleus). 

```{figure} /tutorials/unit-2_resources/annotate/scale_bar3.png
:alt: In
:align: center
:name: scale_bar3
:width: 100%

The width of the scale bar should be in relation to the shown object.
```

:::{note}

The size of the scale bar can also be specified in the figure legend. 

An acceptable alternative to a scale bar is to specify the physical dimension of the entire image. However, just stating the magnification of the detection lens is not sufficient, as the pixel size can also depend on other factors such as sampling rate or binning.

:::

### Further annotations

Further annotations can be created in Fiji using the following commands:

Image > Annotate > Arrow...

Image > Stacks > Label...

However, we recommend creating such annotations in a dedicated vector graphics program, such as Inkscape. We discuss the creation of the publication-ready image figure here: [Unit 3: Figure prep and availability](./unit-3_figure_prep.md)


<!---

What could be relevant is to dicuss adding timestamps in movies, or frame of movies.

--->

## Result

You can download the result of [Unit 2: Visibility](./unit-2_format.md) here: [composite_scale.tif](./unit-2_resources/unit-2_examples/composite_scale.tif) and [composite_crop_scale.tif](./unit-2_resources/unit-2_examples/composite_crop_scale.tif).

## Bonus: ROI Manger and overlays

You can manage multiple ROIs and also annotations via the ROI Manager. Just open the ROI Manager:

Analyze > Tools > ROI Manager...

To add ROIs press Add [t]

Alternatively pressing "t" on the keyboard will also open the ROI Manager and add the current active ROI.

```{figure} /tutorials/unit-2_resources/roi_manager/roi_manager.png
:alt: In
:align: center
:name: roi_manager
:width: 75%

ROI Manager window.
```

Scale bars or annotations that exist as overlays can be added to the ROI Manager via:

Image > Overlay > To ROI Manager

```{figure} /tutorials/unit-2_resources/roi_manager/overlay_roi_manager.png
:alt: In
:align: center
:name: overlay_roi_manager
:width: 75%

Overlay in ROI Manager.
```

The ROIs can then be saved as an independent file:

ROI Manager > Deselect (This selects all ROIs)

ROI Manager > More > Save...

:::

