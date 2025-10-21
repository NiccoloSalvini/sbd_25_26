# 📈 Linear Regression Analysis

This chapter covers linear regression analysis, including simple linear regression, multiple linear regression, and nonlinear regression techniques.

## Learning Objectives

By the end of this chapter, you will be able to:

- Understand the principles of linear regression
- Perform simple and multiple linear regression
- Interpret regression coefficients and statistics
- Assess model fit and assumptions
- Handle nonlinear relationships
- Use R for regression analysis

## Introduction to Linear Regression

Linear regression is a statistical method used to model the relationship between a dependent variable (Y) and one or more independent variables (X). It assumes a linear relationship between the variables.

### Simple Linear Regression

Simple linear regression models the relationship between two variables:

**Model**: Y = β₀ + β₁X + ε

Where:
- Y = dependent variable (response)
- X = independent variable (predictor)
- β₀ = intercept
- β₁ = slope
- ε = error term

### Multiple Linear Regression

Multiple linear regression extends simple regression to include multiple predictors:

**Model**: Y = β₀ + β₁X₁ + β₂X₂ + ... + βₖXₖ + ε

## Assumptions of Linear Regression

1. **Linearity**: The relationship between X and Y is linear
2. **Independence**: Observations are independent
3. **Homoscedasticity**: Constant variance of errors
4. **Normality**: Errors are normally distributed
5. **No multicollinearity**: Independent variables are not highly correlated

## Model Evaluation Metrics

### R-squared (R²)
- **Definition**: Proportion of variance in Y explained by X
- **Range**: 0 to 1
- **Interpretation**: Higher values indicate better fit

### Adjusted R-squared
- **Definition**: R² adjusted for the number of predictors
- **Use**: Compare models with different numbers of predictors
- **Formula**: 1 - (1-R²)(n-1)/(n-k-1)

### Root Mean Square Error (RMSE)
- **Definition**: Standard deviation of residuals
- **Interpretation**: Lower values indicate better fit
- **Units**: Same as dependent variable

## Practical Example: Simple Linear Regression


```r
# Load required packages
library(tidyverse)
library(broom)

# Create sample data
set.seed(123)
n <- 100
x <- rnorm(n, mean = 50, sd = 10)
y <- 2 + 0.5 * x + rnorm(n, mean = 0, sd = 5)

# Create data frame
data <- data.frame(x = x, y = y)

# Fit simple linear regression
model <- lm(y ~ x, data = data)

# View model summary
summary(model)

# Extract key statistics
model_summary <- summary(model)
r_squared <- model_summary$r.squared
adj_r_squared <- model_summary$adj.r.squared
p_value <- model_summary$coefficients[2, 4]

cat("R-squared:", round(r_squared, 3), "\n")
cat("Adjusted R-squared:", round(adj_r_squared, 3), "\n")
cat("P-value:", round(p_value, 4), "\n")

# Create visualization
ggplot(data, aes(x = x, y = y)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Simple Linear Regression",
    x = "Independent Variable (X)",
    y = "Dependent Variable (Y)"
  ) +
  theme_minimal()
```

## Multiple Linear Regression

### Example with Multiple Predictors


```r
# Load required packages
library(tidyverse)
library(car)  # for VIF calculation

# Create sample data with multiple predictors
set.seed(123)
n <- 100
x1 <- rnorm(n, mean = 50, sd = 10)
x2 <- rnorm(n, mean = 30, sd = 8)
x3 <- rnorm(n, mean = 20, sd = 5)
y <- 10 + 0.3 * x1 + 0.2 * x2 - 0.1 * x3 + rnorm(n, mean = 0, sd = 3)

# Create data frame
data <- data.frame(x1 = x1, x2 = x2, x3 = x3, y = y)

# Fit multiple linear regression
model <- lm(y ~ x1 + x2 + x3, data = data)

# View model summary
summary(model)

# Check for multicollinearity using VIF
vif_values <- vif(model)
print("Variance Inflation Factors:")
print(vif_values)

# Interpretation guidelines:
# VIF < 5: No multicollinearity concern
# VIF 5-10: Moderate multicollinearity
# VIF > 10: High multicollinearity
```

