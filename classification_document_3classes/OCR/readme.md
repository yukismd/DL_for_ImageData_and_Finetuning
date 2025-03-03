## Scan Document OCR

**Puddle-OCR**  
Document: https://paddlepaddle.github.io/PaddleOCR/latest/en/index.html

***

### コード
学習データ([PaddleOCR_TrainDataset.ipynb](./PaddleOCR_TrainDataset.ipynb))、テストデータ([PaddleOCR_TestDataset.ipynb](./PaddleOCR_TestDataset.ipynb))  
- スキャン画像へPaddle-OCRを適用し、文字を抽出。処理生データをpklで保存([./outputs](./outputs))

### 最終アウトプット
学習データ: [DAI_document_classification_TRAIN_ocr.csv](./DAI_document_classification_TRAIN_ocr.csv)
テストデータ: [DAI_document_classification_TEST_ocr.csv](.DAI_document_classification_TEST_ocr.csv)
- 処理生データを元データと合わせてcsvで保存（処理コード: [make_csv.ipynb](./make_csv.ipynb)）。このcsvデータをDriverless AIの学習とテストデータとする
