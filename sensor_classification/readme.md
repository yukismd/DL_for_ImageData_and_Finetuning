## センサーデータを用いた分類

Source: [Condition monitoring of hydraulic systems](https://archive.ics.uci.edu/dataset/447/condition+monitoring+of+hydraulic+systems)

***
## Data加工
[make_dataset.ipynb](./make_dataset.ipynb)
- Output
    - Labelデータ: profile_with_testflag.csv
        - N=2205 (Train_N=1905, Test_N=300のフラグ付き)
    - 特徴量データ: features.pickle
        - 各種センサーデータを縦持ち（id, time, sensor value）にしたデータ

この2つのデータを、Approach別に処理  

***
## Approaches
- [feature_engineering](./feature_engineering) : 特徴量エンジニアリング（時系列をテーブル形式に変換）とAutoML
- [image_dl](./image_dl) : 画像（時系列プロット）分類（CNN）

