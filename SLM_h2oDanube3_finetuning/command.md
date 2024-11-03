## flexeval command

### 評価の設定の確認
```
$ flexeval_presets
```

### jcommonsenseqa
```
$ flexeval_lm \
   --language_model HuggingFaceLM \
   --language_model.model "yukismd/h2oai-h2o-danube3-4b-chat-JP-v1" \
   --eval_setup "jcommonsenseqa" \
   --save_dir "drive/MyDrive/savedir"
```


### aio
```
$ flexeval_lm \
   --language_model HuggingFaceLM \
   --language_model.model "yukismd/h2oai-h2o-danube3-4b-chat-JP-v1" \
   --eval_setup "aio" \
   --save_dir "drive/MyDrive/savedir"
```

### vicuna-ja
回答の作成
```
$ flexeval_lm \
   --language_model HuggingFaceLM \
   --language_model.model "yukismd/h2oai-h2o-danube3-4b-chat-JP-v1" \
   --eval_setup "vicuna-ja" \
   --save_dir "drive/MyDrive/savedir"
```

ペア比較（OpenAI API keyを環境変数への登録が必要）
```
OPENAI_API_KEY=sk-*****

$ flexeval_pairwise \
   --lm_output_paths.h2o_danube3 "drive/MyDrive/modeldir/model1/outputs.jsonl" \
   --lm_output_paths.h2o_danube3_ja "drive/MyDrive/modeldir/model2/outputs.jsonl" \
   --judge "assistant_judge_ja_single_turn" \
   --save_dir "drive/MyDrive/savedir"
```

