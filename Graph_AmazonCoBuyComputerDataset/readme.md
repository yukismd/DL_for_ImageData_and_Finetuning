# Graph Data - Node Classification Problem

## データ
**AmazonCoBuyComputerDataset**: https://docs.dgl.ai/en/0.8.x/generated/dgl.data.AmazonCoBuyComputerDataset.html  
コンピューター関連製品の同時購入データ。各製品はラベルとして10の商品カテゴリを持つ  
Multi Class Classification （1つのカラム、10カテゴリ）、Homogeneous Graph、Undirected Graph

- ノード（商品）数：13,752
    - ノード特徴量として、商品レビューのBag-of-Words（676次元）を持つ
- エッジ（同時購入関係）数：245,861（元データではデータ形式上、双方向矢印として格納されているので491,722となっている）

## アプローチ

### Tabular Data Classification Problem (同時購入関係を考慮しない、ノード特徴量のみを用いた分類問題) - Driverless AI
詳細：[DAI](./DAI)

### Graph Convolutional Network (GCN) - Hydrogen Torch
詳細：[HT](./HT)


## 結果
Driverless AIのデフォルト設定でモデル作成を実施したところ、Accuracy(Validation)=0.8706, Accuracy(Test)=0.87477  
Hydrogen Torchでハイパーパラメータチューニングをした結果、ベストモデルでAccuracy(Validation)=0.8671, Accuracy(Test)=0.8594  
テーブルデータとして作成したモデルの方が精度が高く、ノード間の関係性を考慮したGCNアプローチによる精度向上は見られなかった
