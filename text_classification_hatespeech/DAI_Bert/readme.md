## Auto NLP Model by Driverless AI
  
Document: https://docs.h2o.ai/driverless-ai/1-10-lts/docs/userguide/nlp.html  
See "PyTorch Transformer Archtecture Models (eg. BERT) as Modeling Algorithms" part
  
***
### 結果
結果: [expResults.xlsx](expResults.xlsx) 
  
| No. | Experiment Name                                    | Pipeline Visualization     | Model                           | Tokenizer                                                       | F1 - Test  |
|-----|----------------------------------------------------|----------------------------|---------------------------------|-----------------------------------------------------------------|------------|
| 1   | nlpauto-textCol-BertBaseMultilingualCased          | TextMultilingualBERTModel  | bert-base-multilingual-cased    | None                                                            | 0.3170732  |
| 2   | nlpauto-textCol                                    | TextBERTModel              | bert-base-uncased               | None                                                            | 0.2406015  |
| 3   | nlpauto-textCol-XlmMlmEnfr1024                     | TextXLM                    | xlm-mlm-enfr-1024               | None                                                            | 0.1340782  |
| 4   | nlpauto-textCol-XlmRobertaBase                     | TextXLMRobertaModel        | xlm-roberta-base                | None                                                            | 0.3061224  |
| 5   | nlpauto-tbertbaseCol-BertBaseMultilingualCased     | TextMultilingualBERTModel  | bert-base-multilingual-cased    | tohoku-nlp/bert-base-japanese-whole-word-masking                | 0.2442748  |
| 6   | nlpauto-tbertbaseCol                               | TextBERTModel              | bert-base-uncased               | tohoku-nlp/bert-base-japanese-whole-word-masking                | 0.3283582  |
| 7   | nlpauto-tbertbaseCol-XlmRobertaBase                | TextXLMRobertaModel        | xlm-roberta-base                | tohoku-nlp/bert-base-japanese-whole-word-masking                | 0.2105263  |
| 8   | nlpauto-janomeCol-BertBaseMultilingualCased        | TextMultilingualBERTModel  | bert-base-multilingual-cased    | Janome                                                          | 0.2941176  |
| 9   | nlpauto-janomeCol                                  | TextBERTModel              | bert-base-uncased               | Janome                                                          | 0.475      |
| 10  | nlpauto-janomeCol-XlmRobertaBase                   | TextXLMRobertaModel        | xlm-roberta-base                | Janome                                                          | 0.1167109  |

- Experiment Name: Driverless AI Experiment name
- Pipeline Visualization: Driverless AI Experiment result display name
- Model: Model pulled from Huggingface
- Tokenizer: トークン化の実施 - 仕様が不明だったため、トークン化したテキストでも検証。仕様は現時点で不明
    - None: トークン化なし
    - [tohoku-nlp/bert-base-japanese-whole-word-masking](https://huggingface.co/tohoku-nlp/bert-base-japanese-whole-word-masking)
    - [Janome](https://mocobeta.github.io/janome/)

***
### Data Sets 
- Train: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_train_DAI.csv
- Test: https://sample-data-open.s3.ap-northeast-1.amazonaws.com/text_classification_hatespeech/hatespeech_test_DAI.csv

  
