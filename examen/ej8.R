df <- data.frame(x = c(10,	15,	20,	25,	30,	35,	40),
y = c(15.2,	14.3,	12.8,	10.9,	9.2,	8.6,	7.9))

recta_y_x <- lm(y ~ x, df)
summary(recta_y_x)

