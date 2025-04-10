text <- "
## City 1 model fitting
```{r}
data.pollution1.value[data.pollution1.value == 0] <- 1e-6
city1.fit <- arima(log(data.pollution1.value), order = c(5, 0, 3))
city1.fit.res <- as.numeric(residuals(city1.fit))
summary(city1.fit)
```

### Analyze residuals
```{r}
ts.plot(city1.fit.res)
par(mfrow=c(1, 2))
acf(city1.fit.res, main = 'residuals')
qqnorm(city1.fit.res, main = 'Normal Q-Q Plot of Std Residuals', 
       cex.main = 0.8, cex.lab = 0.8, cex.axis = 0.8)
qqline(city1.fit.res.standard, col = 'red')
par(mfrow=c(1, 1))
city1.pvals <- numeric()
for (i in 1:20) {
  result <- Box.test(city1.fit.res, lag = i, type = 'Ljung-Box')
  city1.pvals[i] <- result$p.value
}
plot(1:20, city1.pvals, pch = 19, 
     xlab = 'Lag(H)', ylab = 'p-value', 
     main = 'P-values for Ljung-Box statistic')
```
"

# Replace all instances of stock1 with stock2
text <- gsub("city1", "city3", text)
cat(text)

