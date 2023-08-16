# Image colors and channels


````{dropdown} Minimal 
- [ ] <img src="images_icons/blank.png" height="25px"> Annotation of channels (staining, marker etc.) visible
  - Add the staining or marker within or beside the relevant image (panel). 
- [ ] <img src="images_icons/blank.png" height="25px">  Adjust brightness/contrast, report adjustments, use uniform color-scales
  - Intensity range adjustments should be monitored with the image histogram and done with care: a too wide intensity range results in ‘faded’ images that lack details, while a too narrow intensity range removes data.
  - Use a range indicator LUT (e.g. HiLo in Fiji) to highlight pixels where data was removed due to a too narrow intensity range
- [ ] <img src="images_icons/blank.png" height="25px"> Image comparison: use same adjustments
  - Any adjustments to the image, such as brightness/contrast must be consistent across all images within an experiment, that might be directly compared.
- [ ] <img src="images_icons/blank.png" height="25px">  Channel colors high visibility on background. Best visibility: grayscale
  - Ensure the use of highly contrastive colors when choosing for your individual microscopy channels. Darker colors, like blue, are less visible on a black background while lighter colors, like yellow, are highly visible on a black background but less so on a brightfield image with a white background. 
- [ ] <img src="images_icons/blank.png" height="25px"> Multi-color: provide grayscale for each color channel
  - Grayscale images are often easier to visually distinguish fine detail within than color channels; providing them ensures the reader can see your phenotype to best effect.
- [ ] <img src="images_icons/blank.png" height="25px">  Multi-color: if channels are merged, make accessible to color blind
  - If creating merged images, ensure the LUTs chosen are separable for color-blind readers; online simulations can help you check this.
````

````{dropdown} Recommended
- [ ] <img src="images_icons/blank.png" height="25px"> Provide intensity scales (calibration bar) for grayscale, color, pseudocolor
  - 
````

````{dropdown} Ideal
- [ ] <img src="images_icons/blank.png" height="25px"> Pseudo-colored images: additionally provide grayscale version for comparison
  - 
- [ ] <img src="images_icons/blank.png" height="25px">  Gamma adjustments: additionally provide linear-adjusted image for comparison
  - 
````

<!--Notes which will not be shown on the actual page-->