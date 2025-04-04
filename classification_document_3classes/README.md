# 文書スキャン画像の分類問題


Data Source: https://github.com/h2oai/ht-catalog/tree/646864e3c695f7c721514159bd6c59520dab7438/Assets/use-cases/document_classification  

- 3カテゴリ(email, resume, scientific_publication)分類
- 合計165枚の画像

| Type                   | All | Train | Test |
|------------------------|-----|-------|------|
| email                 | 55  | 45    | 10   |
| resume                | 55  | 45    | 10   |
| scientific_publication | 55  | 45    | 10   |

**email画像**
<img src="./display_images/email.png" alt="email">  
**resume画像**
<img src="./display_images/resume.png" alt="resume">  
**scientific_publication画像**
<img src="./display_images/scientific_publication.png" alt="sp">  

※ データDLは各アプローチリンク先  

***
## 実験アプローチ

画像データを用いて画像分類モデルを作成
- 詳細: [DAI](./DAI)
  
CLIPによるZero-Shot分類
- 詳細: [LG_zero-shot](./LG_zero-shot)

Small Vision Language Modelによる分類
- 詳細: [VLM](./VLM)

gpt-4o-miniによる分類
- 詳細: [OpenAI_VLM](./OpenAI_VLM)

AI-OCRで画像からテキストを抽出、テキストに対し分類モデルを作成
- OCR詳細: [OCR](./OCR)
- 予測詳細: [DAI](./DAI)

***
## 結果
| Approach                                           | Accuracy (Test Data) | Training Time (min), N(Train)=135 | Scoring Time (min), N(Test)=30 |
|------------------------------------------------|----------|-----------------------------------|--------------------------------|
| DAI Image Supervised Classification           | 0.90     | 37                                | 0                              |
| LG (CLIP) zero shot classification            | 0.50     | None                              | 3                              |
| VLM (h2oai/h2ovl-mississippi-800m) generation | 0.71     | None                              | 2 (+出力の整形の必要あり)          |
| VLM (gpt-4o-mini (2025/1/16)) generation | 0.933     | None                              | 1.3 (+出力の整形の必要あり)        |
| OCR (PaddleOCR) + DAI Text Supervised Classification (TFIDF) | 1.00     | 38                                | 7                     |

詳細: [result.xlsx](./result.xlsx)
