# 💻 Dummy Variables {#dummy-vars}


Categorical variables (also known as factor or qualitative variables) are variables that classify observations into groups. They have a limited number of different values, called levels. For example the gender of individuals are a categorical variable that can take two levels: Male or Female.

Regression analysis requires numerical variables. So, when a researcher wishes to include a categorical variable in a regression model, supplementary steps are required to make the results interpretable.


## examples data from `car` pkg `Salaries`

We’ll use the `Salaries` data set  from `car` pkg, which contains 2008/2009 nine-month academic salary for **Assistant Professors**, **Associate Professors** and **Professors** in a college in the U.S.





```{=html}
<div id="batfwgtgls" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#batfwgtgls table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#batfwgtgls thead, #batfwgtgls tbody, #batfwgtgls tfoot, #batfwgtgls tr, #batfwgtgls td, #batfwgtgls th {
  border-style: none;
}

#batfwgtgls p {
  margin: 0;
  padding: 0;
}

#batfwgtgls .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#batfwgtgls .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#batfwgtgls .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#batfwgtgls .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#batfwgtgls .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#batfwgtgls .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#batfwgtgls .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#batfwgtgls .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#batfwgtgls .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#batfwgtgls .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#batfwgtgls .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#batfwgtgls .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#batfwgtgls .gt_spanner_row {
  border-bottom-style: hidden;
}

#batfwgtgls .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#batfwgtgls .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#batfwgtgls .gt_from_md > :first-child {
  margin-top: 0;
}

#batfwgtgls .gt_from_md > :last-child {
  margin-bottom: 0;
}

#batfwgtgls .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#batfwgtgls .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#batfwgtgls .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#batfwgtgls .gt_row_group_first td {
  border-top-width: 2px;
}

#batfwgtgls .gt_row_group_first th {
  border-top-width: 2px;
}

#batfwgtgls .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#batfwgtgls .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#batfwgtgls .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#batfwgtgls .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#batfwgtgls .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#batfwgtgls .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#batfwgtgls .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#batfwgtgls .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#batfwgtgls .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#batfwgtgls .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#batfwgtgls .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#batfwgtgls .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#batfwgtgls .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#batfwgtgls .gt_left {
  text-align: left;
}

#batfwgtgls .gt_center {
  text-align: center;
}

#batfwgtgls .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#batfwgtgls .gt_font_normal {
  font-weight: normal;
}

#batfwgtgls .gt_font_bold {
  font-weight: bold;
}

#batfwgtgls .gt_font_italic {
  font-style: italic;
}

#batfwgtgls .gt_super {
  font-size: 65%;
}

#batfwgtgls .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#batfwgtgls .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#batfwgtgls .gt_indent_1 {
  text-indent: 5px;
}

#batfwgtgls .gt_indent_2 {
  text-indent: 10px;
}

#batfwgtgls .gt_indent_3 {
  text-indent: 15px;
}

#batfwgtgls .gt_indent_4 {
  text-indent: 20px;
}

#batfwgtgls .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="rank">rank</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="discipline">discipline</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="yrs.since.phd">yrs.since.phd</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="yrs.service">yrs.service</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="sex">sex</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="salary">salary</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">1</th>
<td headers="stub_1_1 rank" class="gt_row gt_left">Prof</td>
<td headers="stub_1_1 discipline" class="gt_row gt_left">B</td>
<td headers="stub_1_1 yrs.since.phd" class="gt_row gt_right">19</td>
<td headers="stub_1_1 yrs.service" class="gt_row gt_right">18</td>
<td headers="stub_1_1 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_1 salary" class="gt_row gt_right">139750</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">2</th>
<td headers="stub_1_2 rank" class="gt_row gt_left">Prof</td>
<td headers="stub_1_2 discipline" class="gt_row gt_left">B</td>
<td headers="stub_1_2 yrs.since.phd" class="gt_row gt_right">20</td>
<td headers="stub_1_2 yrs.service" class="gt_row gt_right">16</td>
<td headers="stub_1_2 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_2 salary" class="gt_row gt_right">173200</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">3</th>
<td headers="stub_1_3 rank" class="gt_row gt_left">AsstProf</td>
<td headers="stub_1_3 discipline" class="gt_row gt_left">B</td>
<td headers="stub_1_3 yrs.since.phd" class="gt_row gt_right">4</td>
<td headers="stub_1_3 yrs.service" class="gt_row gt_right">3</td>
<td headers="stub_1_3 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_3 salary" class="gt_row gt_right">79750</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">4</th>
<td headers="stub_1_4 rank" class="gt_row gt_left">Prof</td>
<td headers="stub_1_4 discipline" class="gt_row gt_left">B</td>
<td headers="stub_1_4 yrs.since.phd" class="gt_row gt_right">45</td>
<td headers="stub_1_4 yrs.service" class="gt_row gt_right">39</td>
<td headers="stub_1_4 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_4 salary" class="gt_row gt_right">115000</td></tr>
    <tr><th id="stub_1_5" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">5</th>
<td headers="stub_1_5 rank" class="gt_row gt_left">Prof</td>
<td headers="stub_1_5 discipline" class="gt_row gt_left">B</td>
<td headers="stub_1_5 yrs.since.phd" class="gt_row gt_right">40</td>
<td headers="stub_1_5 yrs.service" class="gt_row gt_right">41</td>
<td headers="stub_1_5 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_5 salary" class="gt_row gt_right">141500</td></tr>
    <tr><th id="stub_1_6" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier; font-size: x-small; background-color: #E4E4E4;">6..396</th>
<td headers="stub_1_6 rank" class="gt_row gt_left" style="background-color: #E4E4E4;"></td>
<td headers="stub_1_6 discipline" class="gt_row gt_left" style="background-color: #E4E4E4;"></td>
<td headers="stub_1_6 yrs.since.phd" class="gt_row gt_right" style="background-color: #E4E4E4;"></td>
<td headers="stub_1_6 yrs.service" class="gt_row gt_right" style="background-color: #E4E4E4;"></td>
<td headers="stub_1_6 sex" class="gt_row gt_left" style="background-color: #E4E4E4;"></td>
<td headers="stub_1_6 salary" class="gt_row gt_right" style="background-color: #E4E4E4;"></td></tr>
    <tr><th id="stub_1_7" scope="row" class="gt_row gt_right gt_stub" style="font-family: Courier;">397</th>
<td headers="stub_1_7 rank" class="gt_row gt_left">AsstProf</td>
<td headers="stub_1_7 discipline" class="gt_row gt_left">A</td>
<td headers="stub_1_7 yrs.since.phd" class="gt_row gt_right">8</td>
<td headers="stub_1_7 yrs.service" class="gt_row gt_right">4</td>
<td headers="stub_1_7 sex" class="gt_row gt_left">Male</td>
<td headers="stub_1_7 salary" class="gt_row gt_right">81035</td></tr>
  </tbody>
  
  
</table>
</div>
```


