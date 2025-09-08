# 💻 Hypothesis Testing

Hypothesis testing is a statistical method used to make decisions or inferences about a population parameter based on a sample statistic. It involves formulating two competing hypotheses—the null hypothesis (H₀) and the alternative hypothesis (H₁)—and using sample data to determine which hypothesis is supported by the evidence.

### 1. Understanding Hypothesis Testing

1. **Null Hypothesis (H₀)**: This is the hypothesis that there is no effect or no difference. It is the status quo that we assume to be true unless there is strong evidence against it. For example, "The mean body temperature of humans is 37°C."

2. **Alternative Hypothesis (H₁)**: This is the hypothesis that there is an effect or a difference. It represents what we are trying to find evidence for. For example, "The mean body temperature of humans is not 37°C."

3. **Test Statistic**: A value calculated from the sample data that is used to evaluate the null hypothesis. For example, the t-statistic in a t-test.

4. **p-Value**: The probability of obtaining a test statistic at least as extreme as the one observed, given that the null hypothesis is true. A small p-value (typically ≤ 0.05) indicates strong evidence against the null hypothesis.

5. **Decision Rule**: Based on the p-value, we either reject the null hypothesis (if p ≤ 0.05) or fail to reject it (if p > 0.05).

### 2. Hypothesis Testing on One Mean

#### 2.1 `t.test()` for One Mean

The `t.test()` function in R is used to test whether the sample mean is significantly different from a hypothesized population mean. Here’s the general syntax:

```r
t.test(x, mu = 0, alternative = "two.sided", conf.level = 0.95)
```

- `x`: A numeric vector of data values.
- `mu`: The hypothesized value of the population mean (default is 0).
- `alternative`: Specifies the alternative hypothesis. It can be `"two.sided"`, `"greater"`, or `"less"`.
- `conf.level`: Confidence level for the confidence interval (default is 0.95).

#### 2.2 Example: Testing Average Body Temperature

Let's test whether the average body temperature of a sample of patients is significantly different from 37°C.


```r
# Sample data: body temperatures in degrees Celsius
body_temp <- c(36.7, 36.9, 37.1, 37.2, 37.3, 36.8, 37.0, 36.6)

# Perform one-sample t-test
t.test(body_temp, mu = 37)
#> 
#> 	One Sample t-test
#> 
#> data:  body_temp
#> t = -0.57735, df = 7, p-value = 0.5818
#> alternative hypothesis: true mean is not equal to 37
#> 95 percent confidence interval:
#>  36.74522 37.15478
#> sample estimates:
#> mean of x 
#>     36.95
```

In this example, we are testing if the mean body temperature is significantly different from 37°C.

### 3. Hypothesis Testing on Two Means

When comparing the means of two independent groups, we use a two-sample t-test.

#### 3.1 `t.test()` for Two Independent Means

The `t.test()` function can also be used to compare two means. Here’s the syntax:

```r
t.test(x, y, alternative = "two.sided", var.equal = FALSE, conf.level = 0.95)
```

- `x`, `y`: Numeric vectors of data values representing the two groups.
- `var.equal`: Logical value indicating whether to assume equal variances (default is `FALSE`).

#### 3.2 Example: Comparing Treatment and Control Groups

Suppose we have data on the weight loss of patients in two groups: a treatment group and a control group.


```r
# Sample data: weight loss in kg
treatment <- c(4.5, 5.0, 4.7, 6.2, 5.1)
control <- c(2.1, 2.4, 2.3, 2.0, 1.9)

# Perform two-sample t-test
t.test(treatment, control)
#> 
#> 	Welch Two Sample t-test
#> 
#> data:  treatment and control
#> t = 9.5733, df = 4.7832, p-value = 0.0002676
#> alternative hypothesis: true difference in means is not equal to 0
#> 95 percent confidence interval:
#>  2.154234 3.765766
#> sample estimates:
#> mean of x mean of y 
#>      5.10      2.14
```

In this example, we are testing if the average weight loss in the treatment group is significantly different from that in the control group.

### 4. Parameters of `t.test()` in Detail

The `t.test()` function in R has several parameters that can be adjusted depending on the specific hypothesis being tested:

