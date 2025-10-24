# 📝 Intermediate Exam Simulation - Healthcare Management {#exam-sim-intermediate}

This is a comprehensive simulation of the intermediate exam covering all major statistical topics applied to healthcare management scenarios. Complete all 20 questions to test your knowledge and prepare for the actual exam.

**Instructions**: Answer all questions carefully. Solutions are provided at the end of this chapter.

---

## 🏥 Question 1: Data Wrangling - Reshaping Data

::: {.exercise #exam1}
You have a `patient_data` dataframe with columns: `patient_id`, `emergency_visits`, and `outpatient_visits`. Reshape the data into a "long" format with three columns: `patient_id`, `visit_type` (containing "emergency_visits" or "outpatient_visits"), and `visit_count`. Write the R command using the tidyr package.

**Sample data:**
```r
set.seed(123)
patient_data <- data.frame(
  patient_id = 1:10,
  emergency_visits = rpois(10, 2),
  outpatient_visits = rpois(10, 5)
)
```
:::

---

## 🏥 Question 2: Data Wrangling - Complex Filtering

::: {.exercise #exam2}
From a `patient_satisfaction` dataset with columns `patient_id`, `department` (e.g., "Cardiology", "Orthopedics", "Emergency"), `satisfaction_score`, and `treatment_cost`, write a dplyr pipeline to create a summary table showing the number of patients, mean satisfaction score, and total treatment cost for each department. Show only departments with more than 50 patients AND mean satisfaction above 4.0.

**Sample data:**
```r
set.seed(456)
patient_satisfaction <- data.frame(
  patient_id = 1:200,
  department = sample(c("Cardiology", "Orthopedics", "Emergency", "Pediatrics", "Surgery"), 200, replace = TRUE),
  satisfaction_score = sample(1:5, 200, replace = TRUE, prob = c(0.1, 0.1, 0.2, 0.3, 0.3)),
  treatment_cost = rnorm(200, 5000, 1500)
)
```
:::

---

## 🏥 Question 3: Data Wrangling - Advanced Calculations

::: {.exercise #exam3}
A hospital needs to calculate physician bonuses based on performance. Given a `physician_data` dataframe with columns `physician_id`, `patient_satisfaction_score`, `years_experience`, and `specialty`, create a new column `bonus_amount` that calculates 2% of satisfaction score per year of experience, with a maximum bonus of 8000 and a minimum bonus of 1000 for physicians with less than 3 years experience. Additionally, add a 15% specialty bonus for physicians in "Emergency Medicine" due to higher risk. Write the complete dplyr pipeline.

**Sample data:**
```r
set.seed(789)
physician_data <- data.frame(
  physician_id = 1:100,
  patient_satisfaction_score = rnorm(100, 85, 10),
  years_experience = sample(1:20, 100, replace = TRUE),
  specialty = sample(c("Emergency Medicine", "Cardiology", "Orthopedics", "Pediatrics"), 100, replace = TRUE)
)
```
:::

---

## 🏥 Question 4: Data Wrangling - Complex Reshaping

::: {.exercise #exam4}
From a `patient_monitoring` dataset with columns `patient_id`, `measurement_date`, `pain_level`, `mobility_score`, and `measurement_time` (with values "morning" or "evening"), filter to include only patients who have taken both types of measurements, and calculate the difference in their pain levels between these two measurement times. Also calculate the correlation between morning and evening pain levels. Write the complete dplyr pipeline.

**Sample data:**
```r
set.seed(321)
patient_monitoring <- data.frame(
  patient_id = rep(1:50, each = 2),
  measurement_date = rep(seq.Date(as.Date("2024-01-01"), by = "day", length.out = 50), each = 2),
  measurement_time = rep(c("morning", "evening"), 50),
  pain_level = rnorm(100, 5, 1.5),
  mobility_score = rnorm(100, 7, 1.2)
)
```
:::

---

## 🏥 Question 5: Data Wrangling - Advanced Grouping

::: {.exercise #exam5}
You have hospital performance data in long format. The `hospital_performance` dataframe contains `hospital_id`, `quarter` (with values "Q1", "Q2", "Q3", "Q4"), `patient_volume`, and `region`. Reshape this data into wide format so that each hospital has one row with separate columns for each quarter (`volume_Q1`, `volume_Q2`, `volume_Q3`, `volume_Q4`). Then calculate the quarterly growth rate for each hospital (Q4 vs Q1). Write the complete pipeline.

**Sample data:**
```r
set.seed(654)
hospital_performance <- data.frame(
  hospital_id = rep(1:30, each = 4),
  quarter = rep(c("Q1", "Q2", "Q3", "Q4"), 30),
  patient_volume = rnorm(120, 1000, 200),
  region = rep(sample(c("North", "South", "East", "West"), 30, replace = TRUE), each = 4)
)
```
:::

---

## 🔬 Question 6: Hypothesis Testing - Single Population

::: {.exercise #exam6}
A hospital claims that their new patient management system reduces average waiting time by 15 minutes. In a pilot study with 45 patients, the mean reduction was 18 minutes with a standard deviation of 6 minutes. Test at α = 0.05 if the actual reduction is significantly greater than the claimed 15 minutes. Write the R command and interpret the results.

**Sample data:**
```r
set.seed(123)
waiting_time_reduction <- rnorm(45, mean = 18, sd = 6)
```
:::

---

## 🔬 Question 7: Hypothesis Testing - Proportions

::: {.exercise #exam7}
A hospital claims that 35% of patients are satisfied with their emergency department experience. In a sample of 400 patients, only 120 reported satisfaction. Write the R command to test if the true satisfaction rate is significantly lower than 35%. Calculate the 95% confidence interval for the true proportion and interpret both results.
:::

---

## 🔬 Question 8: Hypothesis Testing - Two Populations

::: {.exercise #exam8}
A hospital is testing a new training program for nurses. The same 25 nurses took a patient safety competency test before and after the training. Test if the training program significantly improved the test scores. Write the appropriate R command and state whether this should be a paired or unpaired test.

**Sample data:**
```r
set.seed(456)
nurse_data <- data.frame(
  nurse_id = 1:25,
  before = rnorm(25, 72, 5),
  after = rnorm(25, 78, 5)
)
```
:::

---

## 🔬 Question 9: Hypothesis Testing - Two Proportions

::: {.exercise #exam9}
Two hospitals are comparing their patient satisfaction rates. Hospital A reports that 180 out of 250 patients (72%) were satisfied, while Hospital B reports that 210 out of 280 patients (75%) were satisfied. Write the R command to test if there is a significant difference in satisfaction rates between the two hospitals. Calculate the effect size and interpret the results.
:::

---

## 🔬 Question 10: Hypothesis Testing - Advanced Concepts

::: {.exercise #exam10}
A study compares the patient satisfaction scores between two different hospital wards. Before running a t-test, you perform a Levene's test for equality of variances and get a p-value of 0.02. Which type of two-sample t-test should you use and why? Write the R command for the appropriate t-test, assuming you have a `patient_satisfaction` dataframe with `score` and `ward` columns.

**Sample data:**
```r
set.seed(789)
patient_satisfaction <- data.frame(
  score = c(rnorm(30, 4.2, 0.8), rnorm(35, 4.0, 1.2)),
  ward = rep(c("Ward_A", "Ward_B"), c(30, 35))
)
```
:::

---

## 📊 Question 11: ANOVA - Basic Analysis

::: {.exercise #exam11}
A clinical trial tests three different pain management protocols (Protocol A, Protocol B, Protocol C) on different patients. The pain reduction scores are stored in a variable called `pain_reduction` and the treatment group is stored in `protocol` in a dataframe called `pain_study`. Write the R command to perform ANOVA and display the results. Also test the assumptions.

**Sample data:**
```r
set.seed(321)
pain_study <- data.frame(
  pain_reduction = c(rnorm(20, 6.5, 1.2), rnorm(20, 7.2, 1.5), rnorm(20, 5.8, 1.0)),
  protocol = rep(c("Protocol_A", "Protocol_B", "Protocol_C"), each = 20)
)
```
:::

---

## 📊 Question 12: ANOVA - Post-hoc Analysis

::: {.exercise #exam12}
After performing ANOVA and finding a significant result (p = 0.003), you want to perform post-hoc pairwise comparisons to identify which specific protocols differ. Your ANOVA model is stored in the variable `anova_model`. Write the R command to perform Tukey's Honest Significant Difference (HSD) test and interpret the results.

**Sample ANOVA output:**
```
            Df Sum Sq Mean Sq F value Pr(>F)  
protocol     2  245.6   122.8   5.234 0.003 **
Residuals   57 1337.2    23.5                 
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```
:::

---

## 📊 Question 13: ANOVA - Assumptions Testing

::: {.exercise #exam13}
Before conducting ANOVA, you want to test the homogeneity of variances assumption using Levene's test. Your data is in a dataframe called `patient_data` with a continuous variable `recovery_time` and a grouping variable `hospital`. Write the R command using the car package. Also test for normality of residuals and interpret both results.

**Sample data:**
```r
set.seed(654)
patient_data <- data.frame(
  recovery_time = c(rnorm(25, 10, 2), rnorm(25, 12, 3), rnorm(25, 8, 1.5)),
  hospital = rep(c("Hospital_A", "Hospital_B", "Hospital_C"), each = 25)
)
```
:::

---

## 📈 Question 14: Linear Regression - Multiple Regression

::: {.exercise #exam14}
You have a `patient_data` dataframe with variables `length_of_stay` (dependent variable), `age`, `BMI`, and `comorbidity_count` (independent variables). Write the R command to fit a multiple linear regression model, check for multicollinearity using VIF, and display the summary. Interpret the results.

**Sample data:**
```r
set.seed(987)
patient_data <- data.frame(
  age = rnorm(100, 65, 15),
  BMI = rnorm(100, 28, 5),
  comorbidity_count = sample(0:5, 100, replace = TRUE),
  length_of_stay = 5 + 0.05 * age + 0.2 * BMI + 1.5 * comorbidity_count + rnorm(100, 0, 2)
)
```
:::

---

## 📈 Question 15: Linear Regression - Model Diagnostics

::: {.exercise #exam15}
You have fitted a linear regression model stored in `model` and want to check the model assumptions (linearity, normality of residuals, homoscedasticity) using diagnostic plots. Write the R command to display the diagnostic plots and explain what each plot tells you about the model assumptions.

**Sample model:**
```r
set.seed(123)
data <- data.frame(
  age = rnorm(100),
  bmi = rnorm(100),
  los = 5 + 0.1 * age + 0.3 * bmi + rnorm(100, 0, 1)
)
model <- lm(los ~ age + bmi, data = data)
```
:::

---

## 📈 Question 16: Linear Regression - Prediction and Confidence Intervals

::: {.exercise #exam16}
Using the regression model from Question 15, predict the length of stay for a new patient with age = 70 and BMI = 30. Calculate both the prediction interval and confidence interval. Write the R commands and explain the difference between these two intervals.

**Sample model:**
```r
# Using the model from Question 15
new_patient <- data.frame(age = 70, bmi = 30)
```
:::

---

## 🎯 Question 17: Logistic Regression - Model Fitting

::: {.exercise #exam17}
You want to predict the probability of hospital readmission (binary variable: 1=readmitted, 0=not readmitted) based on age, diabetes status, and length of stay. The data is in `patient_data`. Write the R command to fit a logistic regression model, calculate odds ratios, and interpret the results.

**Sample data:**
```r
set.seed(456)
patient_data <- data.frame(
  age = rnorm(200, 65, 15),
  diabetes_status = sample(0:1, 200, replace = TRUE),
  length_of_stay = rnorm(200, 7, 3),
  readmission = sample(0:1, 200, replace = TRUE, prob = c(0.8, 0.2))
)
```
:::

---

## 🎯 Question 18: Logistic Regression - Prediction and Interpretation

::: {.exercise #exam18}
Using the logistic regression model from Question 17, predict the probability of readmission for a 75-year-old patient with diabetes and a 10-day length of stay. Also calculate the odds ratio for diabetes status and interpret what it means in practical terms.

**Sample model:**
```r
# Using the model from Question 17
new_patient <- data.frame(age = 75, diabetes_status = 1, length_of_stay = 10)
```
:::

---

## 🏷️ Question 19: Dummy Variables - Categorical Regression

::: {.exercise #exam19}
You have a `clinical_data` dataframe with `recovery_time` (continuous), `age` (continuous), and `treatment_type` (categorical: A, B, C). Write the R command to fit a linear regression model including `treatment_type` as a factor. Set treatment A as the reference category and interpret the coefficients.

**Sample data:**
```r
set.seed(789)
clinical_data <- data.frame(
  age = rnorm(90, 65, 10),
  treatment_type = rep(c("A", "B", "C"), each = 30),
  recovery_time = c(rnorm(30, 15, 3), rnorm(30, 12, 2.5), rnorm(30, 18, 4))
)
```
:::

---

## 🏷️ Question 20: Dummy Variables - Interaction Effects

::: {.exercise #exam20}
You want to test if the effect of age on `patient_satisfaction` differs between patients with and without chronic conditions. Write the R command to fit a regression model that includes an interaction term between age (continuous) and chronic_condition (binary dummy variable). Interpret the interaction coefficient if it is significant.

**Sample data:**
```r
set.seed(321)
patient_data <- data.frame(
  age = rnorm(150, 55, 12),
  chronic_condition = sample(0:1, 150, replace = TRUE),
  patient_satisfaction = 7 + 0.02 * age + 0.5 * chronic_condition + 
                         0.01 * age * chronic_condition + rnorm(150, 0, 1)
)
```
:::

---

## ✅ SOLUTIONS

::: {.answer data-latex=""}
**Answer to Question 1:**

```r
library(tidyr)
library(dplyr)

# Create sample data
set.seed(123)
patient_data <- data.frame(
  patient_id = 1:10,
  emergency_visits = rpois(10, 2),
  outpatient_visits = rpois(10, 5)
)

# Reshape to long format
patient_data_long <- patient_data %>%
  pivot_longer(
    cols = c(emergency_visits, outpatient_visits), 
    names_to = "visit_type", 
    values_to = "visit_count"
  )

print(patient_data_long)
```

**Explanation**: The `pivot_longer()` function transforms the wide format (separate columns for emergency_visits and outpatient_visits) into long format (single visit_count column with visit_type indicating the source).
:::

::: {.answer data-latex=""}
**Answer to Question 2:**

```r
library(dplyr)

# Create sample data
set.seed(456)
patient_satisfaction <- data.frame(
  patient_id = 1:200,
  department = sample(c("Cardiology", "Orthopedics", "Emergency", "Pediatrics", "Surgery"), 200, replace = TRUE),
  satisfaction_score = sample(1:5, 200, replace = TRUE, prob = c(0.1, 0.1, 0.2, 0.3, 0.3)),
  treatment_cost = rnorm(200, 5000, 1500)
)

# Solution
result <- patient_satisfaction %>%
  group_by(department) %>%
  summarise(
    n_patients = n(),
    mean_satisfaction = mean(satisfaction_score, na.rm = TRUE),
    total_cost = sum(treatment_cost, na.rm = TRUE)
  ) %>%
  filter(n_patients > 50 & mean_satisfaction > 4.0)

print(result)
```

**Explanation**: The pipeline groups by department, calculates summary statistics, then filters for departments with more than 50 patients AND mean satisfaction above 4.0.
:::

::: {.answer data-latex=""}
**Answer to Question 3:**

```r
library(dplyr)

# Create sample data
set.seed(789)
physician_data <- data.frame(
  physician_id = 1:100,
  patient_satisfaction_score = rnorm(100, 85, 10),
  years_experience = sample(1:20, 100, replace = TRUE),
  specialty = sample(c("Emergency Medicine", "Cardiology", "Orthopedics", "Pediatrics"), 100, replace = TRUE)
)

# Solution
physician_data <- physician_data %>%
  mutate(
    # Base bonus calculation
    bonus_amount = pmin(patient_satisfaction_score * 0.02 * years_experience, 8000),
    # Minimum bonus for physicians with < 3 years experience
    bonus_amount = ifelse(years_experience < 3, pmax(bonus_amount, 1000), bonus_amount),
    # Specialty bonus for Emergency Medicine
    bonus_amount = ifelse(specialty == "Emergency Medicine", bonus_amount * 1.15, bonus_amount)
  )

head(physician_data)
```

**Explanation**: The solution uses `pmin()` for maximum cap, `pmax()` for minimum bonus, and conditional logic for specialty bonuses. Emergency Medicine physicians get a 15% bonus on top of the calculated amount due to higher risk.
:::

::: {.answer data-latex=""}
**Answer to Question 4:**

```r
library(dplyr)
library(tidyr)

# Create sample data
set.seed(321)
patient_monitoring <- data.frame(
  patient_id = rep(1:50, each = 2),
  measurement_date = rep(seq.Date(as.Date("2024-01-01"), by = "day", length.out = 50), each = 2),
  measurement_time = rep(c("morning", "evening"), 50),
  pain_level = rnorm(100, 5, 1.5),
  mobility_score = rnorm(100, 7, 1.2)
)

# Solution
pain_analysis <- patient_monitoring %>%
  group_by(patient_id) %>%
  filter(n_distinct(measurement_time) == 2) %>%
  select(patient_id, measurement_time, pain_level) %>%
  pivot_wider(
    names_from = measurement_time,
    values_from = pain_level
  ) %>%
  mutate(pain_diff = morning - evening)

# Calculate correlation
correlation <- cor(pain_analysis$morning, pain_analysis$evening, use = "complete.obs")

print(pain_analysis)
print(paste("Correlation between morning and evening pain levels:", round(correlation, 3)))
```

**Explanation**: The solution filters for patients with both measurement times, reshapes to wide format, calculates the difference, and computes the correlation between morning and evening pain levels.
:::

::: {.answer data-latex=""}
**Answer to Question 5:**

```r
library(dplyr)
library(tidyr)

# Create sample data
set.seed(654)
performance_data <- data.frame(
  employee_id = rep(1:30, each = 4),
  quarter = rep(c("Q1", "Q2", "Q3", "Q4"), 30),
  sales_amount = rnorm(120, 10000, 2000),
  region = rep(sample(c("North", "South", "East", "West"), 30, replace = TRUE), each = 4)
)

# Solution
performance_wide <- performance_data %>%
  pivot_wider(
    names_from = quarter,
    values_from = sales_amount,
    names_prefix = "sales_"
  ) %>%
  mutate(
    quarterly_growth_rate = (sales_Q4 - sales_Q1) / sales_Q1 * 100
  )

head(performance_wide)
```

**Explanation**: The solution reshapes the data to wide format with separate columns for each quarter, then calculates the growth rate from Q1 to Q4 as a percentage.
:::

::: {.answer data-latex=""}
**Answer to Question 6:**

```r
# Create sample data
set.seed(123)
waiting_time_reduction <- rnorm(45, mean = 18, sd = 6)

# One-sample t-test (one-sided)
test_result <- t.test(waiting_time_reduction, mu = 15, alternative = "greater")
print(test_result)

# Interpretation
if(test_result$p.value < 0.05) {
  cat("Reject H0: The new system produces significantly greater reduction than claimed (p =", 
      round(test_result$p.value, 4), ")\n")
} else {
  cat("Fail to reject H0: No significant evidence of greater reduction (p =", 
      round(test_result$p.value, 4), ")\n")
}
```

**Explanation**: This is a one-sided test because we're testing if the reduction is significantly greater than 15 minutes. The test compares the sample mean to the hypothesized population mean.
:::

::: {.answer data-latex=""}
**Answer to Question 7:**

```r
# Proportion test
prop_test <- prop.test(120, 400, p = 0.35, alternative = "less")
print(prop_test)

# Confidence interval
ci_test <- prop.test(120, 400, conf.level = 0.95)
print(ci_test)

# Interpretation
cat("Sample proportion:", round(120/400, 3), "\n")
cat("95% CI for true proportion: [", round(ci_test$conf.int[1], 3), ",", 
    round(ci_test$conf.int[2], 3), "]\n")

if(prop_test$p.value < 0.05) {
  cat("Reject H0: Click-through rate is significantly lower than 35% (p =", 
      round(prop_test$p.value, 4), ")\n")
}
```

**Explanation**: The test shows if the observed proportion (30%) is significantly lower than the claimed 35%. The confidence interval provides a range of plausible values for the true proportion.
:::

::: {.answer data-latex=""}
**Answer to Question 8:**

```r
# Create sample data
set.seed(456)
nurse_data <- data.frame(
  nurse_id = 1:25,
  before = rnorm(25, 72, 5),
  after = rnorm(25, 78, 5)
)

# Paired t-test
test_result <- t.test(nurse_data$after, nurse_data$before, 
                     paired = TRUE, alternative = "greater")
print(test_result)

# Interpretation
cat("This should be a PAIRED test because the same nurses are measured before and after training.\n")
cat("Mean improvement:", round(mean(nurse_data$after - nurse_data$before), 2), "points\n")

if(test_result$p.value < 0.05) {
  cat("Reject H0: Training significantly improved scores (p =", 
      round(test_result$p.value, 4), ")\n")
}
```

**Explanation**: This is a paired test because we're comparing the same subjects (nurses) before and after treatment. The test examines if there's a significant improvement in scores.
:::

::: {.answer data-latex=""}
**Answer to Question 9:**

```r
# Two-sample proportion test
prop_test <- prop.test(x = c(180, 210), n = c(250, 280), alternative = "two.sided")
print(prop_test)

# Calculate effect size (Cohen's h)
p1 <- 180/250
p2 <- 210/280
cohens_h <- 2 * (asin(sqrt(p1)) - asin(sqrt(p2)))
cat("Cohen's h (effect size):", round(cohens_h, 3), "\n")

# Interpretation
cat("Hospital A satisfaction rate:", round(p1, 3), "\n")
cat("Hospital B satisfaction rate:", round(p2, 3), "\n")

if(prop_test$p.value < 0.05) {
  cat("Reject H0: Significant difference in satisfaction rates (p =", 
      round(prop_test$p.value, 4), ")\n")
} else {
  cat("Fail to reject H0: No significant difference (p =", 
      round(prop_test$p.value, 4), ")\n")
}
```

**Explanation**: The test compares two independent proportions. Cohen's h measures the effect size, where values around 0.2, 0.5, and 0.8 represent small, medium, and large effects respectively.
:::

::: {.answer data-latex=""}
**Answer to Question 10:**

```r
library(car)

# Create sample data
set.seed(789)
cholesterol_data <- data.frame(
  level = c(rnorm(30, 200, 15), rnorm(35, 195, 25)),
  clinic = rep(c("Clinic_A", "Clinic_B"), c(30, 35))
)

# Levene's test
levene_test <- leveneTest(level ~ clinic, data = cholesterol_data)
print(levene_test)

# Appropriate t-test (Welch's t-test - default in R)
t_test <- t.test(level ~ clinic, data = cholesterol_data)
print(t_test)

# Interpretation
cat("Levene's test p-value:", round(levene_test$`Pr(>F)`[1], 4), "\n")
cat("Since p < 0.05, variances are significantly different.\n")
cat("Use Welch's t-test (default) which doesn't assume equal variances.\n")
```

**Explanation**: When Levene's test shows unequal variances (p < 0.05), use Welch's t-test instead of the standard two-sample t-test. Welch's test adjusts for unequal variances.
:::

::: {.answer data-latex=""}
**Answer to Question 11:**

```r
# Create sample data
set.seed(321)
clinical_data <- data.frame(
  blood_pressure = c(rnorm(20, 140, 10), rnorm(20, 135, 12), rnorm(20, 130, 8)),
  treatment_group = rep(c("Drug_A", "Drug_B", "Drug_C"), each = 20)
)

# ANOVA
anova_result <- aov(blood_pressure ~ treatment_group, data = clinical_data)
summary(anova_result)

# Test assumptions
library(car)

# Normality of residuals
shapiro_test <- shapiro.test(residuals(anova_result))
cat("Shapiro-Wilk test for normality p-value:", round(shapiro_test$p.value, 4), "\n")

# Homogeneity of variances
levene_test <- leveneTest(blood_pressure ~ treatment_group, data = clinical_data)
cat("Levene's test p-value:", round(levene_test$`Pr(>F)`[1], 4), "\n")

# Interpretation
if(summary(anova_result)[[1]][["Pr(>F)"]][1] < 0.05) {
  cat("Reject H0: Significant differences among treatment groups\n")
} else {
  cat("Fail to reject H0: No significant differences among groups\n")
}
```

**Explanation**: ANOVA tests if there are significant differences among group means. The assumptions (normality and equal variances) should be checked before interpreting results.
:::

::: {.answer data-latex=""}
**Answer to Question 12:**

```r
# Assuming anova_model is already fitted
# Tukey's HSD test
tukey_result <- TukeyHSD(anova_model)
print(tukey_result)

# Plot the results
plot(tukey_result)

# Interpretation
cat("Tukey HSD identifies which specific groups differ significantly.\n")
cat("Look for p-values < 0.05 in the 'p adj' column.\n")
cat("The 'diff' column shows the difference in means between groups.\n")
```

**Explanation**: Tukey's HSD test performs pairwise comparisons while controlling the family-wise error rate. Significant differences are indicated by p-values < 0.05 in the adjusted p-value column.
:::

::: {.answer data-latex=""}
**Answer to Question 13:**

```r
library(car)

# Create sample data
set.seed(654)
patient_data <- data.frame(
  recovery_time = c(rnorm(25, 10, 2), rnorm(25, 12, 3), rnorm(25, 8, 1.5)),
  hospital = rep(c("Hospital_A", "Hospital_B", "Hospital_C"), each = 25)
)

# ANOVA model
anova_model <- aov(recovery_time ~ hospital, data = patient_data)

# Levene's test for homogeneity of variances
levene_test <- leveneTest(recovery_time ~ hospital, data = patient_data)
print(levene_test)

# Normality test for residuals
shapiro_test <- shapiro.test(residuals(anova_model))
print(shapiro_test)

# Interpretation
cat("Levene's test p-value:", round(levene_test$`Pr(>F)`[1], 4), "\n")
if(levene_test$`Pr(>F)`[1] > 0.05) {
  cat("Assumption of equal variances is met (p > 0.05)\n")
} else {
  cat("Assumption of equal variances is violated (p < 0.05)\n")
}

cat("Shapiro-Wilk test p-value:", round(shapiro_test$p.value, 4), "\n")
if(shapiro_test$p.value > 0.05) {
  cat("Assumption of normality is met (p > 0.05)\n")
} else {
  cat("Assumption of normality is violated (p < 0.05)\n")
}
```

**Explanation**: Both tests check ANOVA assumptions. Levene's test checks equal variances (homoscedasticity), while Shapiro-Wilk tests normality of residuals. Both assumptions should be met for valid ANOVA results.
:::

::: {.answer data-latex=""}
**Answer to Question 14:**

```r
library(car)

# Create sample data
set.seed(987)
health_data <- data.frame(
  age = rnorm(100, 55, 12),
  BMI = rnorm(100, 27, 4),
  exercise_hours = rnorm(100, 3, 2),
  blood_pressure = 90 + 0.4 * age + 1.8 * BMI - 2.1 * exercise_hours + rnorm(100, 0, 8)
)

# Multiple linear regression
model <- lm(blood_pressure ~ age + BMI + exercise_hours, data = health_data)
summary(model)

# Check for multicollinearity
vif_values <- vif(model)
print("VIF values:")
print(vif_values)

# Interpretation
cat("R-squared:", round(summary(model)$r.squared, 3), "\n")
cat("Adjusted R-squared:", round(summary(model)$adj.r.squared, 3), "\n")
cat("F-statistic p-value:", round(summary(model)$fstatistic[4], 4), "\n")

# Check VIF interpretation
if(all(vif_values < 5)) {
  cat("No multicollinearity concerns (all VIF < 5)\n")
} else if(any(vif_values > 10)) {
  cat("Severe multicollinearity detected (VIF > 10)\n")
} else {
  cat("Moderate multicollinearity (5 < VIF < 10)\n")
}
```

**Explanation**: The model shows how age, BMI, and exercise hours predict blood pressure. VIF values < 5 indicate no multicollinearity concerns. Higher VIF values suggest correlated predictors.
:::

::: {.answer data-latex=""}
**Answer to Question 15:**

```r
# Create sample data and model
set.seed(123)
data <- data.frame(
  x1 = rnorm(100),
  x2 = rnorm(100),
  y = 2 + 3*x1 - 1.5*x2 + rnorm(100, 0, 2)
)
model <- lm(y ~ x1 + x2, data = data)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(model)
par(mfrow = c(1, 1))

# Interpretation
cat("Diagnostic plots interpretation:\n")
cat("1. Residuals vs Fitted: Should show random scatter (linearity assumption)\n")
cat("2. Q-Q plot: Points should follow diagonal line (normality assumption)\n")
cat("3. Scale-Location: Should show horizontal line (homoscedasticity assumption)\n")
cat("4. Residuals vs Leverage: Identifies influential observations\n")
```

**Explanation**: The four diagnostic plots check the main regression assumptions. Random patterns indicate assumptions are met, while systematic patterns suggest violations that need addressing.
:::

::: {.answer data-latex=""}
**Answer to Question 16:**

```r
# Using the model from Question 15
new_data <- data.frame(x1 = 1.5, x2 = -0.8)

# Prediction
prediction <- predict(model, newdata = new_data, interval = "prediction")
confidence <- predict(model, newdata = new_data, interval = "confidence")

cat("Predicted value:", round(prediction[1], 3), "\n")
cat("Prediction interval: [", round(prediction[2], 3), ",", round(prediction[3], 3), "]\n")
cat("Confidence interval: [", round(confidence[2], 3), ",", round(confidence[3], 3), "]\n")

cat("\nDifference between intervals:\n")
cat("Confidence interval: Range for the MEAN response at given x values\n")
cat("Prediction interval: Range for an INDIVIDUAL response at given x values\n")
cat("Prediction interval is wider because it includes both model uncertainty and individual variation\n")
```

**Explanation**: Confidence intervals estimate the mean response, while prediction intervals estimate individual responses. Prediction intervals are always wider because they account for additional uncertainty in individual predictions.
:::

::: {.answer data-latex=""}
**Answer to Question 17:**

```r
# Create sample data
set.seed(456)
patient_data <- data.frame(
  age = rnorm(200, 55, 12),
  smoking_status = sample(0:1, 200, replace = TRUE),
  cholesterol = rnorm(200, 200, 30),
  disease = sample(0:1, 200, replace = TRUE, prob = c(0.7, 0.3))
)

# Logistic regression
logit_model <- glm(disease ~ age + smoking_status + cholesterol, 
                   data = patient_data, family = binomial)
summary(logit_model)

# Odds ratios
odds_ratios <- exp(coef(logit_model))
print("Odds Ratios:")
print(odds_ratios)

# Interpretation
cat("Interpretation of coefficients:\n")
cat("Age: For each year increase, odds of disease multiply by", round(odds_ratios[2], 3), "\n")
cat("Smoking: Smokers have", round(odds_ratios[3], 3), "times the odds of disease vs non-smokers\n")
cat("Cholesterol: For each unit increase, odds multiply by", round(odds_ratios[4], 3), "\n")
```

**Explanation**: Logistic regression models log-odds of disease. Odds ratios > 1 indicate increased risk, < 1 indicate decreased risk. The coefficients represent log-odds changes, so we exponentiate to get odds ratios.
:::

::: {.answer data-latex=""}
**Answer to Question 18:**

```r
# Using the model from Question 17
new_patient <- data.frame(age = 60, smoking_status = 1, cholesterol = 250)

# Predict probability
predicted_prob <- predict(logit_model, newdata = new_patient, type = "response")
cat("Predicted probability of disease:", round(predicted_prob, 3), "\n")

# Odds ratio for smoking
smoking_or <- exp(coef(logit_model)[3])
cat("Odds ratio for smoking:", round(smoking_or, 3), "\n")

# Practical interpretation
cat("Practical interpretation:\n")
cat("A 60-year-old smoker with cholesterol 250 has a", round(predicted_prob*100, 1), "% chance of disease\n")
cat("Smokers have", round(smoking_or, 1), "times higher odds of disease than non-smokers\n")
if(smoking_or > 1) {
  cat("This means smoking increases disease risk by", round((smoking_or-1)*100, 1), "%\n")
}
```

**Explanation**: The predicted probability gives the likelihood of disease for this specific patient. The odds ratio quantifies how much smoking increases disease risk compared to non-smoking.
:::

::: {.answer data-latex=""}
**Answer to Question 19:**

```r
# Create sample data
set.seed(789)
clinical_data <- data.frame(
  age = rnorm(90, 65, 10),
  treatment_type = rep(c("A", "B", "C"), each = 30),
  recovery_time = c(rnorm(30, 15, 3), rnorm(30, 12, 2.5), rnorm(30, 18, 4))
)

# Set treatment A as reference
clinical_data$treatment_type <- relevel(factor(clinical_data$treatment_type), ref = "A")

# Linear regression with dummy variables
model <- lm(recovery_time ~ age + treatment_type, data = clinical_data)
summary(model)

# Interpretation
cat("Interpretation of coefficients:\n")
cat("Intercept: Expected recovery time for treatment A at age 0\n")
cat("Age: For each year increase, recovery time changes by", round(coef(model)[2], 3), "days\n")
cat("Treatment B: Recovery time differs by", round(coef(model)[3], 3), "days vs treatment A\n")
cat("Treatment C: Recovery time differs by", round(coef(model)[4], 3), "days vs treatment A\n")
```

**Explanation**: Treatment A is the reference category. The coefficients for treatments B and C show how much their recovery times differ from treatment A, holding age constant. Positive coefficients mean longer recovery times.
:::

::: {.answer data-latex=""}
**Answer to Question 20:**

```r
# Create sample data
set.seed(321)
patient_data <- data.frame(
  age = rnorm(150, 55, 12),
  smoking_status = sample(0:1, 150, replace = TRUE),
  blood_pressure = 90 + 0.4 * age + 12 * smoking_status + 
                   0.2 * age * smoking_status + rnorm(150, 0, 8)
)

# Regression with interaction term
model <- lm(blood_pressure ~ age * smoking_status, data = patient_data)
summary(model)

# Interpretation
cat("Model equation: BP =", round(coef(model)[1], 2), "+", round(coef(model)[2], 2), "*age +", 
    round(coef(model)[3], 2), "*smoking +", round(coef(model)[4], 2), "*age*smoking\n")

cat("Interpretation:\n")
cat("For non-smokers (smoking=0): BP =", round(coef(model)[1], 2), "+", round(coef(model)[2], 2), "*age\n")
cat("For smokers (smoking=1): BP =", round(coef(model)[1] + coef(model)[3], 2), "+", 
    round(coef(model)[2] + coef(model)[4], 2), "*age\n")

if(coef(model)[4] != 0) {
  cat("The interaction term shows that the effect of age on BP differs between smokers and non-smokers\n")
  cat("Age effect for smokers:", round(coef(model)[2] + coef(model)[4], 3), "\n")
  cat("Age effect for non-smokers:", round(coef(model)[2], 3), "\n")
}
```

**Explanation**: The interaction term (age * smoking_status) allows the effect of age on blood pressure to differ between smokers and non-smokers. If significant, it means the relationship between age and blood pressure is different for the two groups.
:::

