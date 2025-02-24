# レストランメニュー画像のメニュー情報の構造化

### データ
4つのサンプルメニュー画像: [./menu_images](./menu_images)

### アプローチ
h2oGPTe
- OCR+LLM
    - OCR結果をLLMのプロンプトへ含める（プロンプト例: [h2oGPTe/results/menu1/prompt_raw_LLM.txt](h2oGPTe/results/menu1/prompt_raw_LLM.txt)）
- VLM
- OCR+VLM+LLM
    - VLMからの応答と、OCR結果をLLMのプロンプトへ含める（プロンプト例: [h2oGPTe/results/menu1/prompt_raw_LLMandVM.txt](h2oGPTe/results/menu1/prompt_raw_LLMandVM.txt)）

OpenAI API
- VLM

### 結果
[./replys.xlsx](./replys.xlsx)

