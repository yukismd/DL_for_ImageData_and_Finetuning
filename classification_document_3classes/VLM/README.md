# Small Vision Language Modelによる分類
テストデータ（N=30）に対し、SVMで回答を生成  

**モデル**
[h2oai/h2ovl-mississippi-800m](https://huggingface.co/h2oai/h2ovl-mississippi-800m)

**プロンプト**
```
<image>\nExtract the type of the image, categorizing it as 'email', 'resume' or 'scientific_publication'. Type:
```

データ
- テスト: https://jp-public.s3.ap-southeast-1.amazonaws.com/data/scan_document_classification_3classes/DAI_document_classification_TEST.zip

***
結果
- 予測値: [prediction/](./prediction/)
- 結果集計: [check_generated_result.ipynb](./check_generated_result.ipynb)


