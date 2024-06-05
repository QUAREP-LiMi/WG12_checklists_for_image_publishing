(image_colors_channels)=
# Image colors and channels


``````{admonition} Minimal 
:class: warning

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_1.png" height="50px"> &nbsp; Annotation of channels (staining, marker etc.) visible
````{tab-set}
```{tab-item} Description
Add the staining or marker within or beside the relevant image (panel). 
```
```{tab-item} Links
[Global BioImaging: Using OMERO.figure to add channel labels](https://youtu.be/5OQgB9fWqSI?t=308)

```
````
````` 

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_2.png" height="50px"> &nbsp; Adjust brightness/contrast, report adjustments, use uniform color-scales
````{tab-set}
```{tab-item} Description
Intensity range adjustments should be monitored with the image histogram and done with care: a too wide intensity range results in ‘faded’ images that lack details, while a too narrow intensity range removes data.
Use a range indicator LUT (e.g. HiLo in Fiji) to highlight pixels where data was removed due to a too narrow intensity range.

Plain brightness adjustments mostly increase background or decrease signal, without improving distinction between different objects, structures or intensities. Contrast increases bright and decreases dark intensities and can lead to a better distinguishability of signals. However it also increases perceived intensitie differences and might suggest stronger changes than occurring in reality. Contrast adjustments directly applied on RGB color images changes color tones of stains. Therefore, only the brightness component of a color image should be adjusted in most cases. Signal should not be clipped and intensity cutoff values should be reported for transparency and reproducibility reasons. Data clipping leads to information loss and over- or under-saturation, which both should be avoided to prevent misinterpretation of published images.
```
```{tab-item} Links
One quick possibility to adjust the contrast of multiple imaghould be compared in one figure can be achieved [as shown here.](https://youtu.be/F6ll37NOgXc?si=liPCwE-PmWGFgM9Y&t=930)
[Example images](https://drive.google.com/file/d/1w-tlDERcWSMUKXkzuwC2-ppLr0UNx3W2/view?usp=drive_link)


```
````
`````  

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_3.png" height="50px"> &nbsp; Image comparison: use same adjustments
````{tab-set}
```{tab-item} Description
Any adjustments to the image, such as brightness/contrast must be consistent across all images within an experiment, that might be directly compared.

All changes such as contrast, background subtractions, pseudo-coloring etc. need to be kept strictly the same to keep images comparable. The same holds up for the imaging settings before any image editing.
```
```{tab-item} Links
One quick possibility to adjust the contrast of multiple imaghould be compared in one figure can be achieved [as shown here.](https://youtu.be/F6ll37NOgXc?si=liPCwE-PmWGFgM9Y&t=930)
```
````
````` 

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_4.png" height="50px"> &nbsp; Channel colors high visibility on background. Best visibility: grayscale
````{tab-set}
```{tab-item} Description
Ensure the use of highly contrastive colors when choosing for your individual microscopy channels. Darker colors, like blue, are less visible on a black background while lighter colors, like yellow, are highly visible on a black background but less so on a brightfield image with a white background.
```
```{tab-item} Links
TODO
```
````
`````  
 
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_5.png" height="50px"> &nbsp; Multi-color: provide grayscale for each color channel
````{tab-set}
```{tab-item} Description
Grayscale images are often easier to visually distinguish fine detail within than color channels; providing them ensures the reader can see your phenotype to best effect.

For intensity-based images (e.g. fluorescence) the channels relevant for understanding the conclusion and analysis should be displayed best separately as single channels in a gray range (black to white). Sometimes inversion can positively impact visibility.
```
```{tab-item} Links
Exporting merge images and grayscale images from Fiji and aligning them in Inkscape:
https://youtu.be/F6ll37NOgXc?si=ot8oPgYVQ9yh8Pwo&t=1504 (25:04-31:50)

Adding grayscale channels in OMERO.figures:
https://youtu.be/Mty7_382kMM?si=FQmHvPx5xLjbeqPt&t=542 (9:02-13:00)

Sample images - 

SVG:
https://drive.google.com/file/d/13j5E4RD3Qxh9M08SNdha841p6EpbqIGF/view?usp=drive_link

PNG:
https://drive.google.com/file/d/1jgVQdd12muB-qErsTFYCJEkMyU3d8-Uu/view?usp=drive_link
 
```
````
````` 

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_6.png" height="50px"> &nbsp; Multi-color: if channels are merged, make accessible to color blind
````{tab-set}
```{tab-item} Description
If creating merged images, ensure the LUTs chosen are separable for color-blind readers; online simulations can help you check this.

Maximally merge up to 3 channels in one composite image. Better are 2 only. For 2 channels the best color combination is green/magenta. For 3 channels cyan/magenta/yellow can be used. The latter might lead to optical oversaturation perception and might be negative in case of very bright signal.

Example:
Pseudo colors can be added to individual channels in Fiji via the >Image >Lookup Tables menu OR via the BioVoxxel Figure Tools LUT Channels Tool plugin. The latter offers a CDV (color deficient vision) test option to check if color combinations are "color-blind" friendly
```
```{tab-item} Links
Sample results - 
SVG: https://drive.google.com/file/d/1st1C1xInJlhAYqBMnBuMHkMfqWZsRAoK/view?usp=drive_link
PNG: https://drive.google.com/file/d/1udtDpD5pyuSJz8AW2RUT4XMBS27tEHb5/view?usp=drive_link

```
````
`````  

``````

``````{admonition} Recommended
:class: note

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_7.png" height="50px"> &nbsp; Provide intensity scales (calibration bar) for grayscale, color, pseudocolor
````{tab-set}
```{tab-item} Description
Intensity calibration bars (or scales) should be provided for better interpretablility of intensity values, ranges and distributions. They can also serve to more quantitatively highlight differences seen by eye. Calibration bars are absolutely necessary if multi-pseudo-colors are used to provide the information about the relation between different colors and actual pixel intensities.

Example:
In Fiji / ImageJ use >Analyze >Tools >Calibration Bar...

```
```{tab-item} Links
Sample results:
SVG: 
https://drive.google.com/file/d/1nidSBMY_BU-LEbb7vo3ZiC0BYTdPp6ob/view?usp=drive_link

PNG:
https://drive.google.com/file/d/1LqyRhEmfdt7sJvMG6kTG3oedkI10IC7E/view?usp=drive_link
```
````
````` 

``````

``````{admonition} Ideal
:class: tip

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_8.png" height="50px"> &nbsp; Pseudo-colored images: additionally provide grayscale version for comparison
````{tab-set}
```{tab-item} Description
See links for guides and options for creating pseudo-colored images. Of course, greyscale provides the best and usually "fairest" contrast for a single channel, though LookUp Tables can emphasize certain pixel value ranges that are relevant to a particular study.
```
```{tab-item} Links

[Best Practices for Pseudo-coloring Fluorescence Microscopy Images](https://www.youtube.com/watch?v=JT9mUkEG-C0&ab_channel=Microcourses)
[Learn how to create figures using the OMERO extension OMERO.figure.](https://www.youtube.com/watch?v=YeCFaB7VAAQ)

```
````
````` 

`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_9.png" height="50px"> &nbsp; Gamma adjustments: additionally provide linear-adjusted image for comparison
````{tab-set}
```{tab-item} Description
Gamma as well as other non-linear adjustments change relative pixel intensity and color relations and can negatively influence optical intensity comparisons. Overenhancement of specific regions can also occur. Therefore, those changes need to be reported and the original images should be provided for transparency.
```
```{tab-item} Links
TODO
```
````
`````  

``````

<!--Notes which will not be shown on the actual page-->