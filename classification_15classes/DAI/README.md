## Driverless AI

Dataset: 
 - (Train) https://sample-data-open.s3.ap-northeast-1.amazonaws.com/cable_classification_15classes/cable_classify_15classes_DAI_Train.zip
- (Test) https://sample-data-open.s3.ap-northeast-1.amazonaws.com/cable_classification_15classes/cable_classify_15classes_DAI_Test.zip

***
### 結果
| Metric     | Auto Model | Vectorizer (特徴量抽出器) Validation Data Score | Vectorizer (特徴量抽出器) Test Data Score | Vectorizer (Fine Tuning) Validation Data Score | Vectorizer (Fine Tuning) Test Data Score |
|------------|-------------|--------------------------------------------------|-------------------------------------------|------------------------------------------------|-----------------------------------------|
| ACCURACY   | 0.9637097   | 0.7211707                                       | 0.7580645                                 | 0.9417213                                      | 0.9556452                               |
| AUC        | 0.9994077   | 0.9696441                                       | 0.9750492                                 | 0.9972223                                      | 0.9996284                               |
| AUCPR      | 0.993736    | 0.8005545                                       | 0.8248772                                 | 0.9801101                                      | 0.9954494                               |
| F05        | 0.9637097   | 0.7211707                                       | 0.7580645                                 | 0.9417213                                      | 0.9556452                               |
| F1         | 0.9637097   | 0.7211707                                       | 0.7580645                                 | 0.9417213                                      | 0.9556452                               |
| F2         | 0.9637097   | 0.7211707                                       | 0.7580645                                 | 0.9417213                                      | 0.9556452                               |
| FDR        | 0.02459016  | 0.2740434                                       | 0.2379032                                 | 0.04550694                                     | 0.004273504                             |
| FNR        | 0.04032258  | 0.2602273                                       | 0.2379032                                 | 0.05795018                                     | 0.06048387                              |
| FOR        | 0.00287687  | 0.0186005                                       | 0.016993                                  | 0.004132935                                    | 0.004302926                             |
| FPR        | 0.001728111 | 0.0204779                                       | 0.016993                                  | 0.003245118                                    | 0.000288018                             |
| GINI       | 0.9983208   | 0.8962308                                       | 0.8299833                                 | 0.9875413                                      | 0.9973238                               |
| LOGLOSS    | 0.1359895   | 1.094053                                        | 0.9030471                                 | 0.2136661                                      | 0.1083456                               |
| MACROAUC   | 0.9991604   | 0.9481154                                       | 0.9149916                                 | 0.9937706                                      | 0.9986619                               |
| MACROF1    | 0.8416411   | 0.5825501                                       | 0.6130697                                 | 0.8035155                                      | 0.8357185                               |
| MACROMCC   | 0.8385362   | 0.5639636                                       | 0.5952642                                 | 0.8003718                                      | 0.8318972                               |
| MCC        | 0.9611175   | 0.7012543                                       | 0.7407834                                 | 0.9375585                                      | 0.952477                                |
| NPV        | 0.9971231   | 0.9813995                                       | 0.9830069                                 | 0.9958671                                      | 0.9956971                               |
| PRECISION  | 0.9754098   | 0.7259566                                       | 0.7620968                                 | 0.9544931                                      | 0.9957265                               |
| RECALL     | 0.9596774   | 0.7397727                                       | 0.7620968                                 | 0.9420498                                      | 0.9395161                               |
| TNR        | 0.9982719   | 0.9795221                                       | 0.9830069                                 | 0.9967549                                      | 0.999712                                |

  


***
### Auto Image Model
<img src="./display_images/automodel.png" alt="img1">
<img src="./display_images/insight1.png" alt="img2">
<img src="./display_images/insight2.png" alt="img3">
<img src="./display_images/insight3.png" alt="img4">
<img src="./display_images/insight4.png" alt="img5">

| Metric      | Test Data Score  |
|-------------|------------|
| ACCURACY    | 0.9677419  |
| AUC         | 0.9989176  |
| AUCPR       | 0.9913134  |
| F05         | 0.9677419  |
| F1          | 0.9677419  |
| F2          | 0.9677419  |
| FDR         | 0.03225806 |
| FNR         | 0.03225806 |
| FOR         | 0.002304147|
| FPR         | 0.002304147|
| GINI        | 0.9975294  |
| LOGLOSS     | 0.1519496  |
| MACROAUC    | 0.9987647  |
| MACROF1     | 0.8505478  |
| MACROMCC    | 0.8475272  |
| MCC         | 0.9654378  |
| NPV         | 0.9976959  |
| PRECISION   | 0.9677419  |
| RECALL      | 0.9677419  |
| TNR         | 0.9976959  |

***
### Image Vectorizer (特徴量抽出器)
<img src="./display_images/vec.png" alt="img10">

| Metric     | Validation Data Score | Test Data Score |
|------------|-----------------------|-----------------|
| ACCURACY   | 0.7355763             | 0.75            |
| AUC        | 0.9683503             | 0.9745371       |
| AUCPR      | 0.8066667             | 0.8306423       |
| F05        | 0.7355763             | 0.75            |
| F1         | 0.7355763             | 0.75            |
| F2         | 0.7355763             | 0.75            |
| FDR        | 0.2453598             | 0.209607        |
| FNR        | 0.2565277             | 0.2701613       |
| FOR        | 0.01829293            | 0.01919221      |
| FPR        | 0.01766067            | 0.01382488      |
| GINI       | 0.8954826             | 0.8835695       |
| LOGLOSS    | 1.08319               | 0.9554897       |
| MACROAUC   | 0.9477413             | 0.9417848       |
| MACROF1    | 0.5959768             | 0.6820086       |
| MACROMCC   | 0.580238              | 0.6630219       |
| MCC        | 0.7166889             | 0.7321429       |
| NPV        | 0.9817071             | 0.9808078       |
| PRECISION  | 0.7546402             | 0.790393        |
| RECALL     | 0.7434723             | 0.7298387       |
| TNR        | 0.9823393             | 0.9861751       |

***
### Image Vectorizer (Fine Tuning)
<img src="./display_images/vec_finetune.png" alt="img10">
