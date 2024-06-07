## PyTorch

### Datasets
Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train.csv  
Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test.csv

***
### 試したモデル - HTで実施できない日本語に特化したモデルを実験
- tohoku-nlp/bert-large-japanese-v2
- rinna/japanese-roberta-base
- studio-ousia/luke-japanese-large-lite
  
***
### 結果
結果: [Experiments_pt.xlsx](Experiments_pt.xlsx)

#### モデル： tohoku-nlp/bert-large-japanese-v2  
| Batch_Size | Token_Length | Backborn                              | LR      | Epoch | F1 Val (th=0.5) | F1_Test (th=0.5) |
|------------|--------------|---------------------------------------|---------|-------|-----------------|------------------|
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00001 | 3     | 0.607843137     | 0.666666667      |
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00003 | 3     | 0.652173913     | 0.657142857      |
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00005 | 3     | 0.619047619     | 0.689655172      |
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00001 | 3     | 0.708333333     | 0.676470588      |
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00003 | 3     | 0.629213483     | 0.705882353      |
| 32         | 128          | tohoku-nlp/bert-large-japanese-v2     | 0.00005 | 3     | 0.640776699     | 0.675675676      |
|            |              |                                       |         |       | 0.642898031     | 0.678582219      |
  
最終行は平均値  
上位3位の設定（上3行）を繰り返し実施(下３行)  

#### モデル: studio-ousia/luke-japanese-large-lite  
| Batch_Size | Token_Length | Backborn                              | LR      | Epoch | F1 Val (th=0.5) | F1_Test (th=0.5) |
|------------|--------------|---------------------------------------|---------|-------|-----------------|------------------|
| 16         | 128          | studio-ousia/luke-japanese-large-lite | 0.00001 | 3     | 0.787878788     | 0.712328767      |
| 16         | 128          | studio-ousia/luke-japanese-large-lite | 0.00003 | 3     | 0.653061224     | 0.647887324      |
| 32         | 128          | studio-ousia/luke-japanese-large-lite | 0.00001 | 3     | 0.7             | 0.6              |
| 32         | 128          | studio-ousia/luke-japanese-large-lite | 0.00003 | 3     | 0.710280374     | 0.710280374      |
| 16         | 128          | studio-ousia/luke-japanese-large-lite | 0.00001 | 3     | 0.747474747     | 0.656716418      |
| 16         | 128          | studio-ousia/luke-japanese-large-lite | 0.00003 | 3     | 0.723404255     | 0.656716418      |
| 32         | 128          | studio-ousia/luke-japanese-large-lite | 0.00001 | 3     | 0.712871287     | 0.638888889      |
| 32         | 128          | studio-ousia/luke-japanese-large-lite | 0.00003 | 3     | 0.711538462     | 0.712328767      |
|            |              |                                       |         |       | 0.718313642     | 0.66689337       |
  
最終行は平均値  
上位4位の設定（上4行）を繰り返し実施(下4行)  

  
