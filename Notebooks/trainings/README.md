# Convolutional Neural Network Trainings

Brief summary about the training configurations used:

Transfer Learning | Freeze Layers | Balance Classes | Segmentation | Data Augmentation | Normalization | Custom Optimizer | Callback | ConvNeXt | ResNetV2 | Xception
:---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---:
**:x:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convNextRaw.ipynb) | [Notebook](resnetv2/resNetRaw.ipynb) | [Notebook](xception/xceptionRaw.ipynb)
**:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextRawBalanced.ipynb) | [Notebook](resnetv2/resnetRawBalanced.ipynb) | [Notebook](xception/xceptionRawBalanced.ipynb)
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | StandardScaler | **:x:** | **:x:** | [Notebook](convnext/convnextBalancedNormTransf.ipynb) | [Notebook](resnetv2/resnetBalancedNormTransf.ipynb) | [Notebook](xception/xceptionBalancedNormTransf.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextTransf.ipynb) | [Notebook](resnetv2/resnetTransf.ipynb) | [Notebook](xception/xceptionTransf.ipynb)
**:x:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextSegmentation.ipynb) | [Notebook](resnetv2/resnetSegmentation.ipynb) | [Notebook](xception/xceptionSegmentation.ipynb)
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:heavy_check_mark:** | **:x:** | [Notebook](convnext/convnextAll.ipynb)** | [Notebook](resnetv2/resnetAll.ipynb)** | [Notebook](xception/xceptionAll.ipynb)**
**:x:** | **:x:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextDataaugmentation.ipynb)** | [Notebook](resnetv2/resnetDataaugmentation.ipynb)** | [Notebook](xception/xceptionDataaugmentation.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextDataAugmentationTransf.ipynb)** | [Notebook](resnetv2/resnetDataAugmentationTransf.ipynb)** | [Notebook](xception/xceptionDataAugmentationTransf.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextDataAugmentationTransfBalanced.ipynb)** | [Notebook](resnetv2/resnetDataAugmentationTransfBalanced.ipynb)** | [Notebook](xception/xceptionDataAugmentationTransfBalanced.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextDataAugmentationTransf.ipynb)** | [Notebook](resnetv2/resnetDataAugmentationTransf.ipynb)** | [Notebook](xception/xceptionDataAugmentationTransf.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:heavy_check_mark:** | MinMaxScaler | **:heavy_check_mark:** | **:x:** | [Notebook](convnext/ConvnextDataAugTransfBalMinMaxOpt.ipynb)** | [Notebook](resnetv2/ResnetDataAugTransfBalMinMaxOpt.ipynb)** | Not trained due to low RAM**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | **:heavy_check_mark:** | **:x:** | [Notebook](convnext/convnextDataAugTransfBalOpt.ipynb)** | [Notebook](resnetv2/resnetDataAugTransfBalOpt.ipynb)** | [Notebook](xception/xceptionDataAugTransfBalOpt.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | **:x:** | **:x:** | [Notebook](convnext/convnextTransfBal.ipynb)** | [Notebook](resnetv2/resnetTransfBal.ipynb)** | [Notebook](xception/xceptionTransfBal.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | [Notebook](convnext/convnextTransfBalOpt.ipynb)** | [Notebook](resnetv2/resnetTransfBalOpt.ipynb)** | [Notebook](xception/xceptionTransfBalOpt.ipynb)**
**:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:heavy_check_mark:** | **:x:** | **:x:** | **:heavy_check_mark:** | **:x:** | [Notebook](convnext/convnextTransfBalSegOpt.ipynb)** | [Notebook](resnetv2/resnetTransfBalSegOpt.ipynb)** | [Notebook](xception/xceptionTransfBalSegOpt.ipynb)**

Obs: Execution in Google Colaboratory with High-RAM (25.5 GB) and T4 as GPU.

** Execution in Google Colaboratory with High-RAM (83.5 GB) and A100 as GPU.
___
# [Vision Transformer](https://github.com/google-research/vision_transformer) Training

Model ViT_B/32 and TPU.
Batch size was equal for all runs: 8 for each TPU core (64). Worth to notice that classes are unbalanced as well as the others parameters weren't calculated.

Epochs | Image Resolution | Accuracy without fine-tuning | Accuracy with fine-tuning | Notebook
:---: | :---: | :---: | :---: | :---:
100 | 224 | 0.02929688 | **0.7998047** | [Notebook](visionTransformers/VIT100epochs.ipynb)
10 | 224 | **0.03125** | **0.7265625** | [Notebook](visionTransformers/VIT.ipynb)
10 | 256 | 0.02539062 | 0.7158203 | [Notebook](visionTransformers/VIT256.ipynb)


Obs: Execution in Google Colaboratory with Standard RAM (12.7 GB) and TPU.