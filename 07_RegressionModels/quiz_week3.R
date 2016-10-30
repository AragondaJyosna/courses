# 1
lm(mpg ~ factor(cyl) + wt, mtcars )
#-6.071


# 2
lm(mpg ~ factor(cyl) + wt, mtcars )
lm(mpg ~ factor(cyl), mtcars )
# Holding weight constant, cylinder appears to have less of an impact on mpg than if weight is disregarded.

# 3
model1 <- lm(mpg ~ factor(cyl) + wt, mtcars )
model2 <- lm(mpg ~ factor(cyl)*wt, mtcars)
anova(model1, model2)
# The P-value is larger than 0.05. So, according to our criterion, we would fail to reject, which suggests that the interaction terms may not be necessary.

# 4
lm(mpg ~ I(wt * 0.5) + factor(cyl), data = mtcars)
# The estimated expected change in MPG per half ton increase in weight.

# 5
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)

plot(x, y)
influence(lm(y ~ x))
#0.9945734

#
# 6
#
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
influence(lm(y ~ x))
dfbetas(lm(y ~ x))
# -134

# 7
# The coefficient can't change sign after adjustment, except for slight numerical pathological cases.
# FALSE
# It is possible for the coefficient to reverse sign after adjustment. For example, it can be strongly significant and positive before adjustment and strongly significant and negative after adjustment.
# My answer