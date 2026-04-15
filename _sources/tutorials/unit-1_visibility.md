(unit-1_visibility)=
# Unit 1: Visibility

Topics: Brightness and Contrast, colors, accessibility

<!---
Topics for background:
What is an image? 
Pixels
Gray values
Usage of histograms
-->

## Motivation

Microscopy images are data that document a scientific result. To communicate the scientific result in an image figure effectively and truthfully, images typically needs to be processed. This processing can go wrong, and the image figure can incorrectly present the image ({numref}`image_presentation`):

```{figure} /tutorials/unit-1_resources/image_presentation.png
:alt: In
:align: center
:name: image_presentation

The same multi-channel image is visualized in different forms. All fail to communicate the content of the image well. (A) The multichannel image visualized using blue, green, red, and yellow Look-up-table. (B) The same multichannel image with all channels visualized in a gray scale. (C) Finally, the brightness contrast was processed incorrectly, and the image appears dark. 
```
## Key considerations

- Is the information visible?
- What do the colors mean?
- Is the information accessible to a wide audience?


:::{important}

Another important aspect that we should also consider at this stage is the choice of images. Typically, an image dataset is acquired instead of just a single image. We need to carefully consider the method of choosing an image that represents the result. Acceptable methods to choose an image for a figure could be:
- Representative image
- Random selection
- Based on analysis (middle of distribution)
- Show multiple examples of the range of phenotypes

:::

## Introduction

This tutorial starts with an multi-channel image ({numref}`multichannel_image`). Download a TIFF of the example image here: [multichannel_image.tif](./unit-1_resources/unit-1_examples/multichannel_image.tif).

Open Fiji...

```{figure} /tutorials/unit-1_resources/Fiji_task_bar.png
:alt: In
:align: center
:name: Fiji task bar
:width: 100%

Fiji task bar
```

Then open the image in Fiji: 

File > Open... (or drag and drop image into Fiji task bar)

```{figure} /tutorials/unit-1_resources/multichannel_image.png
:alt: In
:align: center
:name: multichannel_image
:width: 50%

Multichannel image
```

:::{tip}

Work on a copy of the image: Image > Duplicate... (Ctrl + Shift + D)

:::

In order to process individual channels, we need to first split the images.

Image > Color > Split Channels

::::{grid} 4
:gutter: 2

:::{grid-item}
```{figure} /tutorials/unit-1_resources/C1.png
:width: 100%
Channel 1
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/C2.png
:width: 100%
Channel 2
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/C3.png
:width: 100%
Channel 3
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/C4.png
:width: 100%
Channel 4
:::
::::

Each of the channels encodes different cellular compartments. 

| Channel | Image Name               | Cellular Compartment                              | 
|---------|--------------------------|---------------------------------------------------|
|1        |C1-multichannel_image.tif | Mitochondria                                      |
|2        |C2-multichannel_image.tif | F-actin cytoskeleton, Glogi, plasma membrane      |
|3        |C3-multichannel_image.tif | Nucleus                                           |
|4        |C4-multichannel_image.tif | Endoplasmic reticulum, Nucleoli, cytoplasmic RNA  |

As you can see, the images are displayed using different colors. Typically, microscopy images are grayscale images, and the colors are chosen to make the image information easier to understand for humans. The color could, for instance, communicate different cellular compartments, e.g., nuclei = cyan, cytoskeleton = green.

:::{note}

The images have been acquired using a [Spinning Disk Confocal Microscope](https://doi.org/10.1247/csf.27.349) using a sCMOS camera that acquires grayscale images. Most microscope systems acquire images in grayscale. This is different from natural images (i.e., photography), where different camera sensors are used that produce Red, Green, and Blue (RGB) images. 

:::

Further,  each image also has different brightness and contrast settings, thus being more or less visible. Colors, as well as the brightness and contrast settings, need to be adjusted to visualize the image effectively.  

:::{tip}

Fiji allows to record most processing steps that are carried out, including the settings using the macro recorder. This can be used to create a script to automatically process multiple images, but could also be used to document the processing. 

Record used functions and settings: Plugins > Macros > Record...
:::


## Colors

The colors are part of a [Look up tables (LUT)](https://neubias.github.io/training-resources/lut/index.html) that assign specific color values to the pixel values. One can change the color LUT for each image using: 

Image > Lookup Tables

For the image figure of the example image, we want to visualize channel 1 (mitochondria), channel 2 (cytoskeleton), and channel 3 (nucleus). Here we choose the following color scheme:

|Channel  |Cellular Compartment                               |LUT    |
|---------|---------------------------------------------------|-------|
|1        |Mitochondria                                       |Magenta|
|2        |F-actin cytoskeleton, Glogi, plasma membrane       |Green  |
|3        |C3-multichannel_image.tif | Nucleus                |Cyan   |

:::{Important}

For color choice, consider that a part of the population is color blind (e.g., red - green bindness). Also consider the different visibility of different colors on different backgrounds, for instance, dark blue is hard to perceive on a black background; a cyan LUT would be better. Thus, LUTs combinations should be used that visualize images well and for a broad audience. In our experience, the combination of magenta, green, and cyan works well. 

:::

Channel 2 presents already in the green color LUT, defined by in the microscope settings and part of the image metadata. To channels 1 and 3, we can apply the color LUT:

Select image: C1-multichannel_image.tif

Image > Lookup Tables > Magenta

Select image: C3-multichannel_image.tif

Image > Lookup Tables > Cyan

::::{grid} 3
:gutter: 2

:::{grid-item}
```{figure} /tutorials/unit-1_resources/colors/C1-multichannel_image_magenta.png
:width: 100%
Channel 1
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/colors/C2-multichannel_image_green.png
:width: 100%
Channel 2
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/colors/C3-multichannel_image_cyan.png
:width: 100%
Channel 3
:::

