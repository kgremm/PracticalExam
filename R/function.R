
Churn_Pred <- function(Cust_ID, data){

  Churn_Model <- glm(Exited ~ 1 + CreditScore + Gender + Age + Tenure + Balance + NumOfProducts + HasCrCard + IsActiveMember + EstimatedSalary, data = data, family="binomial")
  data$Churn_Model = predict(Churn_Model,data,type="response")

  result1 <- data[CustomerId == Cust_ID, list(Churn_Model)]
  return(result1)
}


library(ChurnPred)
ChurnPred(15565706,data)
