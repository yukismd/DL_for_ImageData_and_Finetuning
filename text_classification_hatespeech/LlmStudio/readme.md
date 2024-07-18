## LLM Studio
大規模言語モデルのテキスト分類へのファインチューニング実験

***
### 参考
- H2O LLM Studio ドキュメント - [Problem type](https://docs.h2o.ai/h2o-llmstudio/guide/experiments/experiment-settings#problem-type)のCausal Classification Modelingを実施
- LLMを用いたテキスト分類に関する参考サイト - [LLMとLoRAを用いたテキスト分類](https://github.com/hppRC/llm-lora-classification)

***
### 試したベースモデル
- [rinna/japanese-gpt-neox-3.6b-instruction-ppo](https://huggingface.co/rinna/japanese-gpt-neox-3.6b-instruction-ppo)
- [cyberagent/calm2-7b-chat](https://huggingface.co/cyberagent/calm2-7b-chat)
  
***
### 結果
結果: [Experiments_llmstudio.xlsx](Experiments_llmstudio.xlsx)

精度の高かったrinna/japanese-gpt-neox-3.6b-instruction-ppoの試行のみ表示
| Batch_Size | Token_Length | Backborn                                     | LR    | Epoch | AUC_Test | F1_Test     | Runtime |
|------------|--------------|----------------------------------------------|-------|-------|----------|-------------|---------|
| 16         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0001| 1     | 0.9848   | 0.710526316 | 0:06:03 |
| 16         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0005| 1     | 0.9913   | 0.738461538 | 0:06:02 |
| 32         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0001| 1     | 0.9765   | 0.675675676 | 0:05:30 |
| 32         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0005| 1     | 0.9855   | 0.75        | 0:05:30 |
| 16         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0001| 2     | 0.985    | 0.769230769 | 0:12:24 |
| 16         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0005| 2     | 0.9869   | 0.721311475 | 0:12:28 |
| 32         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0001| 2     | 0.9893   | 0.753623188 | 0:11:21 |
| 32         | 128          | rinna/japanese-gpt-neox-3.6b-instruction-ppo | 0.0005| 2     | 0.9898   | 0.73015873  | 0:11:22 |

  
***
### Published Model
Experiment Name: HS-Rinna_Epoch2 (pushed to Hugging Face)  
[yukismd/HateSpeechClassification-japanese-gpt-neox-3-6b-instruction-ppo](https://huggingface.co/yukismd/HateSpeechClassification-japanese-gpt-neox-3-6b-instruction-ppo)
