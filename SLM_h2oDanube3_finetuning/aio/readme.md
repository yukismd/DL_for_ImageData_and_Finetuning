# aio  
About: https://sbintuitions.github.io/flexeval/preset_configs/EvalSetup/ja_generation/#aio  
AI王。日本語のクイズデータセット

プロンプト（質問）例:
```
映画『ウエスト・サイド物語』に登場する2つの少年グループといえば、シャーク団と何団?答えは「
```
```
氷った海に穴を開けて漁をすることから、漢字で「氷の下の魚」と書くタラ科の魚は何?答えは「
```
質問数: 1,000

## 結果
正解数
- Original Model (h2oai/h2o-danube3-4b-chat): 0.026
- Fine Tuned Model (yukismd/h2oai-h2o-danube3-4b-chat-JP-v1): 0.02

Character base F1
- Original Model (h2oai/h2o-danube3-4b-chat): 0.1593000000000002
- Fine Tuned Model (yukismd/h2oai-h2o-danube3-4b-chat-JP-v1): 0.15274000000000026


Output詳細: [results_aio.csv](./results_aio.csv)