## Nonlinear Regression

When the relationship between variables is not linear, we can use nonlinear regression techniques.

### Polynomial Regression


```r
# Create nonlinear data
set.seed(123)
x <- seq(0, 10, length.out = 50)
y <- 2 + 0.5 * x + 0.1 * x^2 + rnorm(50, mean = 0, sd = 1)

# Create data frame
data <- data.frame(x = x, y = y)

# Fit polynomial regression (quadratic)
model_poly <- lm(y ~ x + I(x^2), data = data)

# View model summary
summary(model_poly)

# Create visualization
ggplot(data, aes(x = x, y = y)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", formula = y ~ x + I(x^2), se = TRUE) +
  labs(
    title = "Polynomial Regression (Quadratic)",
    x = "Independent Variable (X)",
    y = "Dependent Variable (Y)"
  ) +
  theme_minimal()
```

### Logarithmic Transformation


```r
# Create exponential data
set.seed(123)
x <- seq(1, 10, length.out = 50)
y <- exp(0.5 + 0.3 * x + rnorm(50, mean = 0, sd = 0.1))

# Create data frame
data <- data.frame(x = x, y = y)

# Fit log-transformed model
model_log <- lm(log(y) ~ x, data = data)

# View model summary
summary(model_log)

# Create visualization
ggplot(data, aes(x = x, y = y)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  scale_y_log10() +
  labs(
    title = "Log-transformed Regression",
    x = "Independent Variable (X)",
    y = "Dependent Variable (Y) - Log Scale"
  ) +
  theme_minimal()
```

## Model Diagnostics

### Residual Analysis


```r
# Load required packages
library(tidyverse)
library(broom)

# Fit model
model <- lm(y ~ x1 + x2 + x3, data = data)

# Get residuals and fitted values
model_data <- augment(model)

# Residual plots
# 1. Residuals vs Fitted Values
ggplot(model_data, aes(x = .fitted, y = .resid)) +
  geom_point(alpha = 0.6) +
  geom_hline(yintercept = 0, linetype = "dashed") +
  labs(
    title = "Residuals vs Fitted Values",
    x = "Fitted Values",
    y = "Residuals"
  ) +
  theme_minimal()

# 2. Q-Q Plot for normality
ggplot(model_data, aes(sample = .resid)) +
  stat_qq() +
  stat_qq_line() +
  labs(
    title = "Q-Q Plot of Residuals",
    x = "Theoretical Quantiles",
    y = "Sample Quantiles"
  ) +
  theme_minimal()

# 3. Scale-Location Plot
ggplot(model_data, aes(x = .fitted, y = sqrt(abs(.resid)))) +
  geom_point(alpha = 0.6) +
  geom_smooth(se = FALSE) +
  labs(
    title = "Scale-Location Plot",
    x = "Fitted Values",
    y = "√|Standardized Residuals|"
  ) +
  theme_minimal()
```

## Best Practices

1. **Check assumptions** before interpreting results
2. **Use appropriate transformations** for nonlinear relationships
3. **Avoid overfitting** by not including too many predictors
4. **Consider interaction terms** when theoretically justified
5. **Report confidence intervals** for coefficients
6. **Validate models** using cross-validation when possible

## Common Pitfalls

1. **Correlation vs Causation**: Regression doesn't imply causation
2. **Extrapolation**: Be cautious when predicting outside the data range
3. **Outliers**: Check for influential observations
4. **Missing data**: Handle missing values appropriately
5. **Model selection**: Use appropriate criteria for model comparison

## Summary

Linear regression is a fundamental statistical technique for modeling relationships between variables. Key points:

- Understand the assumptions and check them
- Use appropriate metrics to evaluate model fit
- Consider nonlinear relationships when necessary
- Perform thorough diagnostics
- Interpret results carefully and avoid common pitfalls

## Further-on

- Slides: `linear_regression.pdf`, `mlt_lin_reg.pdf`, `nonlinear_regression.pdf`
- Additional resources available in the course drive
