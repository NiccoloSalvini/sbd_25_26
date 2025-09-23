# (PART\*) Part 1: The Foundations {.unnumbered}

# 🧪 Hypothesis Testing Fundamentals

This chapter introduces the fundamental concepts of hypothesis testing, covering alternative hypothesis testing, p-value calculation, and hypothesis testing with null hypothesis.

## Learning Objectives

By the end of this chapter, you will be able to:

- Understand the concept of hypothesis testing
- Formulate null and alternative hypotheses
- Calculate and interpret p-values
- Perform hypothesis tests on averages
- Make statistical decisions based on test results

## Introduction to Hypothesis Testing

Hypothesis testing is a statistical method used to make decisions about population parameters based on sample data. It involves:

1. **Formulating hypotheses**: Stating a null hypothesis (H₀) and an alternative hypothesis (H₁)
2. **Collecting data**: Gathering sample data relevant to the hypothesis
3. **Calculating test statistics**: Computing appropriate test statistics
4. **Making decisions**: Comparing test statistics to critical values or p-values

## Null and Alternative Hypotheses

### Null Hypothesis (H₀)
The null hypothesis represents the status quo or the claim we want to test. It typically states that there is no effect, no difference, or no relationship.

**Examples:**
- H₀: μ = 50 (population mean equals 50)
- H₀: μ₁ = μ₂ (two population means are equal)
- H₀: ρ = 0 (no correlation between variables)

### Alternative Hypothesis (H₁)
The alternative hypothesis represents what we want to prove or the claim we're testing for. It can be:

- **One-tailed**: H₁: μ > 50 or H₁: μ < 50
- **Two-tailed**: H₁: μ ≠ 50

## P-values and Statistical Significance

### What is a P-value?
The p-value is the probability of observing a test statistic as extreme as, or more extreme than, the one calculated from the sample data, assuming the null hypothesis is true.

### Interpreting P-values
- **p < 0.05**: Strong evidence against H₀ (reject H₀)
- **p < 0.01**: Very strong evidence against H₀ (reject H₀)
- **p > 0.05**: Weak evidence against H₀ (fail to reject H₀)

### Common Misconceptions
- P-value is NOT the probability that H₀ is true
- P-value is NOT the probability that H₁ is true
- P-value is NOT the probability of making a Type I error

## Hypothesis Testing on Averages

### One-Sample t-test
Used to test whether a population mean differs from a specified value.

**Assumptions:**
- Data is normally distributed (or large sample size)
- Observations are independent
- Random sampling

**Test Statistic:**
```
t = (x̄ - μ₀) / (s/√n)
```

Where:
- x̄ = sample mean
- μ₀ = hypothesized population mean
- s = sample standard deviation
- n = sample size

### Two-Sample t-test
Used to compare means between two groups.

**Types:**
- **Independent samples**: Two separate groups
- **Paired samples**: Same subjects measured twice

## Practical Example

Let's work through a practical example using R:


```r
# Load required packages
library(tidyverse)

# Example: Testing if a new teaching method improves test scores
# H₀: μ_new = μ_old (no difference in means)
# H₁: μ_new > μ_old (new method is better)

# Sample data
old_method <- c(65, 70, 68, 72, 69, 71, 67, 73, 70, 68)
new_method <- c(72, 75, 78, 74, 76, 79, 73, 77, 75, 74)

# Perform two-sample t-test
t_test_result <- t.test(new_method, old_method, alternative = "greater")
print(t_test_result)

# Extract p-value
p_value <- t_test_result$p.value
cat("P-value:", p_value, "\n")

# Make decision
if (p_value < 0.05) {
  cat("Reject H₀: New method significantly improves scores\n")
} else {
  cat("Fail to reject H₀: No significant improvement\n")
}
```

## Type I and Type II Errors

### Type I Error (α)
- **Definition**: Rejecting H₀ when it's actually true
- **Probability**: α (significance level, typically 0.05)
- **Consequence**: False positive

### Type II Error (β)
- **Definition**: Failing to reject H₀ when it's actually false
- **Probability**: β
- **Consequence**: False negative

### Power (1 - β)
- **Definition**: Probability of correctly rejecting H₀ when it's false
- **Goal**: Maximize power while controlling Type I error

## Best Practices

1. **State hypotheses clearly** before collecting data
2. **Choose appropriate significance level** (usually α = 0.05)
3. **Check assumptions** before performing tests
4. **Report effect sizes** along with p-values
5. **Avoid p-hacking** (don't change hypotheses after seeing results)
6. **Consider multiple comparisons** when testing many hypotheses

## Summary

Hypothesis testing is a powerful statistical tool for making data-driven decisions. Key points to remember:

- Always formulate clear null and alternative hypotheses
- Understand what p-values represent and don't represent
- Consider both statistical and practical significance
- Be aware of Type I and Type II errors
- Follow best practices to ensure valid results

## References

- Slides: `02_hypt_testing_null_hypo.pdf`, `03_hypt_testing_alternative_hypo.pdf`, `04_how_to_calculate_pvalues.pdf`, `hypt_testing_on_avg.pdf`
- Additional resources available in the course drive
