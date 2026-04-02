(image_colors_channels)=
# Image colors and channels


``````{admonition} Minimal 
:class: warning

<!-- Annotation of channels (staining, marker etc.) visible -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_1.png" height="50px"> &nbsp; Annotation of channels (staining, marker etc.) visible

````{tab-set}
:default-tab: Description

```{tab-item} Description
Clearly annotate the channels with specific information, including staining (brightfield, e.g. H&E) or labelled molecules (e.g. CD4(Cyan) ) using text or text and colour for merged multi-label images. 

```

```{tab-item} Resources

**Tutorials**
- [Global BioImaging: Using OMERO.figure to add channel labels](https://youtu.be/5OQgB9fWqSI?t=308)
- [See the creation of a panel of images using InkScape with imports from Fiji](https://youtu.be/CgfnlcxbjuI?t=3579)  
- [QuickFigures plugin in Fiji](https://youtu.be/9Crg-FAOHmc?t=386)

```
````
````` 

<!-- Adjust brightness/contrast, report adjustments, use uniform color-scales -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_2.png" height="50px"> &nbsp; Adjust brightness/contrast, report adjustments, use uniform color-scales

````{tab-set}
:default-tab: Description

```{tab-item} Description
Intensity range adjustments should be monitored with the image histogram and done with care: a too wide intensity range results in ‘faded’ images that lack details, while a too narrow intensity range removes data.
Use a range indicator LUT (e.g. HiLo in Fiji) to highlight pixels where data was removed due to a too narrow intensity range.

Plain brightness adjustments can increase background or decrease signal, without improving distinction between different objects, structures or intensities. Contrast increases bright and decreases dark intensities and can lead to a better distinguishability of signals. However, it also increases perceived intensity differences and may overemphasize real changes. Contrast adjustments directly applied on RGB color images changes color tones of stains. Therefore, only the brightness component of a color image should be adjusted in the most optimal case. Signal should not be clipped and intensity cutoff values should be reported in Materials and Methods to ensure transparency and reproducibility. Data clipping leads to information loss and over- or under-saturation, which both should be avoided to prevent misinterpretation of published images.

```

```{tab-item} Example

<img src="/image_publishing/example_images/Contrast_adjustment.png" style="max-width: 100%; width: 600px; height: auto;">

```

```{tab-item} Resources

