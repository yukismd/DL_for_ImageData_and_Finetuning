## 学習済みモデルから作成した特徴量で、AutoML（Driverless AI）で予測

### アプローチ
Notebook: [create_features_sentiment_and_zeroshot.ipynb](https://github.com/yukismd/DL_for_ImageData_and_Finetuning/blob/main/text_classification_hatespeech/TrainedModel_for_FeatureCreation/create_features_sentiment_and_zeroshot.ipynb)

#### 学習済みセンチメントモデル
- [lxyuan/distilbert-base-multilingual-cased-sentiments-student](https://huggingface.co/lxyuan/distilbert-base-multilingual-cased-sentiments-student)
- [jarvisx17/japanese-sentiment-analysis](https://huggingface.co/jarvisx17/japanese-sentiment-analysis)
  
上記２モデルのnegative scoreを利用  
データへは"negative1","negative2"カラムとして保存

#### Text Zero-Shot Classification modelの利用
- [MoritzLaurer/mDeBERTa-v3-base-xnli-multilingual-nli-2mil7](https://huggingface.co/MoritzLaurer/mDeBERTa-v3-base-xnli-multilingual-nli-2mil7)
  
"悪意","嫌悪","差別"をZero-shot判定  
データへは"malice","hate","discrimination"カラムとして保存

***
### Data Sets
上記３モデルによる出力（"negative1","negative2","malice","hate","discrimination"）と[tohoku-nlp/bert-base-japanese-whole-word-masking](https://huggingface.co/tohoku-nlp/bert-base-japanese-whole-word-masking)によるトークン化済みテキストカラム（"text_token_tohokuBertBase"）  を付与  
Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train_zeroshots_tkn.csv  
Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test_zeroshots_tkn.csv
  
***
### 結果
結果：[expResults.xlsx](expResults.xlsx)  
| No. | Experiment Name          | Features                                           | Description                                | F1 - Valid (Best閾値) | F1 - Test (Best閾値)  | Training Time |
|-----|--------------------------|----------------------------------------------------|--------------------------------------------|------------|------------|---------------|
| 1   | hatespeech_zeroshot      | negative1, negative2, discrimination, hate, malice | 事前学習モデル特徴量のみで学習             | 0.3449508  | 0.3606557  | 0:04:27       |
| 2   | hatespeech_zeroshot_tkn  | 1 + text_token_tohokuBertBase                      | 事前学習モデル特徴量 + 元テキストのTFIDF | 0.6210991  | 0.5797101  | 0:15:07       |


  
