library(shiny)
library(AppliedPredictiveModeling)
data(AlzheimerDisease)
data <- cbind(predictors, diagnosis)

variables <- c("Ab_42", "tau", "Cystatin_C", "VEGF", "TRAIL_R3", "PAI_1", "Pancreatic_polypeptide", "NT_proBNP", "MMP10", "MIF", "GRO_alpha", "Fibrinogen", "FAS", "Eotaxin_3", "Cortisol", "diagnosis")
data <- subset(data, select = variables)
