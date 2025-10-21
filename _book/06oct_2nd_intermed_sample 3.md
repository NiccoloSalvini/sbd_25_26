# 📚 Additional Practice Exercises for Intermediate Exam {#int-samp-q-second}

This is a comprehensive collection of practice exercises designed to prepare you for the intermediate exam. These exercises cover all major topics from hypothesis testing to advanced regression techniques, with a focus on healthcare and biomedical data analysis.

**Instructions**: Try to solve all exercises on your own first. Solutions are provided at the end of this chapter.

## 🏥 Part 1: Data Wrangling and Descriptive Statistics

::: {.exercise #add1}
Load the built-in dataset `airquality` and remove all rows with missing values. How many complete observations remain?
:::

----

::: {.exercise #add2}
Using the `mtcars` dataset, create a new variable called `efficiency` that categorizes cars as "High" if `mpg > 20` and "Low" otherwise. How many cars are in the "High" efficiency category?
:::

----

::: {.exercise #add3}
Write the R command to calculate the mean, median, and standard deviation of a variable called `blood_pressure` in a dataset named `health_data`.
:::

----

::: {.exercise #add4}
Given a healthcare dataset with variables `patient_id`, `age`, `treatment` (A or B), and `recovery_days`, write the R command to create a summary table showing the mean recovery days for each treatment group.
:::

----

::: {.exercise #add51}
From a `patients` dataset with columns `patient_id`, `age`, `sex`, `diagnosis_code`, and `hospital_stay_days`, write a `dplyr` pipeline to find the average hospital stay for male patients over 65 for each diagnosis code, showing only diagnoses with more than 10 such patients.
:::

----

## 🔬 Part 2: Hypothesis Testing - Single Population

::: {.exercise #add5}
A hospital claims that the average waiting time in their emergency room is 45 minutes. A random sample of 50 patients showed a mean waiting time of 52 minutes with a standard deviation of 12 minutes. Test at α = 0.05 if the actual waiting time is significantly different from the claimed 45 minutes. Write the R command to perform this test.
:::

----

::: {.exercise #add6}
A pharmaceutical company claims that 75% of patients experience relief from headaches within 30 minutes of taking their new medication. In a sample of 200 patients, 140 reported relief within 30 minutes. Test if the actual proportion is significantly different from 75%. Write the appropriate R command.
:::

----

::: {.exercise #add7}
Without using formulas, explain the difference between Type I and Type II errors in hypothesis testing.
:::

----

::: {.exercise #add8}
A medical study tests whether the average cholesterol level in a population is greater than 200 mg/dL. The p-value obtained is 0.032. At a significance level of 0.05, what is your decision and conclusion?
:::

----

::: {.exercise #add52}
A new drug is tested to reduce systolic blood pressure. The mean reduction in a sample of 40 patients is 8.5 mmHg with a standard deviation of 10 mmHg. A reduction of at least 10 mmHg is considered clinically significant. Perform a one-sample t-test to check if the mean reduction is less than 10 mmHg. Write the R code and interpret the p-value in the context of clinical significance.
:::

----

## 👥 Part 3: Hypothesis Testing - Two Populations

::: {.exercise #add9}
A clinical trial compares two different treatments for hypertension. Group A (n=30) has a mean blood pressure reduction of 15 mmHg (sd=5), while Group B (n=35) has a mean reduction of 12 mmHg (sd=6). Assume equal variances. Write the R command to test if there is a significant difference between the two treatments.
:::

----

::: {.exercise #add10}
A hospital is testing a new training program for nurses. The same 20 nurses took a competency test before and after the training. The data is as follows:

```r
nurse_data <- data.frame(
  nurse_id = 1:20,
  before = c(72, 68, 75, 70, 73, 69, 71, 74, 68, 72, 
             70, 73, 69, 71, 74, 72, 70, 68, 73, 71),
  after = c(78, 74, 80, 76, 79, 75, 77, 80, 74, 78, 
            76, 79, 75, 77, 80, 78, 76, 74, 79, 77)
)
```

Test if the training program significantly improved the test scores. Write the appropriate R command and state whether this should be a paired or unpaired test.
:::

----

::: {.exercise #add11}
Two hospitals are comparing their patient satisfaction rates. Hospital A reports that 180 out of 250 patients (72%) were satisfied, while Hospital B reports that 210 out of 280 patients (75%) were satisfied. Write the R command to test if there is a significant difference in satisfaction rates between the two hospitals.
:::

----

::: {.exercise #add12}
A researcher wants to compare the effectiveness of three different diets (A, B, and C) on weight loss. Given the following data, can you determine if this requires a t-test or ANOVA? Explain why.

```r
diet_study <- data.frame(
  diet = rep(c("A", "B", "C"), each = 15),
  weight_loss = c(...)  # 45 observations total
)
```
:::

----

::: {.exercise #add53}
A study compares the cholesterol levels of patients in two different clinics. Before running a t-test, you perform a Levene's test for equality of variances and get a p-value of 0.02. Which type of two-sample t-test should you use and why? Write the R command for the appropriate t-test.
:::

----

## 📊 Part 4: ANOVA - Comparing Multiple Groups

::: {.exercise #add13}
Using the built-in `PlantGrowth` dataset in R, test if there is a significant difference in plant weight across the three treatment groups. Write the R command and report the p-value.
:::

----

::: {.exercise #add14}
A medical study examines the effect of four different medications on reducing fever. The temperature reduction (in degrees Celsius) for patients in each group is recorded:

```r
fever_data <- data.frame(
  medication = rep(c("Med_A", "Med_B", "Med_C", "Med_D"), each = 10),
  temp_reduction = c(
    1.2, 1.5, 1.3, 1.4, 1.6, 1.3, 1.5, 1.4, 1.2, 1.5,  # Med_A
    1.8, 2.0, 1.9, 2.1, 1.8, 2.0, 1.9, 1.8, 2.0, 1.9,  # Med_B
    1.0, 1.2, 1.1, 1.3, 1.0, 1.2, 1.1, 1.0, 1.2, 1.1,  # Med_C
    2.3, 2.5, 2.4, 2.6, 2.3, 2.5, 2.4, 2.3, 2.5, 2.4   # Med_D
  )
)
```

Perform an ANOVA test to determine if there are significant differences among the medications. What is the F-statistic?
:::

----

::: {.exercise #add15}
After conducting an ANOVA test that shows significant differences among groups, what additional analysis would you perform to identify which specific groups differ from each other?
:::

----

::: {.exercise #add54}
After running an ANOVA on the effect of three different physical therapy routines (`RoutineA`, `RoutineB`, `RoutineC`) on recovery time, you get a significant p-value. The subsequent Tukey's HSD test gives the following output. Which routines are significantly different from each other, and what does the `diff` column represent?
```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = recovery_time ~ routine)

$routine
                     diff       lwr       upr     p adj
RoutineB-RoutineA  -5.231 -8.992618 -1.469382 0.0045121
RoutineC-RoutineA   1.543 -2.218618  5.304618 0.5694884
RoutineC-RoutineB   6.774  3.012382 10.535618 0.0002196
```
:::

----

## 📈 Part 5: Simple and Multiple Linear Regression

::: {.exercise #add16}
Using the `mtcars` dataset, estimate a simple linear regression model where `mpg` (miles per gallon) is predicted by `wt` (weight). What is the interpretation of the slope coefficient?
:::

----

::: {.exercise #add17}
A researcher collects data on hospital readmission rates. They want to predict the `readmission_rate` (percentage) based on `bed_count`, `nurse_ratio` (nurses per patient), and `avg_stay` (average length of stay). Write the R command to estimate this multiple regression model.
:::

----

::: {.exercise #add18}
In a multiple linear regression model predicting patient recovery time based on age, BMI, and exercise hours, you obtain the following VIF values:
- age: VIF = 2.3
- BMI: VIF = 12.5
- exercise: VIF = 2.1

Which variable(s) might be problematic due to multicollinearity, and what would you recommend?
:::

----

::: {.exercise #add19}
Using the `mtcars` dataset, estimate a multiple regression model: `mpg ~ wt + hp + cyl`. After checking for significance and multicollinearity, you find that `cyl` has a p-value of 0.85 and high VIF. What should you do next?
:::

----

::: {.exercise #add20}
Explain the difference between R-squared and Adjusted R-squared. Why is Adjusted R-squared particularly important in multiple regression?
:::

----

::: {.exercise #add21}
Given the following regression output for predicting systolic blood pressure:

```
Coefficients:
              Estimate  Std. Error  t value  Pr(>|t|)    
(Intercept)   90.234    5.123       17.61    < 2e-16 ***
age           0.652     0.085        7.67    1.2e-11 ***
weight        0.234     0.045        5.20    8.3e-07 ***
exercise     -1.234     0.312       -3.95    0.00015 ***

Residual standard error: 8.5 on 146 degrees of freedom
Multiple R-squared:  0.5234,	Adjusted R-squared:  0.5136
F-statistic: 53.45 on 3 and 146 DF,  p-value: < 2.2e-16
```

What is the predicted systolic blood pressure for a 50-year-old person weighing 75 kg who exercises 5 hours per week?
:::

----

::: {.exercise #add22}
In the regression output from the previous exercise, which variable has the strongest effect on blood pressure? How did you determine this?
:::

----

::: {.exercise #add55}
You are modeling the length of a hospital stay (`los`) based on `age` and `infection_status` (1=yes, 0=no). You suspect that the effect of age on the length of stay is different for patients with and without an infection. How would you specify this in an R model? Write the `lm()` command and explain how to interpret the interaction term's coefficient if it is significant.
:::

----

## 🔄 Part 6: Nonlinear Regression and Transformations

::: {.exercise #add23}
You want to model the relationship between BMI and the risk of diabetes, but the relationship appears to be quadratic. Write the R command to estimate a polynomial regression model with BMI and BMI² as predictors.
:::

----

::: {.exercise #add24}
Given a variable `income` that is highly right-skewed, what transformation would you typically apply to make it more normally distributed for regression analysis? Write the R command to create this transformed variable.
:::

----

::: {.exercise #add25}
Using the `mtcars` dataset, create a model predicting `mpg` using both `wt` and `wt²` (weight squared). Write the complete R commands needed.
:::

----

::: {.exercise #add56}
In a model predicting `blood_pressure` from `log(body_weight)`, the coefficient for `log(body_weight)` is 15.3. How do you interpret this coefficient?
:::

----

## 🎯 Part 7: Logistic Regression

::: {.exercise #add26}
A study examines factors affecting whether a patient develops a certain disease (yes/no). The predictors are age, BMI, and smoking status (0=non-smoker, 1=smoker). Write the R command to estimate a logistic regression model with `disease` as the outcome variable.
:::

----

::: {.exercise #add27}
In logistic regression, what does an odds ratio of 2.5 for the variable "smoking" mean in practical terms?
:::

----

::: {.exercise #add28}
You have a dataset with a binary outcome `survived` (1=yes, 0=no) and predictors `age`, `treatment_type`, and `severity_score`. After fitting a logistic regression model, you get a coefficient of -0.05 for age. What does this negative coefficient indicate?
:::

----

::: {.exercise #add29}
What is the key difference between linear regression and logistic regression in terms of what they predict?
:::

----

::: {.exercise #add30}
Using the built-in `mtcars` dataset, create a binary variable `high_mpg` (1 if mpg > 20, 0 otherwise) and estimate a logistic regression model predicting `high_mpg` based on `wt` and `hp`. Write the R commands.
:::

----

::: {.exercise #add57}
Using the logistic regression model from Exercise \@ref(exr:add30) (`high_mpg ~ wt + hp`), write the R code to predict the probability of having high MPG for a car with `wt = 2.8` and `hp = 150`.
:::

----

## 📊 Part 8: Poisson Regression

::: {.exercise #add31}
A hospital administrator wants to model the number of emergency room visits per day based on day of the week and weather conditions. What type of regression model is most appropriate for count data like this?
:::

----

::: {.exercise #add32}
You have data on the number of hospital-acquired infections (`infection_count`) and want to predict it based on `bed_occupancy_rate` and `nurse_staff_ratio`. Write the R command to fit a Poisson regression model.
:::

----

::: {.exercise #add33}
What is the primary assumption of Poisson regression regarding the relationship between the mean and variance of the outcome variable?
:::

----

::: {.exercise #add58}
You fit a Poisson model to predict the number of asthma-related ER visits. The residual deviance is 150 on 80 degrees of freedom. What does this suggest about your model, and what alternative model should you consider? Write the R command for fitting this alternative model.
:::

----

## 🏷️ Part 9: Regression with Dummy Variables

::: {.exercise #add34}
A dataset contains a variable `blood_type` with categories: A, B, AB, and O. You want to include this in a regression model predicting cholesterol levels. How many dummy variables do you need to create, and why?
:::

----

::: {.exercise #add35}
You have a dataset with the following variables:
- `recovery_time` (continuous outcome)
- `age` (continuous)
- `treatment` (categorical: "Standard", "Experimental", "Control")

Write the R command to create a regression model that includes the categorical treatment variable.
:::

----

::: {.exercise #add36}
In a regression model with a categorical variable "hospital_ward" (ICU, Surgery, General), you create dummy variables. The regression output shows:

```
Coefficients:
                      Estimate  Std. Error  t value  Pr(>|t|)    
(Intercept)           12.5      1.2         10.42    < 2e-16 ***
ward_Surgery          -2.3      0.8         -2.88    0.0045 **
ward_ICU              4.7       0.9          5.22    < 0.0001 ***
```

If "General" is the reference category, what is the predicted value for a patient in the Surgery ward (assuming no other predictors)?
:::

----

::: {.exercise #add37}
Using the `mtcars` dataset, the variable `am` is binary (0=automatic, 1=manual). Create a regression model predicting `mpg` based on `wt`, `hp`, and `am`. Write the R command.
:::

----

::: {.exercise #add38}
In a model with a dummy variable for gender (male=1, female=0) predicting salary, the coefficient for gender is 5000. What does this mean?
:::

----

::: {.exercise #add59}
In a model predicting `patient_satisfaction` (scale 1-100), you include a dummy variable `has_private_room` (1=yes, 0=no). The intercept of the model is 75.2. How do you interpret this intercept value?
:::

----

## 🧮 Part 10: Model Diagnostics and Interpretation

::: {.exercise #add39}
What are the four main assumptions that should be checked for linear regression models?
:::

----

::: {.exercise #add40}
You fit a regression model and obtain an R² of 0.85 and an Adjusted R² of 0.83. You have 100 observations. Approximately how many predictors are in your model? (Hint: use the relationship between R² and Adjusted R²)
:::

----

::: {.exercise #add41}
A researcher finds that in their regression model, the residuals show a clear funnel shape when plotted against fitted values. What problem does this indicate, and what might be a solution?
:::

----

::: {.exercise #add42}
Using the `mtcars` dataset, fit a model `mpg ~ wt + hp` and create diagnostic plots using the `plot()` function. Write the R commands.
:::

----

::: {.exercise #add60}
You run diagnostic plots for a linear model and notice that observation #45 has a Cook's distance value much larger than 1. What does this indicate, and what are two potential next steps to address this issue?
:::

----

## 🔢 Part 11: Big Data Concepts and Data Collection

::: {.exercise #add43}
Explain in your own words why correct data collection is particularly important in the era of Big Data, even though we have more data than ever before.
:::

----

::: {.exercise #add44}
What is the difference between structured and unstructured data? Give one example of each in a healthcare context.
:::

----

::: {.exercise #add45}
Name at least three potential sources of bias in data collection that could affect the validity of statistical analyses in healthcare research.
:::

----

::: {.exercise #add46}
A hospital collects data on patient satisfaction through a voluntary online survey. What type of bias might this introduce, and why?
:::

----

## 💻 Part 12: Mixed Practical Exercises

::: {.exercise #add47}
Create a simulated dataset with 100 observations containing:
- `patient_id`: sequential numbers 1 to 100
- `age`: random values from a normal distribution with mean 50 and sd 15
- `treatment`: randomly assign "A" or "B" to each patient
- `outcome`: random values from a normal distribution with mean 100 and sd 20

Write the R commands to create this dataset.
:::

----

::: {.exercise #add48}
Using the dataset created in the previous exercise, perform the following:
1. Calculate the mean age for each treatment group
2. Test if there's a significant difference in outcome between treatment groups
3. Create a linear model predicting outcome from age and treatment

Write all necessary R commands.
:::

----

::: {.exercise #add49}
Load the `iris` dataset and:
1. Filter only the "setosa" and "versicolor" species
2. Create a logistic regression model predicting species based on `Sepal.Length` and `Petal.Length`
3. Report the coefficients

Write the R commands using `dplyr` for filtering.
:::

----

::: {.exercise #add50}
A pharmaceutical company tests a new drug on 500 patients. They record:
- Patient demographics (age, gender, BMI)
- Baseline health metrics (blood pressure, cholesterol, glucose)
- Treatment assignment (drug vs. placebo)
- Outcome after 6 months (improved=1, not improved=0)

Describe the complete analytical workflow you would follow, from data cleaning to final model interpretation. What types of analyses would you perform?
:::

----

::: {.exercise #add61}
You are given a dataset `stroke_data` with the following variables: `age`, `hypertension` (1/0), `heart_disease` (1/0), `avg_glucose_level`, and `stroke` (1/0). Outline the steps you would take to build and evaluate a logistic regression model to predict the likelihood of a stroke. Include R commands for:
1.  Splitting the data into training and testing sets.
2.  Fitting the logistic regression model on the training data.
3.  Evaluating the model's performance on the testing data using a confusion matrix and AUC.
:::

----

---

## ✅ SOLUTIONS

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add1):

```r
data(airquality)
complete_data <- na.omit(airquality)
nrow(complete_data)
```

Result: **111** complete observations remain.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add2):

```r
data(mtcars)
mtcars$efficiency <- ifelse(mtcars$mpg > 20, "High", "Low")
table(mtcars$efficiency)
```

Result: **14** cars are in the "High" efficiency category.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add3):

```r
mean(health_data$blood_pressure, na.rm = TRUE)
median(health_data$blood_pressure, na.rm = TRUE)
sd(health_data$blood_pressure, na.rm = TRUE)

# Or all at once:
summary(health_data$blood_pressure)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add4):

```r
library(dplyr)
health_data %>%
  group_by(treatment) %>%
  summarise(mean_recovery = mean(recovery_days, na.rm = TRUE))

# Or base R:
aggregate(recovery_days ~ treatment, data = health_data, FUN = mean)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add5):

```r
# Create the sample data
waiting_time <- rnorm(50, mean = 52, sd = 12)  # Simulated data

# Perform one-sample t-test
t.test(waiting_time, mu = 45, alternative = "two.sided")

# Or if you have the actual data vector:
# t.test(sample_waiting_times, mu = 45, alternative = "two.sided")
```

This is a one-sample t-test because we're comparing the sample mean to a known population value (45 minutes).
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add6):

```r
# Proportion test
prop.test(x = 140, n = 200, p = 0.75, alternative = "two.sided")
```

The null hypothesis is H0: p = 0.75. The sample proportion is 140/200 = 0.70 (70%).
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add7):

**Type I Error (α)**: Rejecting the null hypothesis when it is actually true. This is a "false positive" - concluding there is an effect when there isn't one. The probability of Type I error is the significance level (usually 0.05).

**Type II Error (β)**: Failing to reject the null hypothesis when it is actually false. This is a "false negative" - missing a real effect. The probability of Type II error is related to the power of the test (Power = 1 - β).

Example in healthcare: Type I error would be concluding a drug works when it doesn't; Type II error would be concluding a drug doesn't work when it actually does.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add8):

**Decision**: Reject the null hypothesis.

**Conclusion**: Since p-value (0.032) < α (0.05), we reject H0. There is sufficient evidence to conclude that the average cholesterol level in the population is significantly greater than 200 mg/dL.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add9):

```r
# Create sample data (in practice, you'd have actual data)
group_A <- rnorm(30, mean = 15, sd = 5)
group_B <- rnorm(35, mean = 12, sd = 6)

# Two-sample t-test assuming equal variances
t.test(group_A, group_B, var.equal = TRUE, alternative = "two.sided")
```

This is an unpaired (independent samples) t-test with equal variances.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add10):

```r
nurse_data <- data.frame(
  nurse_id = 1:20,
  before = c(72, 68, 75, 70, 73, 69, 71, 74, 68, 72, 
             70, 73, 69, 71, 74, 72, 70, 68, 73, 71),
  after = c(78, 74, 80, 76, 79, 75, 77, 80, 74, 78, 
            76, 79, 75, 77, 80, 78, 76, 74, 79, 77)
)

# Paired t-test
t.test(nurse_data$after, nurse_data$before, 
       paired = TRUE, alternative = "greater")
```

This should be a **PAIRED test** because the same nurses are measured before and after the training (repeated measures on the same subjects).
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add11):

```r
# Two-sample proportion test
prop.test(x = c(180, 210), n = c(250, 280), alternative = "two.sided")
```

This tests if the proportions (0.72 vs 0.75) are significantly different between the two hospitals.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add12):

This requires **ANOVA** (Analysis of Variance), not a t-test.

**Reason**: We are comparing means across **three groups** (diets A, B, and C). A t-test can only compare two groups at a time. ANOVA is specifically designed to test if there are significant differences among three or more group means simultaneously.

```r
# The appropriate test would be:
anova_result <- aov(weight_loss ~ diet, data = diet_study)
summary(anova_result)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add53):

You should use **Welch's two-sample t-test** (the default in R).
**Reason**: Levene's test checks if the variances of the two groups are equal. A p-value of 0.02 (< 0.05) indicates that the variances are significantly different. The standard two-sample t-test assumes equal variances, so using it would lead to incorrect results. Welch's t-test does not assume equal variances and is therefore the appropriate choice.
```r
# Assuming 'cholesterol_data' with 'level' and 'clinic' columns
# The default t.test in R is Welch's t-test
t.test(level ~ clinic, data = cholesterol_data)

# You would NOT do this, as var.equal=TRUE is for equal variances:
# t.test(level ~ clinic, data = cholesterol_data, var.equal = TRUE)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add13):

```r
data(PlantGrowth)
plant_model <- aov(weight ~ group, data = PlantGrowth)
summary(plant_model)
```

The p-value is approximately **0.0159**, indicating significant differences among the groups at α = 0.05.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add14):

```r
fever_data <- data.frame(
  medication = rep(c("Med_A", "Med_B", "Med_C", "Med_D"), each = 10),
  temp_reduction = c(
    1.2, 1.5, 1.3, 1.4, 1.6, 1.3, 1.5, 1.4, 1.2, 1.5,
    1.8, 2.0, 1.9, 2.1, 1.8, 2.0, 1.9, 1.8, 2.0, 1.9,
    1.0, 1.2, 1.1, 1.3, 1.0, 1.2, 1.1, 1.0, 1.2, 1.1,
    2.3, 2.5, 2.4, 2.6, 2.3, 2.5, 2.4, 2.3, 2.5, 2.4
  )
)

fever_anova <- aov(temp_reduction ~ medication, data = fever_data)
summary(fever_anova)
```

The F-statistic is approximately **167.4**, with a very small p-value (< 2e-16), indicating highly significant differences among medications.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add15):

After a significant ANOVA, you should perform **post-hoc tests** (pairwise comparisons) such as:

1. **Tukey's HSD (Honestly Significant Difference)** - most common
2. **Bonferroni correction**
3. **Scheffe's test**

```r
# Example using Tukey's HSD:
TukeyHSD(anova_model)

# Or using the multcomp package:
library(multcomp)
post_hoc <- glht(anova_model, linfct = mcp(group_variable = "Tukey"))
summary(post_hoc)
```

These tests identify which specific pairs of groups differ significantly from each other.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add54):

**Interpretation**:
*   The `diff` column shows the difference in mean recovery time between the two routines being compared. For example, `RoutineB-RoutineA` has a `diff` of -5.231, meaning Routine B's average recovery time is 5.231 days shorter than Routine A's.
*   The `p adj` column shows the p-value adjusted for multiple comparisons.
*   **Significant differences (p < 0.05)**:
    *   `RoutineB` is significantly different from `RoutineA` (p = 0.0045).
    *   `RoutineC` is significantly different from `RoutineB` (p = 0.0002).
*   **No significant difference**:
    *   `RoutineC` is not significantly different from `RoutineA` (p = 0.569).

**Conclusion**: Routine B leads to the fastest recovery, significantly faster than both A and C. There is no statistical difference between routines A and C.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add16):

```r
data(mtcars)
mpg_model <- lm(mpg ~ wt, data = mtcars)
summary(mpg_model)
```

**Interpretation of slope**: The coefficient for `wt` is approximately **-5.34**. This means that for every 1,000 lb increase in car weight, the fuel efficiency (mpg) decreases by about 5.34 miles per gallon, on average. The negative sign indicates an inverse relationship: heavier cars have lower fuel efficiency.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add17):

```r
readmission_model <- lm(readmission_rate ~ bed_count + nurse_ratio + avg_stay, 
                        data = hospital_data)
summary(readmission_model)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add18):

**Problem**: The variable **BMI** has a VIF of 12.5, which exceeds the common threshold of 10, indicating problematic multicollinearity. Age and exercise have acceptable VIF values (< 10).

**Recommendation**: 
1. Consider removing BMI from the model, OR
2. Investigate which other variable(s) BMI is highly correlated with
3. Consider combining correlated variables or using principal component analysis (PCA)
4. Check if the model performance and interpretability are actually affected

The other variables (age and exercise) are fine and should be retained.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add19):

You should **remove the `cyl` variable** from the model.

**Reasoning**:
1. The p-value of 0.85 is much larger than any reasonable significance level (e.g., 0.05), indicating `cyl` is not significantly associated with `mpg` in this model
2. High VIF suggests multicollinearity with other predictors
3. Removing non-significant variables with high VIF improves model parsimony and interpretability

**Next step**:
```r
# Refit the model without cyl
improved_model <- lm(mpg ~ wt + hp, data = mtcars)
summary(improved_model)
# Check VIF again
library(car)
vif(improved_model)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add20):

**R-squared (R²)**: Represents the proportion of variance in the dependent variable that is explained by the independent variable(s). It ranges from 0 to 1. However, R² always increases (or stays the same) when you add more predictors, even if they're not truly useful.

**Adjusted R-squared (R²adj)**: Adjusts R² for the number of predictors in the model and the sample size. It penalizes the addition of unhelpful variables.

**Formula**: R²adj = 1 - [(1 - R²)(n - 1)/(n - k - 1)]
where n = sample size, k = number of predictors

**Why important in multiple regression**: 
- Prevents overfitting
- Allows fair comparison between models with different numbers of predictors
- Can decrease if you add predictors that don't improve the model enough to justify their inclusion
- More realistic measure of model quality

Use R²adj when comparing models with different numbers of predictors; use R² when evaluating a single model's goodness of fit.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add21):

The regression equation is:
Systolic BP = 90.234 + 0.652(age) + 0.234(weight) - 1.234(exercise)

For a 50-year-old, 75 kg person who exercises 5 hours/week:
Systolic BP = 90.234 + 0.652(50) + 0.234(75) - 1.234(5)
Systolic BP = 90.234 + 32.6 + 17.55 - 6.17
**Systolic BP = 134.214 mmHg**

Approximately **134.2 mmHg**
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add22):

The variable with the **strongest effect** appears to be **age**, with a t-value of 7.67 (the highest absolute t-value).

**How to determine**:

1. **Compare t-values** (most direct method): Larger absolute t-values indicate stronger effects
   - age: t = 7.67
   - weight: t = 5.20
   - exercise: t = -3.95

2. **Compare p-values**: All are highly significant, but age has the smallest p-value (1.2e-11)

3. **Standardized coefficients** would be the most precise method (not shown here), as they account for different scales of measurement

Note: We cannot simply compare the raw coefficients (0.652, 0.234, -1.234) because the variables are measured in different units (years, kg, hours).
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add55):

You would specify the model with an interaction term using `*`.
```r
# Fit model with interaction term
interaction_model <- lm(los ~ age * infection_status, data = hospital_data)
summary(interaction_model)

# This is equivalent to:
# lm(los ~ age + infection_status + age:infection_status, data = hospital_data)
```
**Interpretation of the interaction coefficient (`age:infection_status`)**:
If the interaction term is significant, it means the effect of age on the length of stay is different depending on infection status. The coefficient for `age:infection_status` represents the **additional change in the slope of age** for patients with an infection compared to those without. For example, if the coefficient is 1.5, it means that for each one-year increase in age, the length of stay increases by an additional 1.5 days for infected patients, on top of the baseline age effect for non-infected patients.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add23):

```r
# Create the polynomial term
model_data$BMI_squared <- model_data$BMI^2

# Fit polynomial regression
poly_model <- lm(diabetes_risk ~ BMI + BMI_squared, data = model_data)
summary(poly_model)

# Alternative using poly() function (creates orthogonal polynomials):
poly_model2 <- lm(diabetes_risk ~ poly(BMI, 2), data = model_data)
summary(poly_model2)
```

The first approach gives more interpretable coefficients; the second is better for avoiding multicollinearity between BMI and BMI².
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add24):

For a right-skewed variable like income, apply a **logarithmic transformation**:

```r
# Natural log transformation
data$log_income <- log(data$income)

# Or log base 10
data$log10_income <- log10(data$income)

# Make sure there are no zero or negative values first:
data$log_income <- log(data$income + 1)  # Adding 1 if zeros exist
```

**Why log transformation**: 
- Reduces right skewness
- Makes the distribution more normal
- Reduces the influence of extreme values
- Often makes relationships more linear

Other options for right-skewed data: square root transformation `sqrt(income)` or inverse transformation `1/income`.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add25):

```r
data(mtcars)

# Method 1: Create the squared term explicitly
mtcars$wt_squared <- mtcars$wt^2
poly_model <- lm(mpg ~ wt + wt_squared, data = mtcars)
summary(poly_model)

# Method 2: Using I() function (cleaner)
poly_model2 <- lm(mpg ~ wt + I(wt^2), data = mtcars)
summary(poly_model2)

# Method 3: Using poly() for orthogonal polynomials
poly_model3 <- lm(mpg ~ poly(wt, 2), data = mtcars)
summary(poly_model3)
```

Method 2 is recommended for most applications as it's concise and easy to interpret.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add56):

**Interpretation**: Since the predictor is log-transformed, the interpretation is: a **1% increase in body weight** is associated with a **(15.3 / 100) = 0.153 mmHg increase** in blood pressure, on average.
This type of model (log-lin) is used when the effect of the predictor is not linear but multiplicative.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add26):

```r
logistic_model <- glm(disease ~ age + BMI + smoking, 
                      data = health_data, 
                      family = binomial(link = "logit"))
summary(logistic_model)
```

Key points:
- Use `glm()` instead of `lm()`
- Specify `family = binomial` for logistic regression
- The outcome variable `disease` should be binary (0/1, or factor with 2 levels)
- Results give log-odds; exponentiate coefficients to get odds ratios: `exp(coef(logistic_model))`
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add27):

An odds ratio of **2.5** for smoking means:

**The odds of developing the disease are 2.5 times higher for smokers compared to non-smokers**, holding all other variables constant.

More specifically:
- If OR = 2.5, smokers have 150% higher odds of disease than non-smokers
- OR > 1: positive association (increased risk)
- OR = 1: no association
- OR < 1: negative association (protective effect)

Example interpretation: If non-smokers have a 10% probability of disease, smokers might have approximately 22% probability (though exact conversion from odds to probability requires more calculation).

**Note**: Odds ratio is NOT the same as relative risk, but for rare diseases (< 10% prevalence), they are approximately equal.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add28):

The negative coefficient of **-0.05 for age** indicates:

1. **Direction**: As age increases, the log-odds of survival **decrease**
2. **Practical meaning**: Older patients have **lower probability of survival**, holding other factors constant
3. **Odds ratio**: exp(-0.05) = 0.951, meaning for each one-year increase in age, the odds of survival multiply by 0.951 (decrease by about 5%)

For a 10-year age difference: exp(-0.05 × 10) = exp(-0.5) = 0.606
A patient 10 years older has about 60.6% the odds of survival compared to a younger patient.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add29):

**Linear Regression**:
- Predicts the **actual value** of a continuous outcome variable
- Output: A number on a continuous scale
- Example: Predicting exact blood pressure (135 mmHg), salary ($45,000), temperature (98.6°F)
- Uses normal distribution

**Logistic Regression**:
- Predicts the **probability** of belonging to a category (usually binary: yes/no, 0/1)
- Output: A probability between 0 and 1, which can be converted to a category
- Example: Predicting probability of disease (0.75 = 75% chance), probability of survival, probability of clicking an ad
- Uses binomial distribution with logit link function

**Technical difference**: 
- Linear regression: E(Y) = β₀ + β₁X₁ + β₂X₂ + ...
- Logistic regression: log(P/(1-P)) = β₀ + β₁X₁ + β₂X₂ + ... (models log-odds)
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add30):

```r
data(mtcars)

# Create binary outcome variable
mtcars$high_mpg <- ifelse(mtcars$mpg > 20, 1, 0)

# Fit logistic regression model
logit_model <- glm(high_mpg ~ wt + hp, 
                   data = mtcars, 
                   family = binomial(link = "logit"))

# View results
summary(logit_model)

# Get odds ratios
exp(coef(logit_model))

# Predict probabilities for original data
mtcars$predicted_prob <- predict(logit_model, type = "response")
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add57):

```r
# First, refit the model from Exercise #add30
data(mtcars)
mtcars$high_mpg <- ifelse(mtcars$mpg > 20, 1, 0)
logit_model <- glm(high_mpg ~ wt + hp, data = mtcars, family = binomial)

# Create a new data frame for the car we want to predict
new_car <- data.frame(wt = 2.8, hp = 150)

# Predict the probability
predicted_prob <- predict(logit_model, newdata = new_car, type = "response")
print(predicted_prob)
```
The output `predicted_prob` will be a value between 0 and 1, representing the model's estimated probability that a car with these specifications has an MPG over 20.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add31):

**Poisson regression** is most appropriate for count data.

**Reasoning**:
- The outcome (number of ER visits per day) is a **count variable** (0, 1, 2, 3, ...)
- Count data is discrete and non-negative
- Poisson distribution is designed for modeling count outcomes
- It models the rate of events occurring

```r
# Example Poisson regression
poisson_model <- glm(er_visits ~ day_of_week + weather, 
                     data = hospital_data, 
                     family = poisson(link = "log"))
```

**Note**: If the variance is much larger than the mean (overdispersion), consider using **negative binomial regression** instead.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add32):

```r
poisson_model <- glm(infection_count ~ bed_occupancy_rate + nurse_staff_ratio, 
                     data = hospital_data, 
                     family = poisson(link = "log"))

summary(poisson_model)

# Check for overdispersion
library(AER)
dispersiontest(poisson_model)

# If overdispersion detected, use negative binomial:
library(MASS)
nb_model <- glm.nb(infection_count ~ bed_occupancy_rate + nurse_staff_ratio, 
                   data = hospital_data)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add33):

The primary assumption of Poisson regression is that **the mean equals the variance** (equidispersion).

Specifically:
- **E(Y) = Var(Y) = λ** (the Poisson parameter)

**In practice**:
- If Var(Y) > E(Y): **Overdispersion** - common in real data, violates assumption
  - Solution: Use negative binomial regression or quasi-Poisson
- If Var(Y) < E(Y): **Underdispersion** - less common
  - May still use Poisson or consider other models

**Other important assumptions**:
1. Outcome variable is a count
2. Observations are independent
3. Counts cannot be negative
4. The log of the mean is a linear function of predictors

**Check overdispersion**:
```r
# Deviance/df should be close to 1
model$deviance / model$df.residual
```
If ratio >> 1, overdispersion is present.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add58):

**Problem**: The ratio of residual deviance to degrees of freedom (150 / 80 = 1.875) is much greater than 1. This suggests **overdispersion**, meaning the variance of the data is larger than what the Poisson model assumes (where mean equals variance). This violates a key assumption of Poisson regression.
**Alternative Model**: A **Negative Binomial regression** is the appropriate alternative as it can handle overdispersed count data by including an extra parameter to model the variance.
```r
library(MASS)
# Fit a negative binomial model
nb_model <- glm.nb(er_visits ~ predictor1 + predictor2, data = hospital_data)
summary(nb_model)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add34):

You need to create **3 dummy variables** for a categorical variable with 4 categories.

**Rule**: For a categorical variable with k categories, create (k-1) dummy variables.

**Why**: 
- One category serves as the **reference/baseline** category
- The other k-1 categories are represented by dummy variables
- Including all k categories would cause perfect multicollinearity (dummy variable trap)

**Example for blood_type**:
```r
# R does this automatically in regression, but manual creation:
data$type_A <- ifelse(data$blood_type == "A", 1, 0)
data$type_B <- ifelse(data$blood_type == "B", 1, 0)
data$type_AB <- ifelse(data$blood_type == "AB", 1, 0)
# Type O is the reference category (all three dummies = 0)

# In regression, R handles this automatically:
model <- lm(cholesterol ~ blood_type, data = data)
# R will create the dummy variables automatically
```

If you include type O as well, the model matrix would be singular and inestimable.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add35):

```r
# R automatically creates dummy variables for factors
recovery_model <- lm(recovery_time ~ age + treatment, data = patient_data)
summary(recovery_model)

# To explicitly set the reference category:
patient_data$treatment <- factor(patient_data$treatment, 
                                  levels = c("Control", "Standard", "Experimental"))
# Now "Control" is the reference

# Alternatively, using relevel():
patient_data$treatment <- relevel(factor(patient_data$treatment), ref = "Control")

recovery_model <- lm(recovery_time ~ age + treatment, data = patient_data)
summary(recovery_model)
```

R will automatically create 2 dummy variables (treatmentStandard and treatmentExperimental) with "Control" as the reference category.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add36):

The predicted value for a patient in the Surgery ward is:

**Predicted value = 12.5 + (-2.3) = 10.2**

**Explanation**:
- The intercept (12.5) represents the predicted value for the **reference category** (General ward)
- For Surgery ward: add the Surgery coefficient (-2.3) to the intercept
- For ICU ward: you would add 4.7 to get 12.5 + 4.7 = 17.2
- For General ward (reference): just use the intercept = 12.5

**Interpretation**: Compared to the General ward (baseline), patients in Surgery have 2.3 units lower outcome (on average), and ICU patients have 4.7 units higher outcome.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add37):

```r
data(mtcars)

# The variable am is already coded as 0/1
mpg_model <- lm(mpg ~ wt + hp + am, data = mtcars)
summary(mpg_model)

# To make it more explicit:
mtcars$transmission <- factor(mtcars$am, levels = c(0, 1), 
                               labels = c("Automatic", "Manual"))
mpg_model2 <- lm(mpg ~ wt + hp + transmission, data = mtcars)
summary(mpg_model2)
```

The coefficient for `am` (or `transmissionManual`) tells you the difference in mpg between manual and automatic transmissions, holding weight and horsepower constant.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add38):

The coefficient of **5000** means:

**Males earn $5,000 more than females on average**, holding all other variables in the model constant.

More precisely:
- When gender = 1 (male), add $5,000 to the predicted salary
- When gender = 0 (female, reference), add $0
- This is the estimated gender pay gap in this model

**Example**:
If the model is: Salary = 40,000 + 5,000(gender) + other terms
- Female (gender=0): Predicted base salary = $40,000 + other factors
- Male (gender=1): Predicted base salary = $45,000 + other factors

**Important notes**:
- This is correlation, not necessarily causation
- Other factors (education, experience, etc.) should be controlled for
- The coefficient's statistical significance (p-value) determines if this difference is reliable
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add59):

**Interpretation**: The intercept of 75.2 represents the **predicted average patient satisfaction score for the reference group**. In this case, the reference group is patients for whom `has_private_room` is 0, i.e., patients **who do not have a private room**.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add39):

The four main assumptions for linear regression (LINE):

1. **Linearity**: The relationship between predictors and outcome is linear
   - Check: Residuals vs. Fitted plot should show random scatter
   
2. **Independence**: Observations are independent of each other
   - Check: Durbin-Watson test, knowledge of data collection
   - Violated by: Time series, clustered data, repeated measures

3. **Normality**: Residuals are normally distributed
   - Check: Q-Q plot, Shapiro-Wilk test, histogram of residuals
   - Most important for inference (confidence intervals, p-values)

4. **Equal variance (Homoscedasticity)**: Constant variance of residuals across all levels of predictors
   - Check: Scale-Location plot, Breusch-Pagan test
   - Residuals vs. Fitted should show constant spread

**Additional assumption often mentioned**:
5. **No multicollinearity** (for multiple regression): Predictors are not highly correlated
   - Check: VIF (Variance Inflation Factor)

```r
# Check assumptions:
plot(model)  # Produces 4 diagnostic plots
library(car)
vif(model)  # Check multicollinearity
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add40):

Using the formula for Adjusted R²:
R²adj = 1 - [(1 - R²)(n - 1)/(n - k - 1)]

Given:
- R² = 0.85
- R²adj = 0.83
- n = 100

Solving for k:
0.83 = 1 - [(1 - 0.85)(100 - 1)/(100 - k - 1)]
0.83 = 1 - [0.15 × 99/(99 - k)]
0.17 = 0.15 × 99/(99 - k)
0.17(99 - k) = 14.85
16.83 - 0.17k = 14.85
-0.17k = -1.98
k ≈ **11.6**

So approximately **11 or 12 predictors** are in the model.

**Quick approximation**: When R² and R²adj are close, you typically have relatively few predictors. The difference of 0.02 with n=100 suggests around 10-12 predictors.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add41):

**Problem identified**: **Heteroscedasticity** (non-constant variance)

A funnel shape means:
- Variance of residuals increases (or decreases) with fitted values
- Violates the assumption of homoscedasticity (equal variance)

**Potential solutions**:

1. **Transform the outcome variable**:
   ```r
   # Log transformation
   model_log <- lm(log(y) ~ x1 + x2, data = data)
   
   # Square root transformation
   model_sqrt <- lm(sqrt(y) ~ x1 + x2, data = data)
   ```

2. **Use weighted least squares (WLS)**:
   ```r
   # Weights inversely proportional to variance
   wls_model <- lm(y ~ x1 + x2, data = data, weights = 1/residuals^2)
   ```

3. **Use robust standard errors**:
   ```r
   library(sandwich)
   library(lmtest)
   coeftest(model, vcov = vcovHC(model, type = "HC1"))
   ```

4. **Add or transform predictors**: May indicate missing variable or wrong functional form

5. **Use generalized linear models (GLM)**: If outcome is count or binary

**Check after solution**:
```r
plot(fitted(new_model), residuals(new_model))
# Should show random scatter, not a pattern
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add42):

```r
data(mtcars)

# Fit the model
mpg_model <- lm(mpg ~ wt + hp, data = mtcars)

# Create diagnostic plots
par(mfrow = c(2, 2))  # Set up 2x2 plot layout
plot(mpg_model)
par(mfrow = c(1, 1))  # Reset to default

# Individual plots:
# 1. Residuals vs Fitted (checks linearity and homoscedasticity)
plot(mpg_model, which = 1)

# 2. Q-Q plot (checks normality of residuals)
plot(mpg_model, which = 2)

# 3. Scale-Location (checks homoscedasticity)
plot(mpg_model, which = 3)

# 4. Residuals vs Leverage (identifies influential points)
plot(mpg_model, which = 5)

# Additional useful diagnostics:
# Histogram of residuals
hist(residuals(mpg_model), main = "Histogram of Residuals")

# Shapiro-Wilk test for normality
shapiro.test(residuals(mpg_model))
```

**Interpretation**:
- Plot 1: Should show random scatter around zero
- Plot 2: Points should follow the diagonal line
- Plot 3: Should show horizontal line with equal spread
- Plot 4: Points outside Cook's distance indicate influential observations
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add60):

**Indication**: A Cook's distance > 1 indicates that observation #45 is a **highly influential point**. This means that its presence in the dataset has a substantial impact on the estimated regression coefficients. The model fitted with this point is likely very different from the model fitted without it.
**Next steps**:
1.  **Investigate the data point**: Check observation #45 for data entry errors or determine if it represents a truly unusual case (e.g., a patient with a rare condition). If it's an error, correct it.
2.  **Perform sensitivity analysis**: Rerun the regression model after removing observation #45. If the model's coefficients or conclusions change dramatically, you must report this sensitivity and be cautious about interpreting the original model. You might report the results of both models. Simply deleting the point without justification is generally not recommended.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add43):

Correct data collection is crucial in Big Data for several reasons:

1. **Volume doesn't equal quality**: Having more data doesn't automatically make it better. Garbage in, garbage out - if data collection is flawed, you just have more bad data, leading to confident but wrong conclusions.

2. **Bias amplification**: Systematic errors in data collection are amplified with large datasets. A small sampling bias becomes a huge problem when scaled up, potentially affecting millions of decisions.

3. **Representativeness**: Big data often comes from convenience samples (e.g., social media users, app users) that may not represent the target population. Just because you have millions of data points doesn't mean they represent everyone.

4. **Missing data patterns**: In healthcare, missing data is rarely random. If data is systematically missing for certain groups (e.g., disadvantaged populations less likely to have electronic health records), analyses will be biased no matter how much data you have.

5. **Measurement validity**: Ensuring that variables actually measure what you think they measure is critical. In healthcare, if diagnostic codes are inconsistently applied or symptoms are differently reported, analyses will be unreliable.

6. **Ethical considerations**: Poor data collection can perpetuate discrimination and inequity, especially in healthcare where decisions affect lives.

Example: A hospital with excellent electronic records for insured patients but poor documentation for uninsured patients will produce biased analyses about treatment effectiveness, potentially harming vulnerable populations.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add44):

**Structured Data**:
- Organized in a predefined format (rows and columns)
- Easily searchable and analyzable with standard statistical tools
- Stored in relational databases or spreadsheets
- **Healthcare example**: 
  - Electronic Health Records (EHRs) with fields like patient ID, age, blood pressure readings, lab test results
  - Billing codes (ICD-10 diagnosis codes)
  - Appointment dates and times

**Unstructured Data**:
- No predefined format or organization
- Not easily searchable without special tools (NLP, text mining)
- Can include text, images, audio, video
- **Healthcare example**:
  - Physician clinical notes (free text)
  - Medical imaging (X-rays, MRIs, CT scans)
  - Patient feedback and survey comments
  - Audio recordings of patient-doctor consultations

**Semi-structured data** (middle ground):
- Has some organizational properties but doesn't fit strict relational model
- Healthcare example: XML or JSON formatted health information exchange documents

**Challenge**: Most healthcare data (estimated 80%) is unstructured, requiring advanced techniques to extract value from it.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add45):

Three major sources of bias in healthcare data collection:

1. **Selection Bias / Sampling Bias**:
   - **Problem**: The sample doesn't represent the target population
   - **Examples**: 
     - Clinical trials that exclude elderly patients, pregnant women, or those with comorbidities
     - Studies recruiting only from academic medical centers (sicker, more complex patients)
     - Online health surveys that only capture tech-savvy, engaged patients
   - **Impact**: Results don't generalize to broader populations

2. **Measurement Bias / Information Bias**:
   - **Problem**: Systematic errors in how variables are measured or recorded
   - **Examples**:
     - Recall bias: Patients with disease remember exposures better than healthy patients
     - Observer bias: Researchers' expectations influence how they record observations
     - Diagnostic bias: Patients under closer surveillance more likely to have conditions detected
   - **Impact**: Distorted associations between variables

3. **Non-Response Bias / Attrition Bias**:
   - **Problem**: Systematic differences between responders and non-responders
   - **Examples**:
     - Healthier patients more likely to complete follow-up studies
     - Patients experiencing side effects drop out of clinical trials
     - Lower response rates in disadvantaged communities
   - **Impact**: Results don't reflect the full population, often overestimating positive outcomes

**Other important biases**:
- **Confounding bias**: Third variables influence both exposure and outcome
- **Survival bias**: Only analyzing survivors excludes those who died
- **Temporal bias**: Changes in diagnostic criteria or treatment over time
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add46):

This introduces **non-response bias** (also called self-selection bias).

**Why it's problematic**:

1. **Voluntary participation**: Only motivated patients respond
   - Very satisfied patients may be more likely to respond (positive bias)
   - Very dissatisfied patients may be more likely to respond (negative bias)
   - The "moderately satisfied" majority may not participate

2. **Digital divide**: 
   - Excludes patients without internet access (often elderly, low-income, less educated)
   - These groups may have different satisfaction levels
   - Typically underrepresents vulnerable populations

3. **Health status**: 
   - Sicker patients in hospital may not complete surveys
   - Healthier, discharged patients more likely to respond
   - Creates systematic difference between responders and non-responders

4. **Timing**: Only captures patients actively seeking care, missing those who avoid the hospital due to poor past experiences

**Consequence**: The survey results will not accurately reflect true patient satisfaction across all patient groups. Conclusions drawn will be biased and policy decisions based on this data could be misguided.

**Better approach**: 
- Random sampling of all patients
- Multiple contact methods (phone, mail, in-person)
- Follow-up with non-responders
- Weight responses to match population demographics
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add47):

```r
# Set seed for reproducibility
set.seed(123)

# Create simulated dataset
simulated_data <- data.frame(
  patient_id = 1:100,
  age = rnorm(100, mean = 50, sd = 15),
  treatment = sample(c("A", "B"), size = 100, replace = TRUE),
  outcome = rnorm(100, mean = 100, sd = 20)
)

# View first few rows
head(simulated_data)

# Check structure
str(simulated_data)

# Summary statistics
summary(simulated_data)
```

**Alternative with more control**:
```r
set.seed(456)

# Ensure exactly 50 patients in each treatment group
simulated_data2 <- data.frame(
  patient_id = 1:100,
  age = rnorm(100, mean = 50, sd = 15),
  treatment = rep(c("A", "B"), each = 50),
  outcome = rnorm(100, mean = 100, sd = 20)
)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add48):

```r
# Using the simulated_data from previous exercise
set.seed(123)
simulated_data <- data.frame(
  patient_id = 1:100,
  age = rnorm(100, mean = 50, sd = 15),
  treatment = sample(c("A", "B"), size = 100, replace = TRUE),
  outcome = rnorm(100, mean = 100, sd = 20)
)

# 1. Calculate mean age for each treatment group
library(dplyr)
age_by_treatment <- simulated_data %>%
  group_by(treatment) %>%
  summarise(
    mean_age = mean(age),
    sd_age = sd(age),
    n = n()
  )
print(age_by_treatment)

# Base R alternative:
aggregate(age ~ treatment, data = simulated_data, FUN = mean)

# 2. Test if there's significant difference in outcome between treatments
outcome_test <- t.test(outcome ~ treatment, data = simulated_data)
print(outcome_test)

# 3. Create linear model predicting outcome from age and treatment
outcome_model <- lm(outcome ~ age + treatment, data = simulated_data)
summary(outcome_model)

# Additional useful analyses:
# Check assumptions
par(mfrow = c(2, 2))
plot(outcome_model)

# Get confidence intervals
confint(outcome_model)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add49):

```r
# Load necessary packages
library(dplyr)

# Load iris dataset
data(iris)

# 1. Filter only setosa and versicolor species
iris_filtered <- iris %>%
  filter(Species %in% c("setosa", "versicolor"))

# Alternative base R:
iris_filtered <- iris[iris$Species %in% c("setosa", "versicolor"), ]

# Create binary outcome (0/1)
iris_filtered$species_binary <- ifelse(iris_filtered$Species == "versicolor", 1, 0)

# 2. Fit logistic regression model
logit_model <- glm(species_binary ~ Sepal.Length + Petal.Length, 
                   data = iris_filtered, 
                   family = binomial(link = "logit"))

# 3. Report coefficients
summary(logit_model)
coef(logit_model)

# Get odds ratios
exp(coef(logit_model))

# Predictions
iris_filtered$predicted_prob <- predict(logit_model, type = "response")
iris_filtered$predicted_species <- ifelse(iris_filtered$predicted_prob > 0.5, 
                                           "versicolor", "setosa")

# Confusion matrix
table(Predicted = iris_filtered$predicted_species, 
      Actual = iris_filtered$Species)
```

**Interpretation**: The model will likely show that Petal.Length is a very strong predictor (high coefficient) for distinguishing between setosa and versicolor.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add50):

**Complete Analytical Workflow**:

**1. Data Cleaning & Preparation (Exploratory Phase)**
```r
# Load and inspect data
summary(pharma_data)
str(pharma_data)

# Check for missing values
sum(is.na(pharma_data))
library(naniar)
vis_miss(pharma_data)

# Handle missing data
# - Document patterns of missingness
# - Decide on imputation vs. deletion
# - Use multiple imputation if appropriate

# Check for outliers
boxplot(pharma_data[, c("age", "BMI", "blood_pressure")])

# Create derived variables if needed
pharma_data$age_group <- cut(pharma_data$age, breaks = c(0, 40, 60, 100))
```

**2. Descriptive Statistics & Initial Exploration**
```r
# Demographics summary
table(pharma_data$gender, pharma_data$treatment)

# Baseline characteristics by treatment group
pharma_data %>%
  group_by(treatment) %>%
  summarise(
    mean_age = mean(age),
    mean_BP = mean(blood_pressure),
    mean_cholesterol = mean(cholesterol)
  )

# Check randomization success
t.test(age ~ treatment, data = pharma_data)
t.test(BMI ~ treatment, data = pharma_data)
```

**3. Primary Analysis - Treatment Effect**
```r
# Crude comparison of outcome
prop.table(table(pharma_data$treatment, pharma_data$improved), 1)

# Chi-square test
chisq.test(pharma_data$treatment, pharma_data$improved)

# Logistic regression - unadjusted
model_crude <- glm(improved ~ treatment, 
                   data = pharma_data, 
                   family = binomial)
summary(model_crude)
```

**4. Adjusted Analysis - Control for Confounders**
```r
# Multivariable logistic regression
model_adjusted <- glm(improved ~ treatment + age + gender + BMI + 
                                 blood_pressure + cholesterol + glucose, 
                     data = pharma_data, 
                     family = binomial)
summary(model_adjusted)

# Check for multicollinearity
library(car)
vif(model_adjusted)

# Model selection if needed
model_final <- step(model_adjusted, direction = "backward")
```

**5. Subgroup Analyses**
```r
# Test for interaction with gender
model_interaction <- glm(improved ~ treatment * gender + age + BMI, 
                         data = pharma_data, 
                         family = binomial)

# Stratified analyses
# By age group
pharma_data %>%
  filter(age_group == "young") %>%
  glm(improved ~ treatment, data = ., family = binomial) %>%
  summary()
```

**6. Model Diagnostics**
```r
# Check assumptions
plot(model_final)

# Assess model fit
library(ResourceSelection)
hoslem.test(model_final$y, fitted(model_final))

# Calculate AUC
library(pROC)
roc_curve <- roc(pharma_data$improved, 
                 fitted(model_final))
auc(roc_curve)
plot(roc_curve)
```

**7. Sensitivity Analyses**
```r
# Complete case vs. multiple imputation
# Different model specifications
# Exclude influential outliers
# Alternative statistical methods
```

**8. Results Interpretation & Reporting**
```r
# Calculate odds ratios with 95% CI
exp(cbind(OR = coef(model_final), confint(model_final)))

# Number needed to treat (NNT)
# Predicted probabilities for typical patients
# Clinical significance vs. statistical significance
```

**Key Analyses to Perform**:
1. ✓ Descriptive statistics (demographics, baseline characteristics)
2. ✓ Balance check (treatment groups comparable at baseline?)
3. ✓ Crude association (treatment vs. outcome)
4. ✓ Adjusted association (control for confounders)
5. ✓ Interaction testing (effect modification)
6. ✓ Subgroup analyses
7. ✓ Model diagnostics and validation
8. ✓ Sensitivity analyses

**Final Deliverables**:
- Table 1: Baseline characteristics by treatment group
- Table 2: Crude and adjusted odds ratios
- Figure 1: Forest plot of effect estimates
- Figure 2: ROC curve
- Supplementary: Sensitivity analyses results
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add61):

```r
# Load necessary libraries
library(caTools)
library(pROC)
# Create a sample dataset for demonstration
set.seed(42)
stroke_data <- data.frame(
  age = rnorm(500, 65, 10),
  hypertension = sample(0:1, 500, replace = TRUE, prob = c(0.7, 0.3)),
  heart_disease = sample(0:1, 500, replace = TRUE, prob = c(0.8, 0.2)),
  avg_glucose_level = rnorm(500, 110, 30),
  stroke = sample(0:1, 500, replace = TRUE, prob = c(0.9, 0.1))
)

# 1. Split data into training and testing sets (75% train, 25% test)
set.seed(123)
split <- sample.split(stroke_data$stroke, SplitRatio = 0.75)
train_data <- subset(stroke_data, split == TRUE)
test_data <- subset(stroke_data, split == FALSE)

# 2. Fit the logistic regression model on training data
stroke_model <- glm(stroke ~ age + hypertension + heart_disease + avg_glucose_level,
                    data = train_data,
                    family = "binomial")
summary(stroke_model)

# 3. Evaluate model performance on testing data
# Predict probabilities on the test set
test_probs <- predict(stroke_model, newdata = test_data, type = "response")

# Convert probabilities to class predictions (0 or 1) using a 0.5 threshold
test_preds <- ifelse(test_probs > 0.5, 1, 0)

# Create the confusion matrix
conf_matrix <- table(Predicted = test_preds, Actual = test_data$stroke)
print("Confusion Matrix:")
print(conf_matrix)

# Calculate accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste("Accuracy:", accuracy))

# Calculate AUC
roc_obj <- roc(test_data$stroke, test_probs)
print("AUC (Area Under Curve):")
print(auc(roc_obj))

# Plot ROC curve
plot(roc_obj, main="ROC Curve", print.auc=TRUE)
```
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add51):

```r
library(dplyr)
# Create a sample dataset
set.seed(123)
patients <- data.frame(
  patient_id = 1:1000,
  age = sample(40:90, 1000, replace = TRUE),
  sex = sample(c("Male", "Female"), 1000, replace = TRUE),
  diagnosis_code = sample(paste0("D", 1:5), 1000, replace = TRUE),
  hospital_stay_days = rpois(1000, 8)
)

# Analysis pipeline
summary_stats <- patients %>%
  filter(sex == "Male", age > 65) %>%
  group_by(diagnosis_code) %>%
  summarise(
    patient_count = n(),
    avg_stay = mean(hospital_stay_days, na.rm = TRUE)
  ) %>%
  filter(patient_count > 10) %>%
  arrange(desc(avg_stay))

print(summary_stats)
```
This pipeline first filters the data for the specific patient group, then groups by diagnosis, calculates the required summaries, filters for groups with sufficient size, and finally arranges the output for clarity.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add52):

```r
# One-sample t-test to see if the mean reduction is less than 10 mmHg
# H0: mu = 10 (mean reduction is 10)
# Ha: mu < 10 (mean reduction is less than 10)
t_test_result <- t.test(rnorm(40, 8.5, 10), mu = 10, alternative = "less")
print(t_test_result)
```
**Interpretation**: The null hypothesis (H0) is that the true mean reduction is 10 mmHg. The alternative hypothesis (Ha) is that the mean reduction is less than 10 mmHg. If the resulting p-value is small (e.g., < 0.05), we reject H0. This would provide statistical evidence that the drug's average effect is indeed below the clinically significant threshold of 10 mmHg. If the p-value is large, we fail to reject H0, meaning we don't have enough evidence to conclude the drug is insufficiently effective.
:::

::: {.answer data-latex=""}
**Answer to Exercise** \@ref(exr:add6):

```r
# Proportion test
prop.test(x = 140, n = 200, p = 0.75, alternative = "two.sided")
```

The null hypothesis is H0: p = 0.75. The sample proportion is 140/200 = 0.70 (70%).
:::

