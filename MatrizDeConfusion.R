cp <- read.csv("C:/Users/saira/Documents/GitHub/Machine-Learning/DataSets/college-perf.csv")
cp$Perf <- ordered(cp$Perf,
                   levels = c("Low", "Medium", "High"))
cp$Pred <- ordered(cp$Pred,
                   levels = c("Low", "Medium", "High"))
table <- table(cp$Perf, cp$Pred,
               dnn = c("Actual", "Predecido"))
table
prop.table(table)
round(prop.table(table, 1)*100,2)

