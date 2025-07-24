(intro_analysis_workflows)=
# Introduction

The primary aim of ensuring the reproducibility of bioimage analysis workflow used in life science publications is to allow peers to examine the exact details of the image processing and analysis used in the publication. Computer code,  e.g. ImageJ macro, Python script, Pipeline in CellProfiler, Workflow in KNIME, Rscript, is the perfect form of this description. “**Minimal**” is a set of essential elements for running this code, the “**Recommended**” requirements are a more optimized set of elements for the examination of the workflow, and “**Ideal**” is a highly appreciated set of elements to minimize the stress of examining the workflow. 

Note that the reusability of workflow, such as how well the workflow is implemented for the  “user experience”, is a different aspect we have not included in determining this checklist. The checklist focuses on how well the image analysis methods are reported for the examination of its scientific adequacy.

Here, “ workflow” is defined as described in [1]:

> To scientifically analyze and address an underlying biological problem, one needs to hand-pick some algorithms from these collections, carefully adjust their functional parameters to the problem and assemble them in a meaningful order. Such a sequence of image processing algorithms with a specified parameter set is what we call a **“workflow”**.

The following three categories of workflows are used in the checklist as requirements are different:

1. **Established workflows or workflow templates**: workflows available in the scientific literature or well-established in the respective fields (Figure 1A).
2. **Novel workflows**: established or new image analysis components (available in software platforms or libraries) are assembled by researchers into a novel workflow (Figure 1B).
3. **Machine learning (ML) workflows**: ML uses an extended technical terminology and ML workflows that utilize deep neural networks (‘deep learning’) face unique challenges with respect to reproducibility. Given the rapid advancements in this field, we created a separate ML checklist (Figure 1C). 

```{figure} ./figures_analysis_workflows/intro_analysis_workflows.png
---
alt: Overview of analysis workflows
align: center
name: workflows
---
Figure 1: (A) Established workflows or workflow templates (B) Novel workflows (C) Machine learning (ML) workflows. 
```

## References

[1] Miura, K., P. Paul-Gilloteaux, S. Tosi, and J. Colombelli. 2020. Workflows and Components of Bioimage Analysis. In Bioimage Data Analysis Workflows. Springer International Publishing, https://doi.org/10.1007/978-3-030-22386-1_1

   

   <!--Notes which will not be shown on the actual page-->