::::


:::{important}

Since the perception of the information in the image is influenced by the color choice, we recommend including gray-scale images at least in the supplements. 

:::

:::{tip}

For these grayscale microscopy images, it is important to choose appropriate color LUTs (e.g., linear color range) that communicate the image information effectively (e.g., good visibility). 

Color choice can also be based on conventions in the field (e.g., Nucleus = Cyan, Membrane = Magenta, Cytoplasm = Green). Alternatively, colors can also correspond to the used fluorophore (e.g., DAPI = Cyan, Green fluorescent protein (GFP) = green, red fluorescent protein (RFP) = magenta). 

The color LUT can also be inverted to visualize the information better:

Image > Color > Invert LUTs

:::

## Brightness and Contrast

Images vary in visibility depending on their brightness and contrast settings. This is because the intensity range (i.e., pixel or gray values) of images typically acquired using microscopes (e.g., 16-bit images have  65,536 unique values) is much larger than the intensity range that can be displayed on computer screens or even the intensity range that the human eye can perceive (i.e., closer to 8-bit or 256 unique values). Thus, the available intensity range must be adjusted. In Fiji, this is achieved using the Brightness/Contrast setting. 

As you can see in our example images, in some panels, the information is not well visible. 

::::{grid} 3
:gutter: 2

:::{grid-item}
```{figure} /tutorials/unit-1_resources/colors/C1-multichannel_image_magenta.png
:width: 100%
Channel 1
:::

:::{grid-item}
```{figure} /tutorials/unit-1_resources/colors/C2-multichannel_image_green.png
:width: 100%
Channel 2
:::

:::{grid-item}
```{figure} /tutorials/unit-1_resources/colors/C3-multichannel_image_cyan.png
:width: 100%
Channel 3
:::

::::

Select one of the channels: C1-multichannel_image.tif

Image > Adjust > Brightness/Contrast... (Ctrl + Shift + C)

```{figure} /tutorials/unit-1_resources/brightness_contrast.png
:alt: In
:align: center
:name: brightness_contras
:width: 25%

Brightness/Contrast setting
```

Brightness/Contrast interface:
- Minimum slider: Selected value (shown left) will be set to black in the display.
- Maximum slider: Selected value (shown right) will be set to white in the display.
- Brightness slider: Moves the display range and adjusts image brightness.
- Contrast: Increases or decreases the displayed range to adjust contrast.
- Auto: Saturates the image by 0.35% steps.
- Reset: Sets the display to the min and max values in the image or 0-255 for 8-bit.
- Set: Input fixed values, useful for making comparisons
- Apply: Histogram stretching using the set min & max. Caution: not reversible!

In our experience, the only setting that needs to be regularly adjusted is the maximum intensity slider to make the information in the image more visible. Often cycling through a number of "Auto" settings and observing the effect on the visualization can generate good display settings. Typically, the default minimum setting is set to the lowest intensity value present in the image and is good enough. 

:::{important}
Do not cut off information in the lower intensities, e.g., removing structures close to the background to make the images prettier. 

Avoid oversaturation of large parts of the image. You can see the effect of this very easily when different objects start to merge. 
:::

The Brightness/Contrast setting is a powerful setting that can drastically alter the visualized information of the image. For demonstration purposes, here are a couple of examples of how the same content can be visualized. 

::::{grid} 2
:gutter: 2

:::{grid-item}
```{figure} /tutorials/unit-1_resources/brightness_contrast/first_auto_setting.png
:width: 100%
After the first auto setting, 0.35% of the image is saturated. The objects (mitochondria) are visible and separated. Low-intensity information is present. 
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/brightness_contrast/reset_image.png
:width: 100%

After pressing reset, the Min & Max sliders are set to the minimum and maximum intensity values. As a result, the objects are not clearly visible.
:::

:::{grid-item}

```{figure} /tutorials/unit-1_resources/brightness_contrast/saturated.png
:width: 100%

Saturated image: Note that the objects are completely merged, and the low intensity structures appear in the same intensity as the objects.
:::

:::{grid-item}
```{figure} /tutorials/unit-1_resources/brightness_contrast/background_cut.png
:width: 100%

