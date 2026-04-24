selectImage("multichannel_image.tif");
run("Duplicate...", "duplicate");

selectImage("multichannel_image.tif");
run("Split Channels");

selectImage("C1-multichannel_image.tif");
run("Magenta");

selectImage("C3-multichannel_image.tif");
run("Cyan");

selectImage("C1-multichannel_image.tif");
setMinAndMax(308, 2484);

selectImage("C2-multichannel_image.tif");
setMinAndMax(84, 2965);

selectImage("C3-multichannel_image.tif");
setMinAndMax(36, 1270);

run("Merge Channels...", "c2=C2-multichannel_image.tif c5=C3-multichannel_image.tif c6=C1-multichannel_image.tif create keep");

