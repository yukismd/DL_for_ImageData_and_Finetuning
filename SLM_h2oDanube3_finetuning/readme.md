# Small Language Model Fine Tuning

## 課題
英語では精度が高いと評価されているSMLがあるh2oai/h2o-danube3-4b-chat。ただし、日本語の解答精度は高くない。日本語データで指示チューニングを実施することで精度は向上できるか？

## Models
Original: [h2oai/h2o-danube3-4b-chat](https://huggingface.co/h2oai/h2o-danube3-4b-chat)  
Fine Tuned: [yukismd/h2oai-h2o-danube3-4b-chat-JP-v1](https://huggingface.co/yukismd/h2oai-h2o-danube3-4b-chat-JP-v1)

## 精度評価
評価ツール: **FlexEval** (github: https://github.com/sbintuitions/flexeval) (Document: https://sbintuitions.github.io/flexeval/)

### jcommonsenseqa  
About: https://sbintuitions.github.io/flexeval/preset_configs/EvalSetup/ja_generation/#jcommonsenseqa


### aio  
About: https://sbintuitions.github.io/flexeval/preset_configs/EvalSetup/ja_generation/#aio

### vicuna-ja  
About: https://sbintuitions.github.io/flexeval/preset_configs/EvalSetup/ja_chat/#vicuna-ja

#### LLM as a Judge - Pairwise Judge Evaluation  
vicuna-jaの生成結果をLLM as a Judgeでペア比較  

Steps: https://sbintuitions.github.io/flexeval/how_to/evaluate_with_llm_judges/#pairwise-judge-evaluation  
Settings for vicuna-ja: https://sbintuitions.github.io/flexeval/preset_configs/PairwiseJudge/#assistant_judge_ja_single_turn



## 結論

