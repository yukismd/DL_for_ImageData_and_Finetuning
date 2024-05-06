## TFIDF
DriverlessAI Text Vectorization（トークン化したテキストをロードし、AutoMLによりTFIDFに対して正則化回帰や、次元削減が行われる）アプローチ  
ドキュメント: https://docs.h2o.ai/driverless-ai/1-10-lts/docs/userguide/nlp.html

### Experiments


| Experiment Name                  | Tokenizer          | F1 - Validation | F1 - Test | Time   |
|----------------------------------|--------------------|-----------------|-----------|--------|
| hatespeech_vec_janome            | Janome             | 0.539           | 0.457     | 0:20:36|
| hatespeech_vec_janome            | Janome             | 0.586           | 0.557     | 0:23:39|
| hatespeech_vec_janome            | Janome             | 0.52            | 0.505     | 0:06:57|
| hatespeech_vec_janome            | Janome             | 0.55            | 0.491     | 0:09:31|
| hatespeech_vec_janome            | Janome             | 0.562           | 0.5       | 0:11:12|
| hatespeech_vec_tohokuBertBase    | tohoku-Bert-Base   | 0.576           | 0.551     | 0:21:57|
| hatespeech_vec_tohokuBertBase    | tohoku-Bert-Base   | 0.572           | 0.588     | 0:30:00|
| hatespeech_vec_tohokuBertBase    | tohoku-Bert-Base   | 0.577           | 0.528     | 0:16:29|
| hatespeech_vec_tohokuBertBase    | tohoku-Bert-Base   | 0.569           | 0.597     | 0:18:42|
| hatespeech_vec_tohokuBertBase    | tohoku-Bert-Base   | 0.589           | 0.567     | 0:12:09|

