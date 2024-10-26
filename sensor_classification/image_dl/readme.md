## 画像（時系列プロット）分類（CNN）
各種センサーデータを時系列プロットし保存。それら波型の画像の分類問題として処理（Image Data Classification by Convolutional Neural Network）

***
### Data加工
[make_images.ipynb](./make_images.ipynb)
- 各センサーの縦積みデータ（features.pickle）から、matplotlibによる時系列プロットを作成、保存（2205枚）
    - 時系列プロットは６センサーのみ（PS1, PS2, PS3, PS4, PS5, PS6）。６行の縦積みプロット

[make_data_for_HT.ipynb](./make_data_for_HT.ipynb)
- ラベルデータ（profile_with_testflag.csv）から、学習データ（SensorWave/train.csv）とテストデータ（SensorWave/test.csv）を作成
    - SensorWave/train.csv: (1905, 2)
    - SensorWave/test.csv: (300, 2)

2205枚の画像は、手動でSensorWaveディレクトリ内のimageディレクトリに移動

**Download**
- SensorWave.zip: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/SensorClassification_ConditionMonitoringHydraulicSystems/SensorWave.zip

***
### 画像サンプル
<img src="./img_sample/0.jpg" alt="Stable_flag=1" width="300" height="200">
<img src="./img_sample/2204.jpg" alt="Stable_flag=0" width="300" height="200">

***
### 結果
