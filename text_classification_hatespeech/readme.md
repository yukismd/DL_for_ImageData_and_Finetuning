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
1. AutoML（DAI）によるTFIDFアプローチ : [TFIDF_DAI](./TFIDF_DAI)
2. 学習済みモデル（感情分析、Zero-shot Text Classification）から特徴量を作成し、AutoML（DAI）で予測するアプローチ : [TrainedModel_for_FeatureCreation](./TrainedModel_for_FeatureCreation)
3. DAI BERT実装 : [DAI_Bert](./DAI_Bert)
4. HT BERTモデル Finetuning : [HT](./HT)
5. Pytorch BERTモデル Finetuning : [PT](./PT)
6. 生成AIによるヘイトスピーチ判定 : [LLM](./LLM)
7. 生成AI Finetuning : [LlmStudio](./LlmStudio)

***
### Results サマリー

| No | Approach | TestデータにおけるF1値 |
|----|----------|----------------------|
| 1  | AutoML（DAI）によるTFIDFアプローチ | 5回の試行。平均値が0.5662。最大値が0.597 |
| 2  | 学習済みモデル（感情分析、Zero-shot Text Classification）から特徴量を作成し、AutoML（DAI）で予測するアプローチ | Zero-shot特徴量のみで0.3606557。それに1のアプローチを加えて0.5797101 |
| 3  | DAI BERT実装 | bert-base-uncasedで0.475 |
| 4  | HT BERTモデル Finetuning | microsoft-deberta-v3-largeで5回試行。平均値が0.71242。最大値が0.7761 |
| 5  | Pytorch BERTモデル Finetuning | tohoku-nlp/bert-large-japanese-v2, studio-ousia/luke-japanese-large-liteで複数回実施。閾値=0.5で0.6後半。Best閾値を採用すると、0.7超えくらいだと考えられる |
| 6  | 生成AIによるヘイトスピーチ判定 | GPT4で0.471 |
| 7  | 生成AI Finetuning | rinna/japanese-gpt-neox-3.6b-instruction-ppoのEpoch=2の平均値が0.74358。最大値が0.76923 |


詳細は各フォルダ内参照


