## PyTorch

Dataset: 
 - https://sample-data-open.s3.ap-northeast-1.amazonaws.com/market-metriclearning/market_metriclearning_small_HT.zip

***
### 

### Metric Learning Baseline
[test_run.ipynb](./test_run.ipynb)
- 事前学習モデルの最終層の出力(Global Pooling)を類似度検索のベクトルに利用

### Metric Learning with ArcFace loss function (CPU)
[test_run_arcface.ipynb](./run.ipynb)
- ArcFaice Loss関数を用いた距離学習の実施
