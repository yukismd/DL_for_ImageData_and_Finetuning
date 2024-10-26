## センサーデータを用いた分類

Source: [Condition monitoring of hydraulic systems](https://archive.ics.uci.edu/dataset/447/condition+monitoring+of+hydraulic+systems)

***
## Data加工
[make_dataset.ipynb](./make_dataset.ipynb)
- Output
    - Labelデータ: profile_with_testflag.csv
        - N=2205 (Train_N=1905, Test_N=300のフラグ付き)
        - ターゲット変数の候補は複数あるが、本プロジェクトでは、"Stable_flag"とする
    - 特徴量データ: features.pickle
        - 各種センサーデータを縦持ち（id, time, sensor value）にしたデータ

この2つのデータを、Approach別に処理  

***
## ターゲット変数: Stable_flag
|            | Stable_flag=0 | Stable_flag=1 | Stable_flag=1の割合 | データ数合計 |
|------------|---------------|---------------|----------------------|------|
| Train Data | 1252          | 653           | 34.3%               | 1905 |
| Test Data  | 197           | 103           | 34.3%               | 300  |


***
## Approaches
- [feature_engineering](./feature_engineering) : 特徴量エンジニアリング（時系列をテーブル形式に変換）とAutoML
- [image_dl](./image_dl) : 画像（時系列プロット）分類（CNN）

***
## 考察
両アプローチとも同等の結果に。結果もほぼほぼ最大精度（Test AUC > .99）を達成できている状況。  
今回は画像を直接読み取るメリットなどは見られなかった。  
予測精度が出ずらいターゲット変数などを利用して、引き続き要検討。
