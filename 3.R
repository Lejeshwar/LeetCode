calculate_fine<-function(days_overdue){
  if(days_overdue<=7) return (0)
  if(days_overdue<=30) return ((days_overdue-7)*2)
  else{
    return (50)
  }
}
days_overdue<-as.integer(readline("Enter no. of days overdue: "))
fine_amount<- calculate_fine(days_overdue)
cat("\nFine amount: ",fine_amount," rupees")
if(fine_amount==0){
  cat("\nNo fine. Thank you\n")
}else if(fine_amount==50){
  cat("\nMax cap limit exceeded, please contact library\n")
}else{
  cat("\nFine amount within cap, please pay the fine amount\n")
}
