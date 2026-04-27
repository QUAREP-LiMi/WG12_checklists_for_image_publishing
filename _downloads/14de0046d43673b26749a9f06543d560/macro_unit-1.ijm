selectImage("multichannel_image.tif");

// duplicate image
run("Duplicate...", "duplicate");
selectImage("multichannel_image-1.tif");
run("Split Channels");

// adjust lookup table
selectImage("C1-multichannel_image-1.tif");
run("Magenta");

selectImage("C3-multichannel_image-1.tif");
run("Cyan");

// adjust brightness contrast
selectImage("C1-multichannel_image-1.tif");
setMinAndMax(308, 2484);

selectImage("C2-multichannel_image-1.tif");
setMinAndMax(84, 2965);

selectImage("C3-multichannel_image-1.tif");
setMinAndMax(36, 1270);

// Create composite
run("Merge Channels...", "c2=C2-multichannel_image-1.tif c5=C3-multichannel_image-1.tif c6=C1-multichannel_image-1.tif create");