## Categorical variables with two levels

Since now we have pretty much seen regression with only numeric predictors, but the most of the times you are going to deal with categorical predictors like we did for regression in `iris` dataset.

Recall that, the regression equation, for predicting an outcome variable $Y$ on the basis of a predictor variable $X$, can be simply written as $Y = \alpha + \beta_1*X$. 

Suppose that, we wish to investigate differences in salaries between males and females.

Based on the gender variable, we can create a new dummy variable that takes the value:

- **1** if a person is male
- **0** if a person is female

and use this variable as a predictor in the regression equation, leading to the following the model:

- $\alpha + \beta_1$ if person is male
- $\alpha$ if person is female

The coefficients can be interpreted as follow:

- $\alpha$ is the average salary among females,
- $\alpha + \beta_1$ is the average salary among males,
- and $\beta_1$ is the average difference in salary between males and females.


For simple demonstration purpose, the following example models the salary difference between males and females by computing a simple linear regression model on the `Salaries` data set.
R creates dummy variables automatically:


```r
model <- lm(salary ~ sex, data = Salaries)
summary(model)$coef
#>              Estimate Std. Error   t value
#> (Intercept) 101002.41   4809.386 21.001103
#> sexMale      14088.01   5064.579  2.781674
#>                                                                               Pr(>|t|)
#> (Intercept) 0.000000000000000000000000000000000000000000000000000000000000000002683482
#> sexMale     0.005667106519338906828187063524637778755277395248413085937500000000000000
```

