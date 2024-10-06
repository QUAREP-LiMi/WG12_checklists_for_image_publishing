(image_format)=
# Image format

Light microscopy images in publications can rapidly communicate useful details if they are prepared to be information dense, clean and containing the most important information/metadata the audience needs to see at a glance. A set of simple processing rules can focus the audience’s attention to the most relevant parts that are crucial for understanding the experiment and/or results. Consult the steps below to start your journey to create understandable and reproducible figures. 

``````{admonition} Minimal
:class: warning


`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageFormat_1.png" width="50px">  &nbsp;Focus on relevant content

````{tab-set}

```{tab-item} Description
Crop empty/irrelevant portions of the image to focus the audience’s attention. Rotate images when required, ideally in 90 degree increments, but make sure to use bilinear or bicubic interpolation ohterwise. Resize images to fit the intended panel size, always making sure to constrain the aspect ratio.

```

```{tab-item} Links
Tutorials
See the creation of a panel of images using InkScape with imports from Fiji. https://youtu.be/CgfnlcxbjuI?t=3579 

QuickFigures plugin in Fiji: https://youtu.be/9Crg-FAOHmc?t=386

or FigureJ here (more basic): 
https://imagejdocu.list.lu/plugin/utilities/figurej/start

References

https://f1000research.com/articles/9-1373

https://doi.org/10.1371/journal.pone.0240280

https://doi.org/10.1111/jmi.12069
```
````
`````

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageFormat_2.png" width="50px">  &nbsp;Separate individual images

````{tab-set}

```{tab-item} Description
There should always be some sort of border with a strong contrast to indicate a difference between images, whether this is the same color as the page background for individual images in a panel, or a color not otherwise found in the image for a magnified inset.

```

```{tab-item} Links
See the [creation of a panel of images using InkScape with imports from Fiji.](https://youtu.be/CgfnlcxbjuI?t=3579) 
[QuickFigures plugin in Fiji](https://youtu.be/9Crg-FAOHmc?t=386)

or FigureJ here (more basic): 
https://imagejdocu.list.lu/plugin/utilities/figurej/start

or Omero.figure: 
https://www.youtube.com/watch?v=YeCFaB7VAAQ 

References

https://f1000research.com/articles/9-1373

https://doi.org/10.1371/journal.pone.0240280

https://doi.org/10.1111/jmi.12069

```
````
`````

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageFormat_3.png" width="50px">  &nbsp;Show example image used for quantifications

````{tab-set}

```{tab-item} Description
Provide context and a dash of accountability by complementing a graph of results with one of the quantified images.
Those example images should be unchanged to show the original data that were used for quantification. It maximally should include a quantitative background subtraction by subtracting a measured imaging background value if significantly high to reduce any negative impact on intensity readout. Any contrast adjustment should be avoided on those examples.

```

```{tab-item} Links
None
```
````
`````

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageFormat_4.png" width="50px"> &nbsp;Indicate position of zoom-view/inset in full-view/original image

````{tab-set}

```{tab-item} Description
When the big picture is as important as the small details, show both. Zoomed-in areas of an image should always be indicated as exactly as possible.  The position of the inset within the full-view image should be made clear, should not obstruct any key data, and if resized, should not be interpolated to give the impression of higher resolution than was actually obtained.

```

```{tab-item} Links
[Create loss-less, original quality insets using Fiji and Inkscape](https://youtu.be/F6ll37NOgXc?si=DAeQ8svYdgWHPh0U&t=1197)

[Create zoomed insets in OMERO Figures](https://youtu.be/5OQgB9fWqSI?t=376)

Example files:
SVG:
https://drive.google.com/file/d/1oM7xA1PLjoeZv0am99ACd4rzH0TCk2Wo/view?usp=drive_link

PNG:
https://drive.google.com/file/d/1aNvqWRt1ixVIe5jtzUH0zpWyls9QseuJ/view?usp=drive_link

```
````
`````

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageFormat_5.png" width="50px"> &nbsp;Show images of the range of described phenotype

````{tab-set}

```{tab-item} Description
As tempting as it may be to cherry pick the image that shows the nicest or most representative case, show the audience a flavor of everything: the good, the bad and the ugly.
Be sure to clearly indicate which population each image is selected from.

```

```{tab-item} Links
Protocol for per-metadata representative image crop generation - https://currentprotocols.onlinelibrary.wiley.com/doi/full/10.1002/cpz1.713

```
````
`````

``````

<!--Notes which will not be shown on the actual page-->
