## ヘイトスピーチ検出
ソース: https://competition.nishika.com/competitions/hate/data

***
### Datasets
- Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train.csv
- Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test.csv

***
### Experiments
- AutoMLによるTFIDFアプローチ ([TFIDF_DAI](./TFIDF_DAI))
- DAI BERT実装
- 学習済みモデルを利用した特徴量作成
- 生成AIによる判定 ([LLM](./LLM))
