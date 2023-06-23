CREATE TABLE IF NOT EXISTS notebook (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  architecture TEXT CHECK(architecture IN ('ConvNeXt', 'ResNetV2', 'Xception')) NOT NULL,
  confusion_matrix BLOB NOT NULL,
  loss DECIMAL(20,15) NOT NULL,
  accuracy DECIMAL(20,15) NOT NULL,
  auc DECIMAL(20,15) NOT NULL,
  recall DECIMAL(20,15) NOT NULL,
  precision DECIMAL(20,15) NOT NULL,
  false_positives INTEGER NOT NULL,
  false_negatives INTEGER NOT NULL,
  true_negatives INTEGER NOT NULL,
  true_positives INTEGER NOT NULL,
  val_loss DECIMAL(20,15) NOT NULL,
  val_accuracy DECIMAL(20,15) NOT NULL,
  val_auc DECIMAL(20,15) NOT NULL,
  val_recall DECIMAL(20,15) NOT NULL,
  val_precision DECIMAL(20,15) NOT NULL,
  val_false_positives INTEGER NOT NULL,
  val_false_negatives INTEGER NOT NULL,
  val_true_negatives INTEGER NOT NULL,
  val_true_positives INTEGER NOT NULL,
  loss_epochs BLOB NOT NULL,
  accuracy_epochs BLOB NOT NULL,
  auc_epochs BLOB NOT NULL,
  recall_epochs BLOB NOT NULL,
  precision_epochs BLOB NOT NULL,
  configuration_id INTEGER NOT NULL,
  FOREIGN KEY (configuration_id) REFERENCES configuration (id)
);

CREATE TABLE IF NOT EXISTS configuration (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  transfer_learning INTEGER NOT NULL,
  freeze_layers INTEGER NOT NULL,
  balance_classes INTEGER NOT NULL,
  segmentation INTEGER NOT NULL,
  data_augmentation INTEGER NOT NULL,
  normalization TEXT CHECK(normalization IN ('minMaxScaler', 'StandardScaler')),
  custom_optimizer INTEGER NOT NULL,
  callback INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS metrics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT CHECK(type IN ('Basal_cell_carcinoma', 'Benign_keratosis', 'Bowens_disease', 'Dermatofibroma', 'Melanocytic_nevi', 'Melanoma', 'Vascular_lesion')) NOT NULL,
  confusion_matrix BLOB NOT NULL,
  precision DECIMAL(20,15) NOT NULL,
  f1_score DECIMAL(20,15) NOT NULL,
  roc_auc DECIMAL(20,15) NOT NULL,
  recall DECIMAL(20,15) NOT NULL,
  specificity DECIMAL(20,15) NOT NULL,
  notebook_id INTEGER NOT NULL,
  FOREIGN KEY (notebook_id) REFERENCES notebook (id)
);
