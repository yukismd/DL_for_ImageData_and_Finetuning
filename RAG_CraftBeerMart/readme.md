# RAGの実験
## Craft Beer Market 品質管理マニュアル

### データ
PJ内: [./cbm_quality_management_manual_v01.pdf](./cbm_quality_management_manual_v01.pdf)  
オリジナル: https://www.craftbeermarket.jp/wp2/wp-content/themes/cbm/images/pdf/cbm_quality_management_manual_v01.pdf

### 実験内容
データ（PDF）をいくつかの条件、h2oGPTeの設定で実行、精度を比較
- PDFをh2oGPTeへそのまま投入。デフォルト設定でRAGを実施
- PDFを構造化し、章別に分けたドキュメントとしてh2oGPTeへ投入。デフォルト設定でRAGを実施
- PDFを構造化し、章別に分けたドキュメントとしてh2oGPTeへ投入。チャンク設定を変更しRAGを実施
- 答えがわかっているドキュメントの章のみプロンプトに含め、質問（RAGではない）

※[h2oGPTe](https://docs.h2o.ai/enterprise-h2ogpte/)


### 結果と考察
[./QandA_Result.xlsx](./QandA_Result.xlsx)
