# 💻 Linear Regression in class {#lin-reg-class}

## General Linear Regression Workflow & Caveats 🗒

fix in memory the following steps:

1. install package if you already dot have that and load it  i.e. `install.package("<the package>")` `library(<the package>)`. remember also that install.package needs quotation, indeed library don't. Make sure also to have internet connection, otherwise you can't download anything.

2. Load data into your environment with `data("<the dataset>")`

2. _bis_ further data manipulation step:
  - select columns ()
  - filter rows
  - encode to factor/ numeric
  
3. do the model with `lm(formula = Y ~ X + X2 + X3, data = <the dataset>)` where formula is the model you are fitting (understand it by the question) and data is the actual dataset

4. summary of the model

Please also don't just skip *parenthesis*, *quotations* i.e. "", **Capital and lowercase** characters. They all matters! Prior throwing outside the window you laptop at least check if there's any of the issues in this code. 

## collinearity and VIF

**Collinearity** is a phenomenon in multiple linear regression where two or more independent variables in a regression model are highly correlated. It can lead to **multicollinearity**, making it challenging to interpret the individual effects of each predictor variable. Variance Inflation Factor (**VIF**) is a measure used to detect and quantify collinearity in regression analysis. A high VIF indicates that a predictor variable is highly correlated with other predictor variables in the model.


We calculate the VIF via function `VIF()` contained in the package `regclass`, if don't have it please install it (i.e. `install.packages("regclass")`).



```r
library(regclass)
#> Loading required package: bestglm
#> Loading required package: leaps
#> Loading required package: VGAM
#> Loading required package: stats4
#> Loading required package: splines
#> 
#> Attaching package: 'VGAM'
#> The following object is masked from 'package:webexercises':
#> 
#>     round2
#> Loading required package: rpart
#> Loading required package: randomForest
#> randomForest 4.7-1.1
#> Type rfNews() to see new features/changes/bug fixes.
#> 
#> Attaching package: 'randomForest'
#> The following object is masked from 'package:dplyr':
#> 
#>     combine
#> Important regclass change from 1.3:
#> All functions that had a . in the name now have an _
#> all.correlations -> all_correlations, cor.demo -> cor_demo, etc.

data(mtcars)

# Fit a multiple linear regression model
model <- lm(mpg ~ wt + hp + qsec + disp, data = mtcars)

# Calculate VIF for each predictor variable in the model
vif_values <- VIF(model)
vif_values
#>       wt       hp     qsec     disp 
#> 6.916942 5.166758 3.133119 7.985439
```

The output will provide VIF values for _each predictor variable_. If you see a high VIF (typically **greater than 5 or 10**), it indicates a potential issue with collinearity, and you may need to consider removing one of the correlated predictor variables from the model to address this problem. Lower VIF values are preferred, as they indicate less multicollinearity.

Keep in mind that the VIF is calculated for each predictor variable separately, considering the correlation with other predictor variables. It helps you assess the impact of collinearity on each variable's variance.


## Class exercies @ 2024-10-26 🏛

