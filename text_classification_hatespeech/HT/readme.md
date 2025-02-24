## Hydrogen Torchによる実験

### Datasets
Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train.csv  
Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test.csv

***
### 試したモデル
- bert-large-cased
- xlm-roberta-large
- microsoft/deberta-v3-large
- distilbert-base-uncased
- distilgpt2
- gpt2
- roberta-large
- google-bert/bert-base-multilingual-cased
- lxyuan/distilbert-base-multilingual-cased-sentiments-student
- papluca/xlm-roberta-base-language-detection

モデルに関して:[DL_for_ImageData_and_Finetuning/models](https://github.com/yukismd/DL_for_ImageData_and_Finetuning/tree/main/models)
  
***
### 結果
結果: [Experiments.xlsx](Experiments.xlsx)
  
精度が良かったmicrosoft/deberta-v3-largeの最終結果のみ表示。最終的なハイパーパラメータ設定で、5回の施行
| Batch_Size | Token_Length | Backborn                      | LR       | Epoch | Grad Accumulation | F1 Val (th=0.5) | F1 Val - Best thresh | Best F1 Val | F1_Test (th=0.5) | F1 Test - Best thresh | Best F1 Test | Runtime  |
|------------|--------------|-------------------------------|----------|-------|-------------------|-----------------|----------------------|-------------|------------------|----------------------|--------------|----------|
| 16         | 128          | microsoft-deberta-v3-large    | 0.000003 | 5     | 1                 | 0.7033          | 0.65                 | 0.7045      | 0.7              | 0.2                  | 0.7761       | 0:11:40  |
| 16         | 128          | microsoft-deberta-v3-large    | 0.000003 | 5     | 1                 | 0.6517          | 0.35                 | 0.6667      | 0.623            | 0.2                  | 0.7042       | 0:11:39  |
| 16         | 128          | microsoft-deberta-v3-large    | 0.000003 | 5     | 1                 | 0.6154          | 0.1                  | 0.6731      | 0.623            | 0.55                 | 0.6441       | 0:11:40  |
| 16         | 128          | microsoft-deberta-v3-large    | 0.000003 | 5     | 1                 | 0.6337          | 0.85                 | 0.6977      | 0.6769           | 0.65                 | 0.7213       | 0:11:37  |
| 16         | 128          | microsoft-deberta-v3-large    | 0.000003 | 5     | 1                 | 0.6667          | 0.45                 | 0.6792      | 0.6984           | 0.3                  | 0.7164       | 0:11:39  |
|            |              |                               |          |       |                   | 0.65416         |                      | 0.68424     | 0.66426          |                      | 0.71242      |          |

  
最終行は平均値
- F1 Test (閾値=0.5): 0.66426
- F1 Test (Best閾値): 0.71242

#### 予測結果付与 Dataset
Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train_HT_res.csv  
Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test_HT_res.csv

  
