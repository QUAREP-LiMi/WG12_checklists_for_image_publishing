(glossary)=

# Glossary

```{Glossary}

Image
  Used here for image data from a microscope experiment, principles described may also apply to medical images, electron microscopy images.

Original image
  Output files/source image data of the microscope; depending on microscope type and the vendor these may be essentially “raw”, i.e., what is visible through the ocular, or pre-processed.

Workflow
  A series of image processing and analysis steps to generate a meaningful result for only a specific application, without reusability in mind. The individual steps typically use existing image analysis components. A workflow exists usually as a script or plugin within a software platform or as a stand-alone. See also workflow template

Image analysis component
  Computer vision methods and algorithms that are available as functions or classes in software platforms for image analysis

Software platform/library
  Software that bundles many algorithms, tools, and workflows (e.g., Fiji, CellProfiler).

Workflow template
  A workflow that is engineered such that it can be reused for more applications and different users. Typically is created with more flexibility and accessibility in mind. Thus, provides more options to modify for a different use case and exposes settings in an easy-to-use manner (e.g., GUI).

GUI
  Graphical user interface

Machine learning model
  A program that makes a decision (classifier) or returns an output (regression) based on some input, with the ability to process previously unseen data.

Channel adjustment
  Change to the brightness, contrast, or gamma correction.

Contrast
  The difference between the brightest and darkest pixels in an image.

Supervised machine learning
  Training a machine learning model with labeled data, for example the inputs for training have been previously classified by a human.

Unsupervised machine learning
  Training a machine learning model with unlabeled data, often to perform tasks such as clustering

Deep learning
  Machine learning using deep neural networks.

Ground truth
  Labeled data. While often described as ground truth, mistakes are often made, especially in large data sets, and should not be assumed to be the actual truth.

Software containers
  A versioned, reproducible, and reusable computing system (such as an operating system visualizer such as Docker (https://www.docker.com/) or Singularity (https://docs.sylabs.io/guides/3.5/user-guide/introduction.html) or an otherwise reusable virtual machine system) that allows arbitrary numbers of users to access one or more software tools in a controlled and defined environment.

Setting
  A setting is any parameter in the program that can be altered by the end user

```
<!--

These were the terms in the book - please pull out from this hidden section and put above as you have time to do so!

FIJI/ImageJ
CellProfiler
KNIME
Python Libraries
image reconstruction 
pre-processing
segmentation 
post-processing 
rendering
Github
metadata
QUAREP-LiMi
FAIR principles (Findability, Accessibility, Interoperability, Reusability)
channels
pixels
annotations
format
model - machine learning

 -->