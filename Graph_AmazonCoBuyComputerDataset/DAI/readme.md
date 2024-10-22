## Tablar Table Classification Problem (同時購入関係を考慮しない、ノード特徴量のみを用いた分類問題) - Driverless AI

Auto ML (Driverless AI)による、テーブルデータに対する分類問題  
Driverless AI : https://docs.h2o.ai/driverless-ai/1-10-lts/docs/userguide/index.html

### データ
- train : https://jp-public.s3.ap-southeast-1.amazonaws.com/data/AmazonCoBuyComputerDataset/DAI_AmazonCoBuyComputerDataset/AmazonCoBuyComputerDataset_train.csv
- test : https://jp-public.s3.ap-southeast-1.amazonaws.com/data/AmazonCoBuyComputerDataset/DAI_AmazonCoBuyComputerDataset/AmazonCoBuyComputerDataset_test.csv

### 結果
| Experiment Name      | Comment                                              | Setting - Accuracy | Setting - Time | Setting - Interpretability | Val - Accuracy | Test - Accuracy | Run Time |
|----------------------|------------------------------------------------------|--------------------|----------------|----------------------------|----------------|-----------------|----------|
| Graph-Amazon-default | デフォルト設定                                       | 5                  | 5              | 3                          | 0.8706         | 0.87477         | 0:16:20  |
| Graph-Amazon-GLM     | モデルはGLMのみ。特徴量エンジニアリングはOriginalのみ | 5                  | 5              | 3                          | 0.8236         | 0.85645         | 0:11:28  |


結果詳細：[DAI_result.xlsx](./DAI_result.xlsx)
