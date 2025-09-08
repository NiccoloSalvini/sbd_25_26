--- 
title: "Statistics & Big Data 24-25 Labs"
author: "Dr. Niccolò Salvini"
date: "2024-10-26"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  This is a minimal course website containing class materials for  Statistics & Big Data labs @ucsc.
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
---

# 🫶 About

<img src="images/cattolica-logo.png" class= "cover" width="250" height="250"/> This is the official course website for Statistics & Big data @UCSC 2024 - 2025 for laboratories. This website augments lecture topics and provides exercises for home and class assignments. Additional theory wrt slides and textbook will not be part of the exam, indeed they are for your growth and hopefully in the future as quicksilver resource to recover R proficiency from lethargy. 


## 🔧 Logistics {#logistics}

- **Lectures**: Mon 14:00 - 14:00 CET, room: 101 (?!) Class: 75% lectures, 25% tutorials.
- **Location**: Campus Gemelli /optionally remote 
- **Office hours**:
  - Prof Giuseppe **Arbia** : Mon 12:00 - 13:00 CET
  - Prof Sophie **Dabo-Niang**: -- . --
  - Dr. Niccolò **Salvini**: office times = lecture times (reach me by <ins>[email](mailto:niccolo.salvini27@gmail.com))</ins>
- here's the [shared drive](https://drive.google.com/drive/folders/10ua4d1_5JjQYQpKTz8sxYsdsOXCgiYB3?usp=sharing) (slides notebooks extra in class)

<!--- - **Grading**:
  one final project to build an ML application (65%). We'll have a demo day to showcase all students' final projects. See last year projects here two to three fun, short assignments (30%) discussion participation in class + EdStem + OHs (5%) --->


## 👥 Team {#team}

<style type="text/css">

.instructor {
    display: inline-block;
    width: 160px;
    text-align: center;
    margin-right: 20px;
    margin-bottom: 10px;
    font-size: 17px;
    vertical-align: top;
}


.instructorphoto img {
    width: 150px;
    border-radius: 140px;
    margin-bottom: 10px;
}

.col-md-2, .col-md-6 {
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}

</style>



````{=html}
<div class="row">
            <div class="col-md-2">
                <h3>Instructor</h3>
                <div class="instructor">
                    <a href="https://docenti.unicatt.it/ppd2/en/docenti/35215/giuseppe-arbia/profilo">
                        <div class="instructorphoto"><img src="images/arbia.jpeg"></div>
                        <div>Prof. Giuseppe Arbia</div>
                    </a>
                </div>
            </div>
            <div class="col-md-2">
                <h3>Instructor</h3>
                <div class="instructor">
                    <a href="https://sites.google.com/view/sophie-dabo-niang/">
                        <div class="instructorphoto"><img src="images/dabo-niang.png"></div>
                        <div>Prof. Sophie Dabo-Niang </div>
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <h3>TAs</h3>
                <div class="instructor">
                    <a href="https://niccolosalvini.me">
                        <div class="instructorphoto"><img src="images/salvini.jpeg"></div>
                        <div>Dr. Niccolò Salvini</div>
                    </a>
                </div>
            </div>
        </div>
````


## 🗒 labs' contents {#labs-content}

- Introduction to the R ecosystem.
  - Install R
  - Install R Studio and how it works
  - Some R tricks that might be useful in your reasearch and professional life
  - data wrangling with R
- Basic statistics (Descriptive statistics. Point and interval estimation, test of statistical hypotheses on an average and on a percentage).
- Hypothesis testing on 2 averages and 2 percentages. - Hypothesis testing on more than 2 averages (ANOVA) and on more than 2 percentages (CHI square). 
- Multiple linear regression model. 
- Nonlinear regression.
- Regression with dummy variables.
- Binomial and multinomial logistic regression. Factor analysis. Cluster analysis. 

<!---
- Other supervised classification models: outline of regression trees approach (CART), CHAID, C.5, Random Forest, and Gradient Boosting classification algorithms; Bagging, Boosting and other ensembling techniques; Approach to the evaluation criteria of a binary classification model. 
--->



