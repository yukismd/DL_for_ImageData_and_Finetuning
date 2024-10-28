# Small Language Model Fine Tuning

## 課題
英語では精度が高いと評価されているSMLがあるh2oai/h2o-danube3-4b-chat。ただし、日本語の解答精度は高くない。日本語データで指示チューニングを実施することで精度は向上できるか？

## Models
Original: [h2oai/h2o-danube3-4b-chat](https://huggingface.co/h2oai/h2o-danube3-4b-chat)  
Fine Tuned: [yukismd/h2oai-h2o-danube3-4b-chat-JP-v1](https://huggingface.co/yukismd/h2oai-h2o-danube3-4b-chat-JP-v1)

## 精度評価
評価ツール: **FlexEval** (github: https://github.com/sbintuitions/flexeval) (Document: https://sbintuitions.github.io/flexeval/)

### (1) jcommonsenseqa
常識的な推論能力を必要とするMultiple Choice形式の質問データセットであるCommonsenseQAの日本語版  
詳細: [jcommonsenseqa](./jcommonsenseqa)

### (2) aio
AI王。日本語のクイズデータセット  
詳細: [aio](./aio)

### (3) vicuna-ja
決まった正解がない、オープンクエスチョン形式の質問  
vicuna-jaの生成結果をLLM as a Judgeでペア比較  
詳細: [vicuna-ja](./vicuna-ja)


## 結論

