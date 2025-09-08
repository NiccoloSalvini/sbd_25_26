# 💻 Binary LogReg exer {#log-reg-ex}

These are a collection of exercises concerning linear regression stuff! Some of them are actually  (noised chaging data) samples from the exam, so dig into it 🦫! Some of them will be done in class during lecture, some others are left to you as a to-do-at-home exer.

In class if you are stuck either ask to the teacher or assemble a group to work with! Collaboration in key 👯‍♂️!


## mixed Exercises 👨‍💻

::: {#logreg .exercise}

Load the `MASS` package and combine `Pima.tr` and `Pima.tr2` to a data.frame called `train` and save `Pima.te` as `test.` Change the coding of our variable of interest to (type) to 0 (non-diabetic) and 1 (diabetic). Check for and take note of any missing values.

Using the `glm()` and the train data fit a logistic model of type on age and bmi. Print out the coefficients and their p-value.

:::

As you do with linear regression you just specify first the model formula, then data and the end the link. The link is actually the logistic (logit). 

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:logreg):

    library(MASS)
    library(ggplot2)
    
    train <- rbind(Pima.tr, Pima.tr2)
    test  <- Pima.te
    
    train$type <- as.integer(train$type) - 1L
    test$type <- as.integer(test$type) - 1L
 
Missing values?

    sapply(train, function(x) sum(is.na(x)))
    
Estimate the Logistic regression a) formula b) data c)  family = binomial :

    lg1 <- glm(type ~ age + bmi, data = train, family = binomial)
    summary(lg1)$coefficients[, c(1, 4)]


:::


------


::: {#logreg2 .exercise}

Take into considerationd data from the "two truths and a lie" experiment described at the beginning of these lesson are available from `two-truths-and-a-lie-2022-cleaned.csv` in the `data` directory of my website:

Read the dataset directly into R from the web, storing it in a data.frame called two_truthshttps://ditraglia.com/data/

Run a logistic regression that predicts `guessed_right` based on `certainty.` Is that coef stat significant?

:::

As you may see the estimated coefficient for certainty is negative! This means that on average we predict more wrong guesses as students' subjective certainty in their guesses increases.

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:logreg2):

This needs to read the data:

    library(tidyverse)
    data_url <- 'https://ditraglia.com/data/two-truths-and-a-lie-2022-cleaned.csv'
    two_truths <- read_csv(data_url)

this to perform log reg:

    two_truths_reg <- glm(guessed_right ~ certainty, family = binomial(link = 'logit'),
                          data = two_truths)
    summary(two_truths_reg)

:::


------



::: {#logreg3 .exercise}


`BreastCancer` is a  data frame with 699 observations on 11 variables, one being a character variable, 9 being ordered or nominal, and 1 target class. and it is in `mlbench` package. The objective is to identify each of a number of benign or malignant classes. Samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this chronological grouping of the data. This grouping information appears immediately below, having been removed from the data itself. Each variable except for the first was converted into 11 primitive numerical attributes with values ranging from 0 through 10. There are 16 missing attribute values. See cited below for more details.

:::

commento prima dell'esercizio

::: {.answer data-latex=""}
**Answer to Question** \@ref(exr:logreg3):

At first tou load the data. 

    data(BreastCancer, package="mlbench")
    bc <- BreastCancer[complete.cases(BreastCancer), ]

then you take a glance of it

    str(bc)

in the end you fit a model:

    glm(Class ~ Cell.shape, family="binomial", data = bc)

:::


------