**Tutorials**
- One quick possibility to adjust the contrast of multiple imaghould be compared in one figure can be achieved [as shown here.](https://youtu.be/F6ll37NOgXc?si=liPCwE-PmWGFgM9Y&t=930)
- [Omero.figure.](https://www.youtube.com/watch?v=YeCFaB7VAAQ)

```
````
`````  

<!-- Image comparison: use same adjustments -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_3.png" height="50px"> &nbsp; Image comparison: use same adjustments

````{tab-set}
:default-tab: Description

```{tab-item} Description
Any adjustments to the image, such as brightness/contrast must be consistent across all images within an experiment that might be directly compared.

Changes such as contrast adjustment, background subtractions, pseudo-coloring etc. should be kept strictly the same if different images are being shown for comparison. The same holds for the imaging settings before any image editing.

```

```{tab-item} Resources

**Tutorials**
- One quick possibility to adjust the contrast of multiple imaghould be compared in one figure can be achieved [as shown here.](https://youtu.be/F6ll37NOgXc?si=liPCwE-PmWGFgM9Y&t=930)

```
````
````` 

<!-- Channel colors high visibility on background. Best visibility: grayscale -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_4.png" height="50px"> &nbsp; Channel colors high visibility on background. Best visibility: grayscale

````{tab-set}
:default-tab: Description

```{tab-item} Description
Ensure the use of high contrast colors when choosing Look Up Tables (LUTs) for visualizing individual microscopy channels. The best visibility is always grayscale for single channel images as applying a color LUT (pseudocolour) onto any image makes the displayed pixels seem darker. 

Sometimes inverting the intensity scale can positively impact visibility.

For color LUTs darker colors, like blue, are less visible against a black background while lighter colors, like yellow, are highly visible against a black background. Keep in mind that the inverse is true for white background brightfield images. Image colors must be interpretable and accessible to readers, while not being misleading.

```

```{tab-item} Resources

**Tutorials**
- [See figures within](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.3001161)
- [Inverted Look Up Tables in Fiji: Single tweet tutorial by Christophe Leterrier](https://twitter.com/christlet/status/1126919664880291840)
- [Did you know – Image Analysis Style](https://didyouknowimageanalysis.wordpress.com/2023/03/17/including-visual-content-in-presentations-and-documents-without-breaking-the-file-size-bank-part-2/)


**References**
- [Accurate representation.](https://doi.org/10.1007%2F978-1-62703-056-4_1)
- [High visibility and accessibility.](https://doi.org/10.1371/journal.pbio.3001161)
- Katsnelson 2021: [Colour me better: fixing figures for colour blindness](https://www.nature.com/articles/d41586-021-02696-z)
```
````
`````  
 
<!-- Multi-color: provide grayscale for each color channel -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_5.png" height="50px"> &nbsp; Multi-color: provide grayscale for each color channel

````{tab-set}
:default-tab: Description

```{tab-item} Description
Our intensity perception is best when using grayscale (black to white). Thus, for fluorescent images the channels relevant for understanding the conclusion and analysis must be also shown as separate grayscale images.

```

```{tab-item} Example

<img src="/image_publishing/example_images/GrayscaleChannelsPlusMerge.png" style="max-width: 100%; width: 600px; height: auto;">

[Download SVG](/image_publishing/example_images/GrayscaleChannelsPlusMerge.svg)

```

```{tab-item} Resources

**Tutorials**
- [Exporting merge images and grayscale images from Fiji and aligning them in Inkscape.](https://youtu.be/F6ll37NOgXc?si=ot8oPgYVQ9yh8Pwo&t=1504)
- [Adding grayscale channels in OMERO.figures.](https://youtu.be/Mty7_382kMM?si=FQmHvPx5xLjbeqPt&t=542)
-[Spectral sensitivity of the human eye.](https://physics.stackexchange.com/questions/519202/spectral-sensitivity-of-the-human-eye)

 
```
````
````` 

<!-- Multi-color: if channels are merged, make accessible to color blind -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_6.png" height="50px"> &nbsp; Multi-color: if channels are merged, make accessible to color blind

````{tab-set}
:default-tab: Description

```{tab-item} Description
Maximally merge up to 3 channels in one composite image. Better are 2 only. For 2 channels the best color combination is green/magenta. For 3 channels cyan/magenta/yellow can be used. The latter might lead to optical oversaturation perception and might be negative in case of very bright signal.

Example:
Pseudo colors can be added to individual channels in Fiji via the >Image >Lookup Tables menu OR via the BioVoxxel Figure Tools LUT Channels Tool plugin. The latter offers a CDV (color deficient vision) test option to check if color combinations are "color-blind" friendly
```

```{tab-item} Example

<img src="/image_publishing/example_images/Pseudo_color_choice_and_CDV.png" style="max-width: 100%; width: 600px; height: auto;">

[Download SVG](/image_publishing/example_images/Pseudo_color_choice_and_CDV.svg)

```

```{tab-item} Resources

**Tutorials**
- [Color blind friendly figures.](https://www.nki.nl/about-us/responsible-research/guidelines-color-blind-friendly-figures/)


```
````
`````  

``````

``````{admonition} Recommended
:class: note

<!-- Provide intensity scales (calibration bar) for grayscale, color, pseudocolor -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_7.png" height="50px"> &nbsp; Provide intensity scales (calibration bar) for grayscale, color, pseudocolor

````{tab-set}
:default-tab: Description

```{tab-item} Description
Intensity calibration bars (or scales) should be provided for better interpretablility of intensity values, ranges and distributions. They can also serve to more quantitatively highlight differences seen by eye. Calibration bars are absolutely necessary if multi-pseudo-colors are used to provide the information about the relation between different colors and actual pixel intensities. While such bars can be placed within images to save space provided they are sufficiently visible, it is often easier to utilize and interpret color scales when placed outside of the image.

Example:
In Fiji / ImageJ use >Analyze >Tools >Calibration Bar...

```

```{tab-item} Example

<img src="/image_publishing/example_images/Calibration_bar_24042901.png" style="max-width: 100%; width: 600px; height: auto;">

[Download SVG](/image_publishing/example_images/Calibration_bar_24042901.svg)

```
````
````` 

``````

``````{admonition} Ideal
:class: tip

<!-- Pseudo-colored images: additionally provide grayscale version for comparison -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_8.png" height="50px"> &nbsp; Pseudo-colored images: additionally provide grayscale version for comparison

````{tab-set}
:default-tab: Description

```{tab-item} Description
Greyscale provides the best and usually "fairest" contrast for a single channel. LookUp Tables can emphasize certain pixel value ranges that are relevant to a particular study. For instance color LUTs can be associated with specific stains, fluorescent dyes or fluorescent proteins (e.g. GFP = Green, RFP = Magenta). Another use of could be non linear colors scale are often used to encode other information examples are fluorescent life time in FLIMM imaging. See links for guides and options for creating pseudo-colored images. If you use pseudocolor images provide a grayscale version for comparison in the image figure or the supplements. 

```


```{tab-item} Example

<img src="/image_publishing/example_images/Calibration_bar_24042901.png" style="max-width: 100%; width: 600px; height: auto;">

[Download SVG](/image_publishing/example_images/Calibration_bar_24042901.svg)

```

```{tab-item} Resources
**Tutorials**
- [Best Practices for Pseudo-coloring Fluorescence Microscopy Images](https://www.youtube.com/watch?v=JT9mUkEG-C0&ab_channel=Microcourses)
- [Learn how to create figures using the OMERO extension OMERO.figure.](https://www.youtube.com/watch?v=YeCFaB7VAAQ)

```
````
````` 

<!-- Gamma adjustments: additionally provide linear-adjusted image for comparison -->
`````{dropdown} <img src="/image_publishing/icons_image_publishing/ImageColors_9.png" height="50px"> &nbsp; Gamma adjustments: additionally provide linear-adjusted image for comparison

````{tab-set}
:default-tab: Description

```{tab-item} Description
Gamma as well as other non-linear adjustments change relative pixel intensity and color relations and can negatively influence optical intensity comparisons. Overenhancement of specific regions can also occur. Therefore, those changes need to be reported and the original images should be provided for transparency. Upload of original image data to a publicly accessible data repository e.g. Zenodo is recommended as an optional validation step for the reader.

```

```{tab-item} Resources

**Tutorials**
- [Text based explanation specific to microscopy.](https://micro.magnet.fsu.edu/primer/java/digitalimaging/processing/gamma/index.html)
- [Video from Photography explaining gamma.](https://youtu.be/FvwXQnP7nLQ?si=v8RbWl62IVC5jaJ3) 
- [Video from Photography explaining gamma.](https://youtu.be/KxgoLBY1vZw?si=sqKTY1zMVaWUo6Da)
```
````
`````  

``````

<!--Notes which will not be shown on the actual page-->