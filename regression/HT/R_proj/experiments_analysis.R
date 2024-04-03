
library(openxlsx)


# データパスの取得
current_dir <- getwd()
current_dir # プロジェクトのディレクトリを指していることを確認

excel_path <- paste0(current_dir,"/../Experiments.xlsx")


##################################
d3 <- read.xlsx(excel_path, sheet="Img_Reg_3_data", detectDates=TRUE)

str(d3)
summary(d3)

# 型変換
#wine_dat["quality"] <- as.factor(wine_dat$quality)
d3["Learning_Rate"] <- as.factor(d3$Learning_Rate)
d3["Epochs"] <- as.factor(d3$Epochs)

str(d3)


## 要因別集計 - 要因別に水準間のMAE平均値を求める
for(col in c("Backbone", "Learning_Rate", "Epochs")){
  print(col)
  print(
    aggregate(d3["MAE"], by=list(d3[,col]), FUN="mean")
  )
}

for(col in c("Backbone", "Learning_Rate", "Epochs")){
  print(col)
  print(
    aggregate(d3["Runtime_min"], by=list(d3[,col]), FUN="mean")
  )
}


## モデルの当てはめ

#>> 交互作用なし
d3_result <- lm(MAE~Backbone+Learning_Rate+Epochs, data=d3)
d3_result

# 分散分析
anova(d3_result)
# 要因の係数, モデルの当てはまりの確認
summary(d3_result)

#>> 交互作用あり
d3_result_x <- lm(MAE ~ Backbone + Learning_Rate + Epochs + Backbone*Learning_Rate + Backbone*Epochs + Learning_Rate*Epochs, data=d3)
d3_result_x
anova(d3_result_x)
summary(d3_result_x)


## 交互作用プロット
interaction.plot(d3$Backbone, d3$Learning_Rate, d3$MAE)
interaction.plot(d3$Backbone, d3$Epochs, d3$MAE)
interaction.plot(d3$Learning_Rate, d3$Epochs, d3$MAE)

# interaction.plot(d3$Learning_Rate, d3$Backbone, d3$MAE)

interaction.plot(d3$Backbone, d3$Learning_Rate, d3$Runtime_min)
interaction.plot(d3$Backbone, d3$Epochs, d3$Runtime_min)
interaction.plot(d3$Learning_Rate, d3$Epochs, d3$Runtime_min)



##################################
d4 <- read.xlsx(excel_path, sheet="Img_Reg_4_data", detectDates=TRUE)

str(d4)
summary(d4)

# 型変換
d4["Learning_Rate"] <- as.factor(d4$Learning_Rate)

str(d4)


## 要因別集計 - 要因別に水準間のMAE平均値を求める
for(col in c("Backbone", "Learning_Rate", "Augmentation", "Mix_Image")){
  print(col)
  print(
    aggregate(d4["MAE"], by=list(d4[,col]), FUN="mean")
  )
}

for(col in c("Backbone", "Learning_Rate", "Augmentation", "Mix_Image")){
  print(col)
  print(
    aggregate(d4["Runtime_min"], by=list(d4[,col]), FUN="mean")
  )
}

#>> 交互作用なし
d4_result <- lm(MAE~Backbone+Learning_Rate+Augmentation+Mix_Image, data=d4)
d4_result
# 分散分析
anova(d4_result)
# 要因の係数, モデルの当てはまりの確認
summary(d4_result)


## 交互作用プロット
interaction.plot(d4$Backbone, d4$Learning_Rate, d4$MAE)
interaction.plot(d4$Backbone, d4$Augmentation, d4$MAE)
interaction.plot(d4$Backbone, d4$Mix_Image, d4$MAE)
interaction.plot(d4$Learning_Rate, d4$Augmentation, d4$MAE)
interaction.plot(d4$Learning_Rate, d4$Mix_Image, d4$MAE)
interaction.plot(d4$Augmentation, d4$Mix_Image, d4$MAE)

interaction.plot(d4$Backbone, d4$Learning_Rate, d4$Runtime_min)
interaction.plot(d4$Backbone, d4$Augmentation, d4$Runtime_min)
interaction.plot(d4$Backbone, d4$Mix_Image, d4$Runtime_min)
interaction.plot(d4$Learning_Rate, d4$Augmentation, d4$Runtime_min)
interaction.plot(d4$Learning_Rate, d4$Mix_Image, d4$Runtime_min)
interaction.plot(d4$Augmentation, d4$Mix_Image, d4$Runtime_min)

#>> 交互作用あり
d4_result_x <- lm(MAE ~ Backbone + Learning_Rate + Augmentation + Mix_Image
                    + Backbone*Learning_Rate + Backbone*Augmentation + Backbone*Mix_Image 
                    + Learning_Rate*Augmentation+ Learning_Rate*Mix_Image + Augmentation*Mix_Image , 
                  data=d4)
d4_result_x
anova(d4_result_x)
summary(d4_result_x)



##################################
d5 <- read.xlsx(excel_path, sheet="Img_Reg_5_data", detectDates=TRUE)

str(d5)
summary(d5)

# 型変換
d5["Learning_Rate"] <- as.factor(d5$Learning_Rate)

str(d5)


## 要因別集計 - 要因別に水準間のMAE平均値を求める
for(col in c("Backbone", "BB_Size", "Learning_Rate")){
  print(col)
  print(
    aggregate(d5["MAE"], by=list(d5[,col]), FUN="mean")
  )
}

for(col in c("Backbone", "BB_Size", "Learning_Rate")){
  print(col)
  print(
    aggregate(d5["Runtime_min"], by=list(d5[,col]), FUN="mean")
  )
}

#>> 交互作用なし
d5_result <- lm(MAE~Backbone+Learning_Rate, data=d5)
d5_result
# 分散分析
anova(d5_result)
# 要因の係数, モデルの当てはまりの確認
summary(d5_result)


## 交互作用プロット
interaction.plot(d5$Backbone, d5$Learning_Rate, d5$MAE)
interaction.plot(d5$Learning_Rate, d5$Backbone, d5$MAE)

interaction.plot(d5$Backbone, d5$Learning_Rate, d5$Runtime_min)
interaction.plot(d5$Learning_Rate, d5$Backbone, d5$Runtime_min)




##################################
d6 <- read.xlsx(excel_path, sheet="Img_Reg_6_data", detectDates=TRUE)

str(d6)
summary(d6)

# 型変換
d6["Learning_Rate"] <- as.factor(d6$Learning_Rate)

str(d6)


## 要因別集計 - 要因別に水準間のMAE平均値を求める
for(col in c("Backbone", "BB_Size", "Learning_Rate")){
  print(col)
  print(
    aggregate(d6["MAE"], by=list(d6[,col]), FUN="mean")
  )
}

for(col in c("Backbone", "BB_Size", "Learning_Rate")){
  print(col)
  print(
    aggregate(d6["Runtime_min"], by=list(d6[,col]), FUN="mean")
  )
}

#>> 交互作用なし
d6_result <- lm(MAE~Backbone+Learning_Rate, data=d6)
d6_result
# 分散分析
anova(d6_result)
# 要因の係数, モデルの当てはまりの確認
summary(d6_result)


## 交互作用プロット
interaction.plot(d6$Backbone, d6$Learning_Rate, d6$MAE)
interaction.plot(d6$Learning_Rate, d6$Backbone, d6$MAE)

interaction.plot(d6$Backbone, d6$Learning_Rate, d6$Runtime_min)
interaction.plot(d6$Learning_Rate, d6$Backbone, d6$Runtime_min)





