## 時系列予測

### データ

学習: [data/walmart_ts_6_fcst_grp_train.csv](./data/walmart_ts_6_fcst_grp_train.csv)  
テスト: [data/walmart_ts_6_fcst_grp_test.csv](./data/walmart_ts_6_fcst_grp_test.csv)  

<img src="./プロット.png" alt="ts_plot">
※ 黄色の影付き部分がテスト期間  


### アプローチ

1) Driverless AIで説明変数を含めデフォルト設定で実施
  - 結果: [DAI_results/default/](DAI_results/default/)
2) Driverless AIで説明変数なしでデフォルト設定で実施
  - 結果: [DAI_results/no_covariate/](DAI_results/no_covariate/)


Driverless AI  
Chronos Bolt  

説明変数リスト: ['MarkDown1', 'MarkDown2', 'MarkDown3', 'MarkDown4', 'MarkDown5', 'IsHoliday']


### 結果
[results.xlsx](./results.xlsx)
