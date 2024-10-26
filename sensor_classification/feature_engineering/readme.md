## 特徴量エンジニアリング（時系列をテーブル形式に変換）とAUtoML
各種センサーデータから統計量（平均、分散、最小、最大など）を求め、テーブル型データを作成。それらをインプットとし、AutoMLを用いて分類器を作成

***
### Data加工
[tsfresh_minimal.ipynb](./tsfresh_minimal.ipynb)
- 各センサーの縦積みデータ（features.pickle）から、tsfreshを使い、統計量で集約データ（tsfresh_minimal_features.csv）を作成
    - tsfresh_minimal_features.csv
        - 2205 rows × 136 columns
        - 統計量:  sum_values, median, mean, length, standard_deviation, variance, maximum, minimum

[tsfresh_minimal.ipynb](./tsfresh_minimal.ipynb)
- 特徴量集約データ（tsfresh_minimal_features.csv）とラベルデータ（profile_with_testflag.csv）から、学習データ（SenCls_minimal_features_Train.csv）とテストデータ（SenCls_minimal_features_Test.csv）を作成
    - SenCls_minimal_features_Train.csv: (1905, 143)
    - SenCls_minimal_features_Test.csv: (300, 143)
