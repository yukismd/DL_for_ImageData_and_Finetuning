## ヘイトスピーチ検出
ソース: https://competition.nishika.com/competitions/hate/data

***
### Datasets
- Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train.csv
- Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test.csv

***
### Target（1:ヘイトスピーチ、0:ヘイトスピーチでない）の分布
|       | 全体 | Train Data | Test Data |
|-------|------|------------|-----------|
| 0 | 4950 | 4385       | 565       |
| 1  | 306  | 271        | 35        |
| 合計  | 5256 | 4656       | 600       |
| % of 1 | 5.8% | 5.8%       | 5.8%      |
  
***
### EDA
[EDA.ipynb](EDA.ipynb)
  
***
### Experiments
- AutoML（DAI）によるTFIDFアプローチ ([TFIDF_DAI](./TFIDF_DAI))
- 学習済みモデル（感情分析、Zero-shot Text Classification）から特徴量を作成し、AutoML（DAI）で予測するアプローチ ([TrainedModel_for_FeatureCreation](./TrainedModel_for_FeatureCreation))
- 生成AIによるヘイトスピーチ判定 ([LLM](./LLM))
- DAI BERT実装 ([DAI_Bert](./DAI_Bert))
- HT BERTモデル Fine Tuning([HT](./HT))
- PyTorch BERT Finetuning([PT](./PT))