From the output above, the average salary for female is estimated to be **101002**, whereas males are estimated a total of **101002** + **14088** = **115090**.

The p-value for the dummy variable sexMale is very significant, suggesting that there is a statistical evidence of a **difference in average salary between the genders.**


What happened is taht R has created a `sexMale` dummy variable that takes on a value of 1 if the sex is Male, and 0 otherwise (Females). The decision to code males as *1* and females as *0* (baseline) is arbitrary, and has no effect on the regression computation, but does alter the interpretation of the coefficients.

If you are willign to change the factor orders than you may expect to find a negative coefficient for `SexFemale.`


## Categorical variables with more than **two** levels

Generally, a categorical variable with $n$ levels will be transformed into n-1 variables each with two levels. These $n-1$ new variables contain the same information than the single variable. 

Lets take for example rank in the Salaries data has three levels: `AsstProf`, `AssocProf` and `Prof.` This variable could be dummy coded into two variables, one called `AssocProf` and one `Prof` (i.e. $n-1$)
That is to say:

- If rank = `AssocProf`, then the column `AssocProf` would be coded with a 1 and `Prof` with a 0.
- If rank = `Prof`, then the column `AssocProf` would be coded with a 0 and `Prof` would be coded with a 1.
- If rank = `AsstProf`, then both columns `AssocProf` and `Prof` would be coded with a 0.


This dummy coding is automatically performed by R. For demonstration purpose, you can use the function model.matrix() to create a contrast matrix for a factor variable, this is how it would look like (remember R handles that for you):



```r
res <- model.matrix(~rank, data = Salaries)
head(res[, -1])
#>   rankAssocProf rankProf
#> 1             0        1
#> 2             0        1
#> 3             0        0
#> 4             0        1
#> 5             0        1
#> 6             1        0
```


When building linear model, there are different ways to encode categorical variables, known as contrast coding systems. The default option in R is to use the first level of the factor as a reference and interpret the remaining levels relative to this level.

Now let's fit the model and see results:


```r
library(car)
model2 <- lm(salary ~ yrs.service + rank + discipline + sex,
             data = Salaries)
summary(model2)
#> 
#> Call:
#> lm(formula = salary ~ yrs.service + rank + discipline + sex, 
#>     data = Salaries)
#> 
#> Residuals:
#>    Min     1Q Median     3Q    Max 
#> -64202 -14255  -1533  10571  99163 
#> 
#> Coefficients:
#>               Estimate Std. Error t value
#> (Intercept)   68351.67    4482.20  15.250
#> yrs.service     -88.78     111.64  -0.795
#> rankAssocProf 14560.40    4098.32   3.553
#> rankProf      49159.64    3834.49  12.820
#> disciplineB   13473.38    2315.50   5.819
#> sexMale        4771.25    3878.00   1.230
#>                           Pr(>|t|)    
#> (Intercept)   < 0.0000000000000002 ***
#> yrs.service               0.426958    
#> rankAssocProf             0.000428 ***
#> rankProf      < 0.0000000000000002 ***
#> disciplineB           0.0000000124 ***
#> sexMale                   0.219311    
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 22650 on 391 degrees of freedom
#> Multiple R-squared:  0.4478,	Adjusted R-squared:  0.4407 
#> F-statistic: 63.41 on 5 and 391 DF,  p-value: < 0.00000000000000022
```

For example, it can be seen that being from discipline B (applied departments) is significantly associated with an average increase of 13473.38 in salary compared to discipline A (theoretical departments).

## oh there's another way to say this.. **OneHotEconding**

