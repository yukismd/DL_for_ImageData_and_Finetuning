## 生成AIによるヘイトスピーチ判定
生成AIにヘイトスピーチかどうかをYes/Noで判定させる


### 結果
結果： [LLM_results.xlsx](LLM_results.xlsx)
  
| Metric     | NousResearch/Nous-Capybara-34B | mistralai/Mixtral-8x7B-Instruct-v0.1 | gpt-4-turbo-2024-04-09 |
|------------|--------------------------------|--------------------------------------|------------------------|
| F1         | 0.365                          | 0.281                                | 0.471                  |
| Accuracy   | 0.832                          | 0.71                                 | 0.877                  |
  
Notebook:
- NousResearch/Nous-Capybara-34Bによる実施：[Nous-Capybara-34B.ipynb](Nous-Capybara-34B.ipynb)
- mistralai/Mixtral-8x7B-Instruct-v0.1による実施：[Mistral-8x7B.ipynb](Mistral-8x7B.ipynb)
- gpt-4-turbo-2024-04-09による実施：[gpt-4-turbo-2024-04-09.ipynb](gpt-4-turbo-2024-04-09.ipynb)
  
