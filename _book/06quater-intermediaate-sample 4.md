# 💻 First Intermediate Sample Questions {#int-samp-q-first}

Hi guys, this is your favourite **TA**, I am just aggregating questions that have been asked in previous exam sessions the previous years i.e. 2020/2021 and 2021/2022. They are representative of the actual exam, but you know, take it like a grain of salt. 

I will also make sure to provide to you some other exercises if you are still anxious.


## 👨‍🎓 2020/2021


::: {.exercise #int1}

Write the line of the R command that you use to produce a boxplot of the variable X

:::


----

::: {.exercise #int2}

We want to test statistically the hypothesis that the performances of students at UCSC in Rome that graduated last year are better than those that graduated this year. Can we say that this is a paired sample test ?


:::

----

::: {.exercise #int3}

Without using formulae, describe how you can calculate the test statistics in a hypothesis testing procedure on a single mean with known variance.


:::

-----

::: {.exercise #int4}

Using the dataset Boston downloaded from the library spdep, write the correlation matrix of the variables MEDV, NOX and CRIM.


:::


----

::: {.exercise #int5}

How do you define the confidence of a statistical test? 

:::

----

::: {.exercise #int6}

Given the following 2 variables X = (1,5,3,3,5,5) and Y= (4,4,6,3,2,3), write the cross-tabulation between X and Y.

:::

----

::: {.exercise #int7}


Write the line of the R command that you use to simulate 1000 random observation from normal distribution with 0 mean and variance = 0.5. 

:::



----


::: {.exercise #int8}

A law company is evaluating the performances of two departments measuring in terms of the time required for solving a conflict in the last year. The observed values are reported in the following table:

...

can we accept the hypothesis H0: (the mean of Dept 1 is equal to the mean of Dept 2) versus a bilateral alternative hypothesis? (F)

:::



----

::: {.exercise #int9}

A company has recorded the number of costumers in 10 sample stores before (variable X) and after (Variable Y) a new advertising campaign was introduced. The observed values are reported in the following table

...

write the p-value of the test with H0: (the mean of X is equal to the mean of Y) versus a bilateral alternative hypothesis. (	0,000341138)

:::

----

::: {.exercise #int12}
The HR office of a cleaning company wants to test if there is a gender discrimination between its employees. Call X = the income of a set of 20 male workers and Y = the income of a set of 35 female workers. Write the line R command to run an appropriate test of hypothesis.

:::


----


::: {.exercise #int13}
What is the power of statistical test? 

:::

----

::: {.exercise #int14}
Using the dataset `boston.c` downloaded from the library `spdep`, calculate the coefficient of skewness of the variable RM.

:::

 
::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int14)**:

    library(moments)
    skewness(boston.c$RM)

    0,4024147

:::


----


::: {.exercise #int16}

How do you define the significance of a statistical test? 

:::



## 👨‍🎓 2021/2022


::: {.exercise #int17}

Given the dataset “Duncan” in the library “carData” estimate the regression model where the variable prestige is regressed on the variables income Looking at the following information,

    Residuals:

    Min      1Q  Median      3Q     Max

    -29.538  -6.417   0.655   6.605  34.641

Do residuals display.

:::

-----

::: {.exercise #int18}

What are the consequences of **collinearity** among regressors?


1. Estimators become biased
1. Estimators become inefficient
1. Estimators become inconsistent
1. Estimators become unstable

:::

----


::: {.exercise #int19}

What is the correct definition of the **variance inflation factor** i.e. VIF?


1. $1-R2$ 
1. $\frac{1}{R2}$  
1. $\frac{1}{1-R2}$
1. $1-\frac{1}{R2}$

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int19)**:

A general guideline is that a VIF larger than 5 or 10 is large, indicating that the model has problems estimating the coefficient. However, this in general does not degrade the quality of predictions. If the VIF is larger than 1/(1-R2), where R2 is the Multiple R-squared of the regression, then that predictor is more related to the other predictors than it is to the response.

    install.packages("regclass")
    library(regclass)
    VIF(modello_regressione)
    
alternatively you can use the library `car` and use `vif()` function

    install.packges("car")
    library(car)
    vif(modello_regressione)

:::

----


::: {.exercise #int20}

Using only the following variables `minority` , `crime` , `poverty` , `language`  `highschool` and `housing` of the `Ericksen` data in the library `carData`, run a factor analysis. What is the percentage explained by the first two factors?


risposta: **90.130.001**

:::

-----


::: {.exercise #int21}

In a multiple linear regression model y= a+bx1+cx2, if Correlation(x1,x2)=0.9, do we have to discard one of the two variables for collinearity?


risposta: **F**

:::

----

::: {.exercise #int23}

Given the dataset `Duncan` in the library `carData` estimate the regression model where the variable `prestige` is regressed on the variables `income` and `education`. Which variable is the most significant?

1. Education
1. income

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int23)**:

at first you load data from `Duncan` dataset 

    library(carData)
    data("Duncan")

Then you specify the model and produce sumamries:

    duncan_regression = lm(prestige~ income + education, data= Duncan)
    summary(duncan_regression)
    
you look at pvalues and 

    Coefficients:
                Estimate Std. Error t value   Pr(>|t|)    
    (Intercept) -6.06466    4.27194  -1.420      0.163    
    income       0.59873    0.11967   5.003 0.00001053 ***
    education    0.54583    0.09825   5.555 0.00000173 ***


education is significant more than income since *0.00000173* < *0.00001053*


:::


-----

::: {.exercise #int25}

In a multiple linear regression model y= a+bx1+cx2, what is the level of correlation between x1 and x2 beyond which we have to discard one of the two variables for collinearity?

risposta:  **0.948**

:::

-----

::: {.exercise #int26}

Given the dataset `Duncan` in the library `carData` estimate the regression model where the variable `prestige` is regressed on the variables `income` and `education`. What is the p-value of the coefficient of the variable `education`?


:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int26)**:

at first you load data from `Duncan` dataset 

    library(carData)
    data("Duncan")

Then you specify the model and produce sumamries:

    duncan_regression = lm(prestige~ income + education, data= Duncan)
    summary(duncan_regression)
    
you look at pvalues and 

    Coefficients:
                Estimate Std. Error t value   Pr(>|t|)    
    (Intercept) -6.06466    4.27194  -1.420      0.163    
    income       0.59873    0.11967   5.003 0.00001053 ***
    education    0.54583    0.09825   5.555 0.00000173 ***


The pvalue for the coefficient is **0.00000173**

you may want to directly access to it instead of just copying and pasting from console sumamry output

:::



-----


::: {.exercise #int27}

What is the reason for adjusting the R2 in a multiple regression


1. To account for the number of degrees of freedom
1. To account for the number of parameters
1. To reduce the uncertainty
1. To adjust for variance inflation factor

rispoasta: **To account for the number of degrees of freedom**

:::


----


::: {.exercise #int28}

Given the dataset `Duncan` in the library `carData` estimate the regression model where the variable `prestige` is regressed on the variables `income`. Using the VIF, do we have to exclude some variable due to collinearity?


result: F

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int28)**:

at first you load data from `Duncan` dataset 

    library(carData)
    library(car)
    data("Duncan")

Then you specify the model and produce sumamries:

    duncan_regression = lm(prestige~ income + education, data= Duncan)
    vif(duncan_regression)
    

Then the output will look like something like.


     income education 
     2.1049    2.1049 
    
Since they are below **10** which is the rule of thumb we gave to ourselves to assess multicollinearity then we conclude that neither `income` nor `education` are collinear.
    
  
:::


----

::: {.exercise #int29}

Given the dataset `Duncan` in the library `carData` estimate the regression model where the variable `prestige` is regressed on the variables `income`. What is the value of the t value of the coefficient of the variable `education`?

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int29)**:

at first you load data from `Duncan` dataset 

    library(carData)
    data("Duncan")

Then you specify the model and produce sumamries:

    duncan_regression = lm(prestige~ income + education, data= Duncan)
    summary(duncan_regression)
    

Then the output will look like something like.

    Coefficients:
                Estimate Std. Error t value   Pr(>|t|)    
    (Intercept) -6.06466    4.27194  -1.420      0.163    
    income       0.59873    0.11967   5.003 0.00001053 ***
    education    0.54583    0.09825   5.555 0.00000173 ***
    

By inspecting the summary wee obtain that the t value (t value column in the summary) dor variable `education` is **5.555**
  
:::


----


::: {.exercise #int29}

Using only the following variables `minority` , `crime` , `poverty` , `language`, `highschool` and `housing` of the `Ericksen` data in the library `carData`, run a cluster analysis using the k-means method. If we divide the observations in 4 classes what is the frequency of the largest class ? 

result: **26**

:::

----

::: {.exercise #int30}

Using only the following variables `minority` , `crime` , `poverty` , `language`, `highschool` and `housing` of the `Ericksen` data in the library `carData`, run a cluster analysis using the **k-means method**. What is the percentage explained by the first factor?


risposta: 7.391.719

:::

----

::: {.exercise #int31}


Using only the following variables `minority` , `crime` , `poverty` , `language`, `highschool` and `housing` of the `Ericksen` data in the library `carData`, run a cluster analysis using the **hierarchical method**. If we divide the observations in 10 classes what is the frequency of the largest class ? 

risposta: 27

:::


----

::: {.exercise #int32}

Given the dataset `Duncan` in the library `carData` estimate the regression model where the variable `prestige` is regressed on the variables `income` and `education` and report the $R^2$.

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:int32)**:

at first you load data from `Duncan` dataset 

    library(carData)
    data("Duncan")

Then you specify the model and produce sumamries:

    duncan_regression = lm(prestige~ income + education, data= Duncan)
    summary(duncan_regression)
    

Then the output will look like something like.

    Residual standard error: 13.37 on 42 degrees of freedom
    Multiple R-squared:  0.8282,	Adjusted R-squared:   0.82 
    F-statistic: 101.2 on 2 and 42 DF,  p-value: < 0.00000000000000022
        

By inspecting the lowe end of the summary we obtain that the R2 (multiple) for the model is **0.8282**, which is high.
  
:::


----


## 👨‍🎓 2022/2023 

::: {#intres1 .exercise}
Using the dataset `Boston` downloaded from the library `spdep`,
calculate the coefficient of skewness of the variable `RM`.
:::

----

::: {#intres2 .exercise}
How do you define the significance of a statistical test?
:::

----


::: {#intres3 .exercise}
What is the power of statistical test?
:::


----

::: {#intres4 .exercise}
How do you define the confidence of a statistical test?
:::


----


::: {#intres5 .exercise}
A law company is evaluating the performances of two departments
measuring in terms of the time required for solving a conflict in the
last year. The observed values are reported in the following table:

    perf_table = data.frame(
      stringsAsFactors = FALSE,
                 month = c("january","febraury","march",
                           "april","may","june","july","august","september",
                           "october","november","december"),
                dept_1 = c(NA, NA, NA, 3L, 6L, 9L, 7L, 5L, 7L, 3L, 4L, 6L),
                dept_2 = c(4L, 3L, 9L, 5L, 7L, 2L, 6L, 3L, 6L, 7L, 4L, 1L)
    )
    )

can we reject the hypothesis H0: (the mean of Dept 1 is equal to the
mean of Dept 2) versus a bilateral alternative hypothesis?

:::


----



::: {#intres6 .exercise}

A company has recorded the number of costumers in 10 sample stores
before (variable X) and after (Variable Y) a new advertising campaign
was introduced. The observed values are reported in the following table:

    stores = data.frame(
         n_store = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L),
          before = c(113L, 110L, 108L, 108L, 103L, 101L, 96L, 101L, 104L, 98L),
           after = c(125L, 113L, 115L, 117L, 105L, 112L, 100L, 103L, 116L, 104L)
    )

can we reject the hypothesis H0: (the mean of X, i.e. before is equal to
the mean of Y, i.e. after) versus a bilateral alternative hypothesis?

:::


----


::: {#intres7 .exercise}

Write the line of the R command that you use to simulate 2000 random
observation from normal distribution with 0 mean and variance = 0.1

:::

Many of you fall into this **trap!**. Tip: always use the "tab" for
automatic suggestion but also check what are arguments. In this case
exercise wants you to sample from a normal distribution with **2000**
instances (data points), **0** mean and **variance = 0.1**. The argument
in `rnorm` is sd not var, so you have to apply the square root!

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres7):

    rnorm(n = 2000, mean = 0, sd = 0.1^(1/2))
    
:::



----


::: {#intres8 .exercise}

Write the line of the R command that you use to produce a boxplot of the
variable X

:::

----


::: {#intres9 .exercise}

Given the following 2 variables `X = (5,5,3,3,5,5)` and
`Y= (4,4,3,3,3,3)`, test if the mean of X is significantly different
from the mean of Y. Report the p-value of the appropriate test and your
decision.

:::


----


::: {#intres10 .exercise}

Using the dataset `boston.c` downloaded from the library `spdep`, write
the elements of the correlation matrix of the variables `MEDV`, `NOX` and
`CRIM`.

:::


----



::: {#intres11 .exercise}

Without using formulae, describe how you can calculate the test
statistics in a hypothesis testing procedure on a single mean with known
variance.

:::


----

::: {#intres12 .exercise}

The HR office of a cleaning company wants to test if there is significant difference in the salary between males and females. Call X = the salary of a set of **2000** male workers and Y = the salary of a set of **150** female workers. From previous survey we know that the **variances of the two groups are equal**. Write the line R command to run an appropriate test of hypothesis.

:::


----



::: {#intres13 .exercise}

We want to test statistically the hypothesis that the students at UCSC
in Rome have better performances in the second year than in first year
year. Can we say that this is a paired sample test?

:::


----


::: {#intres14 .exercise}
Using the dataset `iris` test if there is a significant difference
between the mean of `Petal.Length` and the mean of `Sepal.Width` and
report the outcome value of the t-test.
:::


----


::: {#intres15 .exercise}

Using the dataset `iris` calculate the correlation between
`Sepal.Length` and `Sepal.Width`.

:::

-----

::: {#intres16 .exercise}

Using the dataset `iris` report the highest correlation coefficient that
you find between the four variables.

:::


----


::: {#intres161 .exercise}

Using the dataset `iris` report the highest correlation coefficient that
you find between the four variables.

:::


----


::: {#intres17 .exercise}

Using the dataset `iris` report the variance of `Sepal.Length`

:::


-----


::: {#intres18 .exercise}

Using the dataset `iris` report the third quartile of `Sepal.Length`

:::


----

::: {#intres19 .exercise}

What is the reason for adjusting the R2 in a multiple regression?


:::


----


::: {#intres20 .exercise}

What is the correct definition of the variance inflation factor?

:::

----

::: {#intres21 .exercise}

What are the consequences of **collinearity** among regressors?


:::


----



::: {#intres22 .exercise}

Using the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

Which variables are retained in the model? (retained means
*tratteresti*)


:::

-----



::: {#intres23 .exercise}
sing the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

What is the value of the **adjusted R squared** in the best model

:::


----



::: {#intres24 .exercise}

sing the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

What is the estimated coefficient of the variable `duration` in the best
model?

:::

-----



::: {#intres25 .exercise}

sing the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

What is the estimated value of the `intercept` in the best model?


:::


----


::: {#intres26 .exercise}

sing the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

What is the **p-value** of the variable `duration` in the best model?


:::


----


::: {#intres27 .exercise}


sing the dataset `Wong` from the R library `carData`, estimate a
multiple linear regression where the variable `piq` is expressed as a
function of `age`, `days` and `duration.`

After the check of collinearity and of significance choose the best
model.

What is the value of the **R square** in the best model

:::


----


::: {#intres28 .exercise}

Using the dataset `iris`, test if the average of the variable
`Sepal.Length` changes significantly in the three `Species` considered.
Report here the p-value of the appropiate test.

:::

We look at `Species` (we have already gone through that during lecture)
by inspecting the dataset. What we see is that `Species` has three
categories *setosa*, *versicolor* and *virginica*. If we would like to
compare means across these 3 different categories we can't use
`t.test()` since they are 3. Instead we use **ANOVA** with the `aov()`.
Sintax is similar to linear models. We saw this when we were trying to
tackle "long" format data vs. "wide" format data.

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres28):

    test_species = aov(Sepal.Length~Species, data = iris)
    summary(test_species)

resulting in **0.0000000000000002**, very significant. We can conclude
that: The ANOVA (formula: Sepal.Length \~ Species) suggests that the
main effect of Species is statistically significant and large.

:::


-----


::: {#intres29 .exercise}

Using the dataset `iris`, test if the average of the variable
`Sepal.Length` differs significantly in the three `Species`, Report here
the value of the test statistic.


:::



## solutions

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres1):

    library(spdep)

you are not required to load data in this case since the package already
does it for you. SO you just need to type `boston.c` and you find it.
Then you need to extract `RM`

    RM_var = boston.c$RM

There are a nunber of packages that makes you able to compute skewness,
there are some: `e1071`, `moments`, `PerformanceAnalytics` etc. I will
suggest to use moments. So if you dont have it installed execute:

    install.packages("moments")
    library(moments)

Then use teh function `skewnes` on `RM_var`

    skewness(RM_var)
:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres2):

The probability of type I error, The probability of rejecting H0 when H0
it is true
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres3):

1 minus the probability of type II error, The probability of accepting
H0 when H0 it is true.
:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres4):

The probability of accepting H0 when H0 it is true.
:::



::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres5):

H0: $\mu_{dept1} = \mu_{dept2}$ H1: $\mu_{dept1} \neq \mu_{dept2}$

Remember you always test the alternative hypothesis H1. If the pvalue
for the t test is not statistically significant then you reject H1 and
conversely you accept H0, in this case means being the same (they are
different but that's because of randomness in data, i.e. sampling
variation).

    t.test(x = perf_table$dept_1, y = perf_table$dept_2, paired = F, alternative = "two.sided")

Then we look at the p-value for this test and we see something like:
**0.4076**, so we can conclude that the Two Sample t-test testing the
difference between dept_1 and dept_2 (mean of dept_1 = 5.56, mean of
dept_2 = 4.75) suggests that the effect is positive, statistically **not
significant, and small**. So we reject the alt. hypo H1 and accept H0.

The question tells you if you can reject the Null Hypo, this is not the
case since you just accepted it!

:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres6):

This is exactly the same reasoning as before except that this is a
paired t test. "Are we talking about the same individuals? are we
checking individuals pre and after a treatment?" **YES**

    t.test(x = stores$before, y = stores$after, paired = T, alternative = "two.sided")

Look at the p-value: **p-value = 0.0004646**.this is really small. SO we
can conclude that the Paired t-test testing the difference between
before and after (mean difference = -6.80) suggests that the effect is
negative, statistically significant, and large.

:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres7):

    rnorm(n = 2000, mean = 0, sd = 0.1^(1/2))
    
:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres8):

    boxplot(X)
    
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres9):

you at first define vectors X and Y by executing:

    X = c(5,5,3,3,5,5)
    Y = c(4,4,3,3,3,3)
    t.test(X, Y, alternative = "two.sided", paired = F)

so the answer may look something like: The (Welch, remember we did not
check variance so we rely on default R behavior applying a
transformation to t.test) Sample t-test testing the difference between X
and Y (mean of x = 4.33, mean of y = 3.33) suggests that the effect is
positive, statistically not significant, and large given the pvalue
being **0.0697**. However this would also be significant if the alpha
level of significance was 10%.

:::



::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres10):

    library(spdep)
    library(dplyr)
    new_boston = select(boston.c, MEDV, NOX, CRIM)
    cor(new_boston)
    

Note that the principal diag for the matrix is all 1s. This is because
you a variables has perfect correlation with itself. You are just
interested in the upper triangle. You might also be interested in
visualizing it with `corrplot`. Install it
`install.packages("corrplot")` then pass the matrix as the argument
`corrplot(cor(new_boston))`


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres11):

the test statistic is calculated seeing, for example, how many times the
absolute difference between the sample mean and the population mean
(sm-mu) embodies the standard error = sqrt[(known variance)/n]. This
value allow us to standardize the distribution and allocate the value in
a Normal distribution (if the variance is known) or in a T di Student
distribution (variance unknown) - looking at this value we can now
calculate the probability that it is within the range of values
established by the level of confidence of the statistical test.

:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres12):

    t.test(X, Y, paired = F, alternative ="less", var.equal = T)
    
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres13):

**FALSE**

:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres15):

simple correlation aight?!

    cor(x = iris$Sepal.Length, y = iris$Sepal.Width)
    
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres16):

Please note that correlation with `cor()` can be computed with only
numeric values. Looking at `iris` you see the variable `species` which
is a factor (aka grouping variable) we used that for ANOVA `aov()` when
we are interested in comparing means across more than 2 groups. As a
result you need to select all the variables but `Species` and do
`cor()`.

    iris_filtr = select(iris, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
    cor(iris_filtr)

there's another way to do the filtering stuff, you just deselect
`Species` such that:

    iris_filtr2 = select(iris, -Species)
    cor(iris_filtr2)


You also might want to visualize the correlation as we did before (advanced trick):

    library(corrplot)
    iris_filtr2 = select(iris, -Species)
    corrplot::corrplot(cor(iris_filtr2))
        
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres161):

    iris_filtr = select(iris, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
    cor(iris_filtr)

there's another way to do the filtering stuff, you just deselect
`Species` such that:

    iris_filtr2 = select(iris, -Species)
    cor(iris_filtr2)
        
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres17):

    var(iris$Sepal.Length)
    
:::




::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres18):

    summary(iris$Sepal.Length)
    
  
:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres19):

Adjusted R2 is a corrected goodness-of-fit (model accuracy) measure for linear models. It identifies the percentage
of variance in the target field that is explained by the input or
inputs. R2 tends to optimistically estimate the fit of the linear
regression. It always increases as the number of effects are included in
the model. Adjusted R2 attempts to correct for this overestimation.
Adjusted R2 might decrease if a specific effect does not improve the
model. If you guessed the `To account for the number of parameters` this
would also get you some points, But more precisely we are talking about
the **degrees of freedom**.

$R_{adj}^2 = 1- \frac{(1-R^2)(n-1)}{n-k-1}$

> To account for the number of degrees of freedom!

:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres20):


As you may know Multicollinearity is problem that you can run into when
you're fitting a regression model, or other linear model. It refers to
predictors that are correlated with other predictors in the model.
Unfortunately, the effects of multicollinearity can feel murky and
intangible, which makes it unclear whether it's important to fix.
Multicollinearity results in unstable parameter estimates which makes it
very difficult to assess the effect of independent variables on
dependent variables.

Let's see that from another pov:

Consider the simplest case where $Y$ is regressed against $X$ and $Z$
such that $Y = \alpha + \beta_1X +\beta_2Z + \epsilon$ and where $Z$ and
$Z$ are highly positively correlated. Then the effect of $X$ on $Y$ is
hard to distinguish from the effect of $Z$ on $Y$ because any increase
in $X$ tends to be associated with an increase in $Z$. Now let's also
consider th pathological case where $X = Z$ highlights this further.
$Y = \alpha + \beta_1X + \beta_2Z + \epsilon$ -\>
$Y = \alpha + (\beta_1 + \beta_2)X + 0Z + \epsilon$ then both of the two
variables would be indistinguishable.

$\frac{1}{1-R^2}$


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres21):

Estimators become unstable

:::

::: {.answer data-latex=""}

**Answer to Question** \@ref(exr:intres22):

first attempt:

    library(carData)
    library(car)
    data("Wong")
    wong_regression = lm(piq ~ age + days + duration, data = Wong)
    summary(wong_regression)

From here you see that `age` and `days` are not significant, indeed
`duration` is. However `days` havign .13 as p values is much more
significant than age which accounts for .38 Let's also check
collinearity for this **uncorrectly specified** model. They all look
good since their values are all **\<10**.

Then we mnay want to see how the model, behaves by cancelling out `age`
and keeping `days`, so:

    wong_regression_2 = lm(piq ~ days + duration, data = Wong)

In this iteration we verify that `duration` becomes even more important
since now has \*\*\*. However `days` just got worst. We finally remove
it too. We don't check `vif()` we have already done that and we do not
expect that a subset of non collinear varibales (as before) now become
collinear. As a result:ù

    wong_regression_3 = lm(piq ~ duration, data = Wong)

In the end we only retain `duration`

:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres23):

    summary(wong_regression_3)

resulting in **0.02618**

:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres24):

    wong_regression_3$coefficients[2]

resulting in **-0.09918208**

you can also directly look it through the summary

    summary(wong_regression_3)
    
    
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres25):

    wong_regression_3$coefficients[1]

resulting in **88.97380549**

you can also directly look it through the summary

    summary(wong_regression_3)
    
    
:::

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres26):

    summary(wong_regression_3)

resulting in `duration` p-value: **0.00183**


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres27):

    summary(wong_regression_3)

result : **0.02913**


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres28):


We look at `Species` (we have already gone through that during lecture)
by inspecting the dataset. What we see is that `Species` has three
categories *setosa*, *versicolor* and *virginica*. If we would like to
compare means across these 3 different categories we can't use
`t.test()` since they are 3. Instead we use **ANOVA** with the `aov()`.
Sintax is similar to linear models. We saw this when we were trying to
tackle "long" format data vs. "wide" format data.

    test_species = aov(Sepal.Length~Species, data = iris)
    summary(test_species)

resulting in **0.0000000000000002**, very significant. We can conclude
that: The ANOVA (formula: Sepal.Length \~ Species) suggests that the
main effect of Species is statistically significant and large.

:::



::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:intres29):

We take the exact same test as before and we look for the statistic

    summary(test_species)

Here you look for the **F statistics**: F = **119.3**


:::