- **x**: The sample data for a one-sample test or the first group for a two-sample test.
- **y**: The second group for a two-sample test. This parameter is left blank for one-sample tests.
- **alternative**: Specifies the alternative hypothesis. Options are:
  - `"two.sided"`: The default option. Tests if the sample mean is different from the hypothesized mean.
  - `"greater"`: Tests if the sample mean is greater than the hypothesized mean.
  - `"less"`: Tests if the sample mean is less than the hypothesized mean.
- **mu**: The hypothesized population mean.
- **paired**: A logical value indicating whether to perform a paired t-test. Defaults to `FALSE`.
- **var.equal**: A logical value indicating whether to assume equal variances in the two-sample test. Defaults to `FALSE`.
- **conf.level**: The confidence level for the confidence interval, usually set to 0.95.

### 5. Exercises

### Exercise 1: One-Sample t-Test
Given the following blood pressure measurements, test if the average systolic blood pressure is significantly different from 120.


```r
blood_pressure <- c(118, 122, 121, 119, 123, 125, 117, 124, 122, 120)
```

::: {.exercise #dw1}
Test the hypothesis that the mean blood pressure is different from 120.

**Hint:** Use `t.test()` function with `mu = 120`.

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:dw1)**:


```r
t.test(blood_pressure, mu = 120)
#> 
#> 	One Sample t-test
#> 
#> data:  blood_pressure
#> t = 1.3372, df = 9, p-value = 0.214
#> alternative hypothesis: true mean is not equal to 120
#> 95 percent confidence interval:
#>  119.2392 122.9608
#> sample estimates:
#> mean of x 
#>     121.1
```

:::

### Exercise 2: Two-Sample t-Test
Compare the cholesterol levels of two different diets.


```r
diet_A <- c(180, 190, 200, 195, 185)
diet_B <- c(210, 220, 215, 225, 230)
```

::: {.exercise #dw2}
Test if the mean cholesterol level is different between the two diets.

**Hint:** Use `t.test()` function with `x = diet_A` and `y = diet_B`.

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:dw2)**:


```r
t.test(diet_A, diet_B)
#> 
#> 	Welch Two Sample t-test
#> 
#> data:  diet_A and diet_B
#> t = -6, df = 8, p-value = 0.0003234
#> alternative hypothesis: true difference in means is not equal to 0
#> 95 percent confidence interval:
#>  -41.53002 -18.46998
#> sample estimates:
#> mean of x mean of y 
#>       190       220
```

:::

### Exercise 3: One-Sample t-Test (Greater)
A new drug claims to lower blood sugar levels to below 100 mg/dL. Test this claim with the following blood sugar levels after the drug administration.


```r
blood_sugar <- c(95, 99, 102, 98, 97, 96, 100, 99)
```

::: {.exercise #dw3}
Test the hypothesis that the mean blood sugar level is less than 100.

**Hint:** Use `t.test()` function with `mu = 100` and `alternative = "less"`.

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:dw3)**:


```r
t.test(blood_sugar, mu = 100, alternative = "less")
#> 
#> 	One Sample t-test
#> 
#> data:  blood_sugar
#> t = -2.198, df = 7, p-value = 0.03196
#> alternative hypothesis: true mean is less than 100
#> 95 percent confidence interval:
#>      -Inf 99.75846
#> sample estimates:
#> mean of x 
#>     98.25
```

:::

### Exercise 4: Two-Sample t-Test (Paired)
A dietitian wants to know if a new diet plan significantly reduces weight. The weights of 5 individuals before and after following the diet are recorded below:


```r
before <- c(72, 68, 74, 70, 76)
after <- c(70, 65, 72, 67, 73)
```

::: {.exercise #dw4}
Test the hypothesis that there is a significant difference in weight before and after the diet.

**Hint:** Use `t.test()` function with `paired = TRUE`.

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:dw4)**:


```r
t.test(before, after, paired = TRUE)
#> 
#> 	Paired t-test
#> 
#> data:  before and after
#> t = 10.614, df = 4, p-value = 0.000446
#> alternative hypothesis: true mean difference is not equal to 0
#> 95 percent confidence interval:
#>  1.919913 3.280087
#> sample estimates:
#> mean difference 
#>             2.6
```

:::
