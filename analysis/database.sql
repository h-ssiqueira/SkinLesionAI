CREATE TABLE `notebook` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `name` vvarchar2varchar2archar2varchar2(50) NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `loss` decimal(20ion_mat,15) NOT NULL,
  `accuracy` decimal(20,15) NOT NULL,
  `auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `false_positives` int NOT NULL,
  `false_negatives` int NOT NULL,
  `true_negatives` int NOT NULL,
  `true_positives` int NOT NULL,
  `val_loss` decimal(20,15) NOT NULL,
  `val_accuracy` decimal(20,15) NOT NULL,
  `val_auc` decimal(20,15) NOT NULL,
  `val_recall` decimal(20,15) NOT NULL,
  `val_precision` decimal(20,15) NOT NULL,
  `val_false_positives` int NOT NULL,
  `val_false_negatives` int NOT NULL,
  `val_true_negatives` int NOT NULL,
  `val_true_positives` int NOT NULL,
  `configuration_id` int NOT NULL
);

CREATE TABLE `configuration` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `architecture` ENUM ('ConvNeXt', 'ResNetV2', 'Xception') NOT NULL,
  `transfer_learning` boolean NOT NULL,
  `freeze_layers` boolean NOT NULL,
  `balance_classes` boolean NOT NULL,
  `segmentation` boolean NOT NULL,
  `data_augmentation` boolean NOT NULL,
  `normalization` ENUM ('minMaxScaler', 'StandardScaler') NOT NULL,
  `custom_optimizer` boolean NOT NULL,
  `callback` boolean NOT NULL
);

CREATE TABLE `bowens_disease` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `basal_cell_carcinoma` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `benign_keratosis` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `dermatofibroma` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `vascular_lesion` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `melanoma` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

CREATE TABLE `melanocytic_nevi` (
  `id` int UNIQUE PRIMARY KEY NOT NULL,
  `confusion_matrix` blob NOT NULL,
  `precision` decimal(20,15) NOT NULL,
  `f1_score` decimal(20,15) NOT NULL,
  `roc_auc` decimal(20,15) NOT NULL,
  `recall` decimal(20,15) NOT NULL,
  `specificity` decimal(20,15) NOT NULL
);

ALTER TABLE `bowens_disease` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `basal_cell_carcinoma` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `benign_keratosis` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `dermatofibroma` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `vascular_lesion` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `melanoma` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `melanocytic_nevi` ADD FOREIGN KEY (`id`) REFERENCES `notebook` (`id`);

ALTER TABLE `notebook` ADD FOREIGN KEY (`configuration_id`) REFERENCES `configuration` (`id`);
