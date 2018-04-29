redshift <- c(0.009373151, 0.007965511, 0.000103405, 0.001204166, 0.006354396, 0.012308515, 0.00551715, 
              0.017118509, 0.000470325, 0.006534521, 0.011894896, 0.002858644, 0.003682548, 0.00481333, 
              0.006050853, 0.008165649, 0.005543835, 0.001074076)

distance <- c(1.48438e+24, 6.82011e+23, 9.48181e+22, 1.63559e+23, 6.95898e+23, 1.54095e24, 7.43732e+23, 
              1.98431e+24, 6.34315e+22, 9.15392e+23, 1.41031e+24, 3.08849e+23, 3.36377e+23, 7.06391e+23,
              1.06447e+24, 7.71506e+23, 8.11624e+23, 4.8628e+23) 
distance * redshift


plot(redshift, distance, main = "Galaxy Plot", ylab = "distance in meters", col = "blue", pch =  19)

plot(redshift, distance, main = "Galaxy Plot", ylab = "distance in meters", col = "green", pch =  19)

galaxyfit <- lm(distance ~ redshift)
plot(redshift, distance, main = "Galaxy Plot", ylab = "distance in meters", col = "green", pch =  19)
abline(galaxyfit, col = "blue")
summary(galaxyfit)
gres <- residuals(galaxyfit)
hist(gres, col = "pink")
sd(gres)
library()