One-hot encoding is the process of converting a categorical variable with multiple categories into multiple variables, each with a value of 1 or 0. There are many packages that does that even if R handles that for you.

For the methods outlined below, the following simple dataframe will be required:


```r
set.seed(28)

data <- data.frame(
  Outcome = seq(1,100,by=1),
  Variable = sample(c("Red","Green","Blue"), 100, replace = TRUE)
)
```

Now starting from this dataframe you can one hot encode i.e. convert factors to 0s and 1s such as:



```r
library(caret)
#> Loading required package: ggplot2
#> Loading required package: lattice

dummy <- dummyVars(" ~ .", data=data)
newdata <- data.frame(predict(dummy, newdata = data)) 
```


## handling factors in R

Factors are used to represent categorical data. Factors can be ordered or unordered and are an important class for statistical analysis and for plotting.

Factors are stored as integers, and have labels associated with these unique integers. While factors look (and often behave) like character vectors, they are actually integers under the hood, and you need to be careful when treating them like strings.

Once created, factors can only contain a pre-defined set values, known as levels. By default, R always sorts levels in alphabetical order. For instance, if you have a factor with 2 levels:



```r
sex <- factor(c("male", "female", "female", "male"))
levels(sex)
#> [1] "female" "male"
```


```r
nlevels(sex)
#> [1] 2
```

now with 3


```r
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
#> [1] "high"   "low"    "medium"
```



## exercises


::: {.exercise #dv1}

Suppose you have a dataset with a categorical variable named "color" that has the following levels: "Red," "Blue," "Green," and "Yellow." Create a set of dummy variables for this categorical variable in R, making sure to use the appropriate method for encoding these levels.

:::


```r
# Create a sample dataset
your_dataset <- data.frame(
  color = c("Red", "Blue", "Green", "Yellow", "Red")
)
```



::: {.exercise #dv2}

Using the "Salaries" dataset, perform a linear regression analysis to investigate the effect of "discipline" (with levels "A" and "B") on salary. Interpret the coefficients for each level of "discipline."


:::


::: {.exercise #dv3}

Suppose you have a dataset with two categorical variables, "region" and "language," and you want to apply one-hot encoding to both variables. Provide R code to perform one-hot encoding for both variables simultaneously.


:::



```r
# Create a sample dataset
your_dataset <- data.frame(
  region = c("North", "South", "East", "West"),
  language = c("English", "Spanish", "French", "German")
)
```


::: {.exercise #dv4}

You have a dataset with an ordered factor variable "size" representing "Small," "Medium," and "Large" sizes. How can you change the order of levels to "Large," "Medium," and "Small"? Provide R code to modify the factor levels.

:::


```r
# Create a sample dataset
your_dataset <- data.frame(
  size = factor(c("Small", "Medium", "Large", "Small", "Large"), ordered = TRUE)
)
```


## solutions

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:dv1):

You can create dummy variables for the "color" variable using the `model.matrix` function as follows:

    
    # Create dummy variables for color
    color_dummies <- model.matrix(~ color - 1, data = your_dataset)
    colnames(color_dummies) <- levels(your_dataset$color)


:::



::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:dv2):

You can perform the linear regression analysis and interpret the coefficients for the "discipline" levels as follows:

    # Fit the linear regression model
    model4 <- lm(salary ~ discipline, data = Salaries)
    summary(model4)
    
    # Interpretation of coefficients


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:dv3):

You can apply one-hot encoding to multiple categorical variables simultaneously using the `dummyVars` function from the `caret` package as follows:

    
    # Load the necessary packages
    library(caret)
    
    # Apply one-hot encoding for "region" and "language"
    dummy <- dummyVars("~ region + language", data = your_dataset)
    newdata <- data.frame(predict(dummy, newdata = your_dataset))


:::


::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:dv4):


You can change the order of levels in the ordered factor variable "size" as follows:

    # Change the order of factor levels
    your_dataset$size <- factor(your_dataset$size, levels = c("Large", "Medium", "Small"), ordered = TRUE)
    
This code will reorder the levels of the "size" factor variable as specified.

:::



