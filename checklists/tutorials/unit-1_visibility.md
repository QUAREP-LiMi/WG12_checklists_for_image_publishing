(tutorials)=
# Unit 1: Visibility

Topics discussed: Brightness/Contrast, colors, accessibility

## Motivation

Microscopy images are data that document a scientific result. To communicate the scientific result in an image figure effectively and truthfully the image typically needs to be processed. This processing can go wrong and the image figure can incorrectly present the image ({ref}`image_presentation`)

```{figure} /tutorials/unit-1_resources/Figure1.png
---
:alt: In
:align: center
:name: image_presentation
:figclass: unnumbered
---
The same multi channel image visualized in different forms. All fail to communicate the content of the image well. (A) The multichannel image visualized using blue, green, red and yellow look up table. (B) The same multichannel image with all channels visualized in grey scale. (C) Finally, the brightness contrast was processed incorrectly and the image appears dark. 
```
## Key considerations

- Is the result clearly shown?
- Is the information visible?
- What do the colors mean?
- Are key annotations present?

Another important aspect that we should also consider is the choice of images. Typically, an image dataset is acquired instead of just a single image. We need to carefully consider the method of how to choose the image the should represent the result. 

Acceptable methods to choose a image for a figure:
- Representative image
- Random selection
- Based on analysis (middle of distribution)
- Show multiple examples of range of phenotype


:::{tip}

Fiji allows to record all processing steps that are carried including the settings using the macro recorder. This can be used to create a script to automatically process multipe images but could also be used to document all the processing. 

Record used functions and settings: Plugins > Macros > Record...
:::

## Visibility - Colors

In order to process individual channels we need to first split the images

Image > Color > Split

Look up tables (LUT)

Image > Lookup Tables...

Image > Color > Merge Channels...


:::{tip}

<!---
>>> Tip box: Discuss color choices
-->

We recommend to also provide gray scale images.

Provide calibration bar: Analyze > Tools > Calibration Bar…

:::

## Visibility - Brightness Contrast

Image > Adjust > Brightness/Contrast... (Ctrl + Shift + C)

:::{tip}

TIP: Work on a copy of the image: Image > Duplicate... (Ctrl + Shift + D)

:::


<!---
:::{tip}

Tip box: intensity sampling: how to interpret a Histogram.

Check intensity sampling: Analyze > Histogram... (Ctrl + H)
:::
-->