## Exam 📝

The exam is going to be open and closed questions on theory and practice (coding part). You will be asked to provide results and sometimes code leading to these results. You can also be asked to directly provide code to solve for that exercise. The exam is going to take place in labs classroom, this means you are **not** going to have your laptop during the exam. We generally don't provide assignment neither group works. Indeed we provide intermediate exams for those who want to try them.

we are going to have **2 intermediate sessions** exams on half of the whole content of the course. This means:
- _first intermediate_: will happen typically on **November** and will be on Prof. Arbia contents (as well as labs)
- _second intermediate_: will happen in **January** on contents taught by hosting teacher (as well as labs)

you can take first intermediate and take the second on each exam date within the winter session, meaning you take part 1 in Nov and part 2 in either Jan and Feb. You can **not** reject intermediates, that means if you take first part, try the second and did not perform well, you need to take the full. Grades may undergo to a review process before being official if they are particularly low. This has happened quite often, but it does not happen every time. 


## 📚 Suggested reading list {#suggested-reading}

I am going to split resources by the expected level of their audience: 

### Minimal or 0 knowledge of R

- Everitt, B., Hothorn, T. (2011) An Introduction to Applied Multivariate Analysis with R, Springer-Verlag
- James, G, Witten, D, Hastie, T and Tibshirani, R, (2015) An Introduction to Statistical Learning, with Applications in R
- T. Timbers, T. Campbell, M. Lee  Data Science: A First Introduction, Jul 2022 [online version](https://datasciencebook.ca/)
- Wickham, H., Grolemund G. (2018) R for Data Science, O’Reilly. Freely available  on-line at https://r4ds.had.co.nz/index.html
- R for non-programmers, Daniel Dauber 2022, [free book](https://bookdown.org/daniel_dauber_io/r4np_book/starting-your-r-projects.html) 

### Advanced knowledge of R to become a top G

- Reproducible Medical Research with R,Peter D.R. Higgins, MD, PhD, MSc, 2022, [free book](https://bookdown.org/pdr_higgins/rmrwr/)
- Fundamentals of Wrangling Healthcare Data with R, J. Kyle Armstrong 2022, [free book](https://bookdown.org/jkylearmstrong/jeff_data_wrangling/) **Advanced**
- Wickham H. (2015). Advanced r. CRC Press [free book](https://adv-r.hadley.nz/)


## 📜 Honor Code {#honorcode}
Permissive but strict. If unsure, please ask the course staff!

- <span style="color: red;"><b>NOT OKAY</b></span> Pleeease, I am using ChatGPT and its derivatives on a daily basis. I understand, it's awesome and we are not enforcing any rule against it a home. Don't do that during the exam.
- <span style="color: green;"><b>OK</b></span> to search, ask in public about the systems we’re studying. Cite all the resources you reference.
E.g. if you read it in a paper, cite it. If you ask on Quora, include the link.
- <span style="color: red;"><b>NOT OKAY</b></span> to ask someone to do assignments/projects for you, we are monitoring freelancing websites, we have a plethora of bots doing this job daily.
- <span style="color: green;"><b>OK</b></span> to discuss questions with classmates. Disclose your discussion partners.
- <span style="color: red;"><b>NOT OKAY</b></span> to blindly copy solutions from classmates.
- <span style="color: green;"><b>OK</b></span> to use existing solutions as part of your projects/assignments. Clarify your contributions.
- <span style="color: red;"><b>NOT OKAY</b></span> to pretend that someone’s solution is yours.
- <span style="color: green;"><b>OK</b></span> to publish your final project after the course is over (we encourage that and if you need it I would love to help you!)
- <span style="color: red;"><b>NOT OKAY</b></span> to post your assignment solutions online.

## QR code time!


<img src="images/qr-code.png" width="100%" />

## Colophon {#intro-colophon}

This book was authored using [bookdown](https://bookdown.org/) inside [RStudio](https://www.rstudio.com/products/rstudio/) with [bs4 theme](https://pkgs.rstudio.com/bookdown/reference/bs4_book.html)
The [website](sbd-labs-23-24.netlify.app) is hosted with [Netlify](https://www.netlify.com), and automatically updated after Netlify CI.
The complete source is available from [GitHub](https://github.com/NiccoloSalvini/sbd_23-24).

This version of the book was built with:


```r
library(devtools)
#> Loading required package: usethis
library(roxygen2)
library(testthat)
#> 
#> Attaching package: 'testthat'
#> The following object is masked from 'package:devtools':
#> 
#>     test_file
#> The following object is masked from 'package:dplyr':
#> 
#>     matches
devtools::session_info()
#> ─ Session info ───────────────────────────────────────────
#>  setting  value
#>  version  R version 4.2.0 (2022-04-22)
#>  os       macOS 14.5
#>  system   aarch64, darwin20
#>  ui       X11
#>  language (EN)
#>  collate  en_US.UTF-8
#>  ctype    en_US.UTF-8
#>  tz       Europe/Rome
#>  date     2024-10-26
#>  pandoc   3.1.1 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/ (via rmarkdown)
#> 
#> ─ Packages ───────────────────────────────────────────────
#>  package      * version    date (UTC) lib source
#>  bookdown       0.29       2022-09-12 [1] CRAN (R 4.2.0)
#>  brio           1.1.3      2021-11-30 [1] CRAN (R 4.2.0)
#>  bslib          0.5.1      2023-08-11 [1] CRAN (R 4.2.0)
#>  cachem         1.0.8      2023-05-01 [1] CRAN (R 4.2.0)
#>  callr          3.7.3      2022-11-02 [1] CRAN (R 4.2.0)
#>  cli            3.6.2      2023-12-11 [1] CRAN (R 4.2.3)
#>  colorspace     2.1-0      2023-01-23 [1] CRAN (R 4.2.0)
#>  crayon         1.5.2      2022-09-29 [1] CRAN (R 4.2.0)
#>  desc           1.4.2      2022-09-08 [1] CRAN (R 4.2.0)
#>  devtools     * 2.4.3      2021-11-30 [1] CRAN (R 4.2.0)
#>  digest         0.6.33     2023-07-07 [1] CRAN (R 4.2.0)
#>  downlit        0.4.2      2022-07-05 [1] CRAN (R 4.2.0)
#>  dplyr        * 1.1.2      2023-04-20 [1] CRAN (R 4.2.0)
#>  ellipsis       0.3.2      2021-04-29 [1] CRAN (R 4.2.0)
#>  evaluate       0.22       2023-09-29 [1] CRAN (R 4.2.0)
#>  fansi          1.0.4      2023-01-22 [1] CRAN (R 4.2.0)
#>  fastmap        1.1.1      2023-02-24 [1] CRAN (R 4.2.0)
#>  fs             1.6.3      2023-07-20 [1] CRAN (R 4.2.0)
#>  generics       0.1.3      2022-07-05 [1] CRAN (R 4.2.0)
#>  glue         * 1.6.2      2022-02-24 [1] CRAN (R 4.2.0)
#>  htmltools      0.5.6.1    2023-10-06 [1] CRAN (R 4.2.0)
#>  httr           1.4.6      2023-05-08 [1] CRAN (R 4.2.0)
#>  jquerylib      0.1.4      2021-04-26 [1] CRAN (R 4.2.0)
#>  jsonlite       1.8.7      2023-06-29 [1] CRAN (R 4.2.0)
#>  kableExtra   * 1.3.4.9000 2023-06-01 [1] Github (kupietz/kableExtra@3bf9b21)
#>  knitr        * 1.44       2023-09-11 [1] CRAN (R 4.2.0)
#>  lifecycle      1.0.3      2022-10-07 [1] CRAN (R 4.2.0)
#>  lubridate    * 1.9.2      2023-02-10 [1] CRAN (R 4.2.0)
#>  magrittr       2.0.3      2022-03-30 [1] CRAN (R 4.2.0)
#>  memoise        2.0.1      2021-11-26 [1] CRAN (R 4.2.0)
#>  munsell        0.5.0      2018-06-12 [1] CRAN (R 4.2.0)
#>  pillar         1.9.0      2023-03-22 [1] CRAN (R 4.2.0)
#>  pkgbuild       1.4.2      2023-06-26 [1] CRAN (R 4.2.0)
#>  pkgconfig      2.0.3      2019-09-22 [1] CRAN (R 4.2.0)
#>  pkgload        1.2.4      2021-11-30 [1] CRAN (R 4.2.0)
#>  prettyunits    1.1.1      2020-01-24 [1] CRAN (R 4.2.0)
#>  processx       3.8.1      2023-04-18 [1] CRAN (R 4.2.0)
#>  ps             1.7.5      2023-04-18 [1] CRAN (R 4.2.0)
#>  purrr          1.0.2      2023-08-10 [1] CRAN (R 4.2.0)
#>  R6             2.5.1      2021-08-19 [1] CRAN (R 4.2.0)
#>  remotes        2.4.2      2021-11-30 [1] CRAN (R 4.2.0)
#>  rlang          1.1.2      2023-11-04 [1] CRAN (R 4.2.0)
#>  rmarkdown      2.25       2023-09-18 [1] CRAN (R 4.2.0)
#>  roxygen2     * 7.2.0      2022-05-13 [1] CRAN (R 4.2.0)
#>  rprojroot      2.0.3      2022-04-02 [1] CRAN (R 4.2.0)
#>  rstudioapi     0.14       2022-08-22 [1] CRAN (R 4.2.0)
#>  rvest          1.0.3      2022-08-19 [1] CRAN (R 4.2.0)
#>  sass           0.4.6      2023-05-03 [1] CRAN (R 4.2.0)
#>  scales         1.2.1      2022-08-20 [1] CRAN (R 4.2.0)
#>  sessioninfo    1.2.2      2021-12-06 [1] CRAN (R 4.2.0)
#>  stringi        1.7.12     2023-01-11 [1] CRAN (R 4.2.0)
#>  stringr        1.5.0      2022-12-02 [1] CRAN (R 4.2.0)
#>  svglite        2.1.1      2023-01-10 [1] CRAN (R 4.2.0)
#>  systemfonts    1.0.4      2022-02-11 [1] CRAN (R 4.2.0)
#>  testthat     * 3.1.4      2022-04-26 [1] CRAN (R 4.2.0)
#>  tibble         3.2.1      2023-03-20 [1] CRAN (R 4.2.0)
#>  tidyselect     1.2.0      2022-10-10 [1] CRAN (R 4.2.0)
#>  timechange     0.2.0      2023-01-11 [1] CRAN (R 4.2.0)
#>  usethis      * 2.1.6      2022-05-25 [1] CRAN (R 4.2.0)
#>  utf8           1.2.3      2023-01-31 [1] CRAN (R 4.2.0)
#>  vctrs          0.6.3      2023-06-14 [1] CRAN (R 4.2.0)
#>  viridisLite    0.4.2      2023-05-02 [1] CRAN (R 4.2.0)
#>  webexercises * 1.0.0      2021-09-15 [1] CRAN (R 4.2.0)
#>  webshot        0.5.4      2022-09-26 [1] CRAN (R 4.2.0)
#>  withr          2.5.1      2023-09-26 [1] CRAN (R 4.2.0)
#>  xfun           0.40       2023-08-09 [1] CRAN (R 4.2.0)
#>  xml2           1.3.4      2023-04-27 [1] CRAN (R 4.2.0)
#>  yaml           2.3.7      2023-01-23 [1] CRAN (R 4.2.0)
#> 
#>  [1] /Users/niccolo/Library/R/arm64/4.2/library
#>  [2] /Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library
#> 
#> ──────────────────────────────────────────────────────────
```