::: {.exercise #linreg1}
Using the dataset `baltimore` downloadable from the library `spdep`
Estimate the simple linear regression model which explains the price (PRICE) 
as a function the "age" of the house (AGE)
> Is the slope significant at 5%?

::: 


```r
# if you don't have that, install it at first
# install.packages("spdep")
library(spdep)
data("baltimore")

# let's look at baltimore
# View(baltimore)
dim(baltimore)
str(baltimore)
colnames(baltimore)

## estimate regression

baltimore_regression = lm(PRICE ~ AGE, data = baltimore)
summary(baltimore_regression)

```


----

::: {.exercise #linreg2}
The coleman data set in the robustbase library lists summary statistics for 20 different schools in the northeast US.
The six variables measured on each school include demographic information (such as percent of white-collar fathers) and
characteristics of each school (such as staff salaries per pupil).
> 1. Code a regression model explaining the variable Y, using all other varibles. 
> 2. Which variable is most significant?

:::



```r
# install.packages("robustbase") if you dont already have the package
library(robustbase)
data("coleman")

## explore data, how many rows it has?
## View(coleman)
str(coleman)


model_coleman = lm(formula = Y ~ ., data = coleman)
summary(model_coleman)

```


-----

::: {.exercise #linreg3}
Using the dataset Bikeshare of the library ISLR2,
Estimate the regression that explains causal users as a function of the registered users
> What is the p-value of the estimate of the intercept?

::: 

Bikeshare data descr:
This data set contains the hourly and daily count of rental bikes between years 2011 and 2012 in Capital bikeshare system, along with weather and seasonal information.

 

```r
# for those who can not install that, don't worry,
# manifest tyour problem and I will make avaible for you the dataset
# in a different way! 
# install.packages("ISLR2")
library(ISLR2)
data("Bikeshare")


## !! for those we cant install ISLR2 then execte the follwing !!
Bikeshare = read.csv("https://raw.githubusercontent.com/NiccoloSalvini/sbd_22-23/main/data/bikeshare.csv?token=GHSAT0AAAAAABZG6GFQDNXQRWROYOGNIKCIY2X7Y4Q")

## explore data, focus on column types
str(Bikeshare)

## fit model
bikeshare_model = lm(formula = casual~registered, data = Bikeshare)
summary(bikeshare_model)

```
 

----

::: {.exercise #linreg4}
Given the dataset “Duncan” in the library “carData” estimate the regression model where 
the variable prestige is regressed on the variables income and education.
>Which variable is the most significant?

::: 

`Duncan` data descr:
The Duncan data frame has 45 rows and 4 columns. Data on the prestige and other characteristics of 45 U. S. occupations in 1950.


```r
## install package if already dont have it
## install.packages("carData")  please notice that the "D" is uppercase
library(carData)
data("Duncan")


##explore Duncan dataset
str(Duncan) ## 45 rows x 4 columns

## any prep needed

## fit model

duncan_model = lm(prestige ~ income + education, data  = Duncan)
summary(duncan_model)
```

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg4)**

    Coefficients:
                Estimate Std. Error t value   Pr(>|t|)    
    (Intercept) -6.06466    4.27194  -1.420      0.163    
    income       0.59873    0.11967   5.003 0.00001053 ***
    education    0.54583    0.09825   5.555 0.00000173 ***
    --- 

the most significant variables are both income and education at a 0 alpha level. 
It might be worth noting also that both of the two have positive signs i.e. 0.59, 0.54
which suggests that prestige is positively linked to income and education level.

:::

----

::: {.exercise #linreg51}
Given the dataset `state.x77` which should be already present in R perform following tasks
> 1. load the state datasets.
> 2. Convert the `state.x77` dataset to a dataframe.
> 3. Rename the `Life Exp` variable to `Life.Exp`, and `HS Grad` to `HS.Grad`. (This avoids
problems with referring to these variables when specifying a model.)

::: 

----

::: {.exercise #linreg52}
Suppose we wanted to enter all the variables in a first-order linear regression model with Life Expectancy as the dependent variable. 
> 1. Fit this model

::: 

----

::: {.exercise #linreg53}
Let’s assume that we have settled on a model that has `HS.Grad` and `Murder` as predictors. 

> 1. Fit this model.
> 2. Add an interaction term to the previous model. 
> 3. Predict the Life Expectancy for a state where 55% of the population are High School graduates, and the murder rate is 8 per 100,000.

::: 

-----

::: {.exercise #linreg54}

In this exercise, we'll perform multiple linear regression with interaction terms using the mtcars dataset. Create a model with interaction between "wt" and "hp" and calculate R-squared and adjusted R-squared.

::: 

----

::: {.exercise #linreg55}

Using the dataset `swiss`, fit the model whose response variable is "Fertility" and whose explanatory variable are all the rest.
Then verify the absence or presence of collinearity in predictors. If you find any which is the model without collinear predictors?

::: 



## solutions


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg1)**

     Coefficients:
                Estimate Std. Error t value             Pr(>|t|)    
    (Intercept) 55.08500    2.82833   19.48 < 0.0000000000000002 ***
    AGE         -0.35802    0.07851   -4.56            0.0000087 ***
    ---
    coefficient AGE is significant up to a 0% alpha level, therefore it also is at 5%

:::



::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg2)**:
    
     Coefficients:
                Estimate Std. Error t value  Pr(>|t|)    
    (Intercept) 19.94857   13.62755   1.464    0.1653    
    salaryP     -1.79333    1.23340  -1.454    0.1680    
    fatherWc     0.04360    0.05326   0.819    0.4267    
    sstatus      0.55576    0.09296   5.979 0.0000338 ***
    teacherSc    1.11017    0.43377   2.559    0.0227 *  
    motherLev   -1.81092    2.02739  -0.893    0.3868    

the most significant coefficient in the regression model we fitted is "sstatus" with a nearly 0 alpha, 
however there's also "teacherSc" which is significant witha 5% alpha. 

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg3)**:

    Coefficients:
                Estimate Std. Error t value            Pr(>|t|)    
    (Intercept) 7.393972   0.518483   14.26 <0.0000000000000002 ***
    registered  0.184095   0.003263   56.42 <0.0000000000000002 ***
    ... 

the estimate value for the intercept is 7.393972

:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg51)**

dataset `state.x77` comes by default with R. You don't need to install any library. Point 1 done.

2. when you need to convert (sometimes people like to say "coerce") a object of a class to another class, say from matrix to dataframe (this is the most common case) you need to apply the function.

    new_state.x77 = data.frame(state.x77)

3. By looking at the column name before and after the conversion to dataframe with `data.frame()` you may notice something weird. print out these commands:

    colnames(state.x77)
    colnames(data.frame(state.x77))
    
during the conversion R took care also of renaming the column names in the desired way. Why this happens? R needs to have column name with that type of notation. R does not neither want " " empty spaces nor accents "à" as column names. Essentially R does not undestand these signs and complains about them. 


:::


::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg52)**

    simple_linear_model = lm(Life.Exp~.,  data =  new_state.x77)
    summary(simple_linear_model)

:::



::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg53)**

1. fit the model with HS.Grad and Murder being the predictors
 
    linear_model_1 = lm(Life.Exp~ HS.Grad + Murder,  data =  new_state.x77)
    summary(linear_model_1)
    
    
2. add the interaction term to the model

    linear_model_interaction = lm(Life.Exp~ HS.Grad + Murder + HS.Grad*Murder,  data =  new_state.x77)
    summary(linear_model_interaction)
    
3. calculate the Life expectancy given 55% pop and 8 over 10^5 rate. Look at help from state.x77 to see which are to which scales these numbers are expressed.

    y = 67.831203 + 0.089368*55 + 8*0.023510 -0.004959*55*8
    
this results in 70.75256

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg54)**

    # Load the regclass package
    library(regclass)
    
    # Create interaction term between "wt" and "hp"
    mtcars$wt_hp_interaction <- mtcars$wt * mtcars$hp
    
    # Perform multiple linear regression with the interaction term
    model <- lm(mpg ~ wt + hp + wt_hp_interaction, data = mtcars)
    
    # Calculate R-squared
    r_squared <- R2(model)
    
    # Calculate adjusted R-squared
    adjusted_r_squared <- adjR2(model)
    
    # Print R-squared and adjusted R-squared values
    cat("R-squared:", r_squared, "\n")
    cat("Adjusted R-squared:", adjusted_r_squared, "\n")

:::

::: {.answer data-latex=""}
**Answer to Exercise \@ref(exr:linreg55)**

    # Load the regclass package
    library(regclass)
    
    # Load the 'swiss' dataset (data on fertility and socio-economic indicators in the Swiss cantons)
    data(swiss)
    
    # Perform multiple linear regression with "Fertility" as the dependent variable
    model <- lm(Fertility ~ ., data = swiss)
    
    # Calculate Variance Inflation Factors (VIF) for independent variables
    vif <- VIF(model)
    

print in the console `vif`.  No collinearity detected. The model does not suffer from collinerity.

:::