Background cut too much: Note loss of lower intensity information.
:::

::::

Adjust the maximum slider or press "Auto" until the objects are well visible and still clearly separated, as overstaturation leads to a loss of resolution.

::::{grid} 3
:gutter: 2

:::{grid-item}
```{figure} /tutorials/unit-1_resources/brightness_contrast/C1-multichannel_image_bc.png
:width: 100%
Channel 1: Min = 308; Max = 2484
:::

:::{grid-item}
```{figure} /tutorials/unit-1_resources/brightness_contrast/C2-multichannel_image_bc.png
:width: 100%
Channel 2: Min = 84 Max = 2965
:::

:::{grid-item}
```{figure} /tutorials/unit-1_resources/brightness_contrast/C3-multichannel_image_bc.png
:width: 100%
Channel 3: Min = 36; Max = 1270
:::

::::

The information in the image is now clearly visible in the display without large loss of data (i.e., loss of low intensity information or oversaturation).

:::{important}
For correct qualitative comparisons, it is vital to apply the same min & max values on all the images that are compared. 

For multi-channel images, the same settings across the channels might not be feasible, as the signal might have a different intensity distribution. It is important to use the same settings on the equivalent channels in the images that one wants to compare.
:::

Since the Brightness/Contrast setting can alter the visualized information so drastically, we recommend:
- Original images are provided for image figures (i.e., via image repository). 
- Minimum and maximum settings are recorded in the methods. 

One can also provide a calibration bar next to the image. This is particularly useful if the intensity values are calibrated (i.e., photon count, not arbitrary units). In Fiji, a calibration bar can be produced like so:

Select image one of the channels: C1-multichannel_image.tif

Provide calibration bar: Analyze > Tools > Calibration Bar…


```{figure} /tutorials/unit-1_resources/brightness_contrast/calibration_bar.png
:alt: In
:align: center
:name: Calibration bar
:width: 50%

Calibration bar
```

:::{important}
Applied Brightness/Contrast adjustments or, in general, bit depth reduction (e.g., 16-bit converted down to 8-bit) represent a loss of information! Such images should, in general, not be used for quantitative image analysis. In particular, intensity quantification must not be performed on such images. 
:::


## Create merged image

After the color and brightness are adjusted, the three adjusted images can then be combined into a merged image.

Image > Color > Merge Channels...

Assign then the correct channels and LUTs select "Create composite" and then press OK.

```{figure} /tutorials/unit-1_resources/merge/merge_channels.png
:alt: In
:align: center
:name: Merge channels
:width: 50%

Merge channels
```

:::{tip}
As you can see, you can also use the merge channels tool to assign the LUTs. Here, you would then select the correct channel/LUT combination, select "ignore source LUTs," and then press OK.
:::

The image then gets merged into a composite image (i.e., all channels are still separate images). Note the slider at the bottom of the image that still allows you to select different channels. 


```{figure} /tutorials/unit-1_resources/merge/composite.png
:alt: In
:align: center
:name: Composite image
:width: 50%

Composite image
```

Download a TIFF of the result image here: [composite.tif](./unit-1_resources/merge/composite.tif).

:::{note}

Merging more than three color channels into a single image is tricky, as the different combined colors might not be easily distinguished anymore by eye. Except that the objects are well separated, which is often not the case for biological information. Thus, we in general recommend to visualize more than 3 channels separately, ideally using gray scale images. 

:::

## Bonus: Macro recorder

The macro recorder allows for documenting the processing steps that are carried out in the graphical user interface (GUI).  

:::{important}

Some GUI interactions are not recorded! For instance, adjusting the minimum or maximum slider is will not present in the recorded macro. This would only be present if done via the "Set" button.

:::

The recorder can be started: 

Plugins > Macros > Record…

A text window appears that now documents most GUI adjustments. 

```{figure} /tutorials/unit-1_resources/macro/macro_recorder.png
:alt: In
:align: center
:name: Macro recorder
:width: 100%

Macro recorder
```

:::{tip}

Typically, one tries different settings on the image. You can go to the Recorder and modify the recorded commands to only include the final executed commands.

:::

The final recorded macro documents the processing that has been performed. Press the button "Create" to create the macro and save it:

File > Save As... 

Save as .ijm Fiji macro. 


```{figure} /tutorials/unit-1_resources/macro/macro_script.png
:alt: In
:align: center
:name: Macro script
:width: 100%

Macro script
```

The cool thing is that by pressing “Run” one can reproduce the entire processing. Even cooler is to fully automate the processing of all your images by doing some [simple macro programming](https://imagej.net/scripting/macro). You can download the macro example to test it [Macro.ijm](./unit-1_resources/macro/macro_unit-1.ijm).

:::{note} 

For the macro to work, the "multichannel_image.tif" image needs to be open under this exact name in Fiji.

:::