## 学習済みモデルから作成した特徴量で、AutoML（Driverless AI）で予測

### アプローチ
Notebook: (create_features_sentiment_and_zeroshot.ipynb)[https://github.com/yukismd/DL_for_ImageData_and_Finetuning/blob/main/text_classification_hatespeech/TrainedModel_for_FeatureCreation/create_features_sentiment_and_zeroshot.ipynb]

#### 学習済みセンチメントモデル
- (lxyuan/distilbert-base-multilingual-cased-sentiments-student)[https://huggingface.co/lxyuan/distilbert-base-multilingual-cased-sentiments-student]
- (jarvisx17/japanese-sentiment-analysis)[https://huggingface.co/jarvisx17/japanese-sentiment-analysis]
上記２モデルのnegative scoreを利用
データへは"negative1","negative2"カラムとして保存

#### Text Zero-Shot Classification modelの利用
- (MoritzLaurer/mDeBERTa-v3-base-xnli-multilingual-nli-2mil7)[https://huggingface.co/MoritzLaurer/mDeBERTa-v3-base-xnli-multilingual-nli-2mil7]
"悪意","嫌悪","差別"をZero-shot判定  
データへは"malice","hate","discrimination"カラムとして保存

***
### Data Sets
上記３モデルによる出力（"negative1","negative2","malice","hate","discrimination"）と(tohoku-nlp/bert-base-japanese-whole-word-masking)[https://huggingface.co/tohoku-nlp/bert-base-japanese-whole-word-masking]によるトークン化済みテキストカラム（"text_token_tohokuBertBase"）
Train: 
Test: 

***
### 結果
結果：(expResults.xlsx)[expResults.xlsx]
