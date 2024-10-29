# jcommonsenseqa
About: https://sbintuitions.github.io/flexeval/preset_configs/EvalSetup/ja_generation/#jcommonsenseqa  

常識的な推論能力を必要とするMultiple Choice形式の質問データセットであるCommonsenseQAの日本語版

*プロンプト（質問）例*
```
正しい答えは何でしょう？

0.「川蜘蛛」
1.「足長蜘蛛」
2.「アヘアヘ」
3.「子守蜘蛛」
4.「アメマ」
問題：アメンボの別名は？
回答：「川蜘蛛」

0.「ファスナー」
1.「ファンデ」
2.「後ろ指」
3.「後ろ足」
4.「後ろ身頃」
問題：衣服の背中を覆う部分のことは？
回答：「後ろ身頃」

0.「掲示板」
1.「パソコン」
2.「マザーボード」
3.「ハードディスク」
4.「まな板」
問題：電子機器で使用される最も主要な電子回路基板の事をなんと言う？
回答：「
```
質問数: 1,119

## 結果
正解数
- Original Model (h2oai/h2o-danube3-4b-chat): 0.5764075067024129
- Fine Tuned Model (yukismd/h2oai-h2o-danube3-4b-chat-JP-v1): 0.5138516532618409

Output詳細: [results_commonsenseqa.csv](./results_commonsenseqa.csv)
