# Trainings

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

Obs: Execution in Google Colaboratory with High-RAM (25.5 GB) and T4 as GPU.

** Execution in Google Colaboratory with High-RAM (83.5 GB) and A100 as GPU.

<!--
**:heavy_check_mark:**
**:x:**
-->