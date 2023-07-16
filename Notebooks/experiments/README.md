# Experiments Overview

Experiment notebooks used to get a better performance or visualization in the final training template.
___
## Architecture experiments
* [architectures](architectures.ipynb)

Notebook to display statistics and description about model architectures.

* [templateCPU](templateCPU.ipynb)

Template notebook using CPU, which takes approximately 12 hours.

* [templateGPU](templateGPUTest.ipynb)

Template notebook using GPU, which takes approximately 1 hour.

* [templateGPUwithTechniques](templateGPUwithTechniques.ipynb)

Template notebook using GPU and techniques, experimenting the RAM usage and time to train.

* [templateTCU](templateTPU.ipynb)

Template notebook using TPU, experimenting the RAM usage and time to train which takes approximately less than 30 minutes, it only works with few images.

* [templateTCUSerialization](templateTPUSerialization.ipynb)

Attempt to use TPU with entire dataset. It requires a reasonable quantity of RAM. Also TCU have limitations about validation sets and other configurations which GPU provides.

* [Vision Transformers](VIT100epochs.ipynb)

TPU training with ViT architecture. Achieved **0.02929688** accuracy performance without fine-tuning and **0.7998047** accuracy with fine-tuning in 100 epochs. Worth to notice that classes are unbalanced as well as the others parameters weren't calculated.
___
## Visualization and techniques
* [downloadDataset](downloadDataset.ipynb)

Notebook to test the possibility of downloading the dataset instead of transfering from Google Drive.

* [metrics](metrics.ipynb)

Notebook to experiment the metrics and visualization of metrics as model output.

* [Segmentation](Segmentation.ipynb)

Notebook to explore segmentation possibilities.

* [string concatenation](string%20concatenation.ipynb)

Notebook to evaluate the time of string concatenation, achieving the lower time to import the images into memory.

___
## Model testing
Both experiments to test if the template works as expected.
* [convnextNoDuplicationCPU](convnextNoDuplicationCPU.ipynb)
* [convNextNoTreatmentDupCPU](convNextNoTreatmentDupCPU.ipynb)
