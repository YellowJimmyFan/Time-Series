last.name <- "An" # replace with your last name
student.id <- "20885166"  #replace with your student id

###
# Scenario 1 
###
forecast1 <- hydro.forecast # Forecast is a vector length 24 for forecast 1
write(forecast1, file = paste("Scenario1_",last.name,student.id,".txt", sep = ""), ncolumns = 1 )


###
# Scenario 2 
###
forecast2 <- matrix(1:400,10,40) # Forecasts for stock 1-40 should be stored in the columns of a 10x40 dimensional matrix
forecast2[, 1] <- stock1.VaR
forecast2[, 2] <- stock2.VaR
forecast2[, 3] <- stock3.VaR
forecast2[, 4] <- stock4.VaR
forecast2[, 5] <- stock5.VaR
forecast2[, 6] <- stock6.VaR
forecast2[, 7] <- stock7.VaR
forecast2[, 8] <- stock8.VaR
forecast2[, 9] <- stock9.VaR
forecast2[, 10] <- stock10.VaR
forecast2[, 11] <- stock11.VaR
forecast2[, 12] <- stock12.VaR
forecast2[, 13] <- stock13.VaR
forecast2[, 14] <- stock14.VaR
forecast2[, 15] <- stock15.VaR
forecast2[, 16] <- stock16.VaR
forecast2[, 17] <- stock17.VaR
forecast2[, 18] <- stock18.VaR
forecast2[, 19] <- stock19.VaR
forecast2[, 20] <- stock20.VaR
forecast2[, 21] <- stock21.VaR
forecast2[, 22] <- stock22.VaR
forecast2[, 23] <- stock23.VaR
forecast2[, 24] <- stock24.VaR
forecast2[, 25] <- stock25.VaR
forecast2[, 26] <- stock26.VaR
forecast2[, 27] <- stock27.VaR
forecast2[, 28] <- stock28.VaR
forecast2[, 29] <- stock29.VaR
forecast2[, 30] <- stock30.VaR
forecast2[, 31] <- stock31.VaR
forecast2[, 32] <- stock32.VaR
forecast2[, 33] <- stock33.VaR
forecast2[, 34] <- stock34.VaR
forecast2[, 35] <- stock35.VaR
forecast2[, 36] <- stock36.VaR
forecast2[, 37] <- stock37.VaR
forecast2[, 38] <- stock38.VaR
forecast2[, 39] <- stock39.VaR
forecast2[, 40] <- stock40.VaR
write.table(forecast2, file = paste("Scenario2_",last.name,student.id,".txt", sep = ""), sep ="," , col.names = F, row.names = F )


###
# Scenario 3 
###
imputation3 <- beer.imputedVal # Imputation of length 30

write(imputation3, file = paste("Scenario3_",last.name,student.id,".txt", sep = ""), ncolumns = 1 )

###
# Scenario 4 
###
forecast4 <- beer.pred.val # Forecast of length 24

write(forecast4, file = paste("Scenario4_",last.name,student.id,".txt", sep = ""), ncolumns = 1 )


###
# Scenario 5 
###
forecast5 <- matrix(1:(3*336),336,3) # Forecasts for cities 1-3 should be stored in the columns of a 336x3 dimensional matrix
forecast5[, 1] <- as.numeric(city1.pred)
forecast5[, 2] <- as.numeric(city2.pred)
forecast5[, 3] <- as.numeric(city3.pred)
write.table(forecast5, file = paste("Scenario5_",last.name,student.id,".txt", sep = ""), sep ="," , col.names = F, row.names = F )

