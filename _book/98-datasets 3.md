# Datasets {#appendixdatasets}

This section provides information about the datasets used throughout the course. These datasets come from various R packages and are commonly used in statistical analysis and data science education.

## Built-in R Datasets

### `mtcars` - Motor Trend Car Road Tests
**Package**: `datasets`  
**Description**: Data extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

**Variables**:
- `mpg`: Miles/(US) gallon
- `cyl`: Number of cylinders
- `disp`: Displacement (cu.in.)
- `hp`: Gross horsepower
- `drat`: Rear axle ratio
- `wt`: Weight (1000 lbs)
- `qsec`: 1/4 mile time
- `vs`: Engine (0 = V-shaped, 1 = straight)
- `am`: Transmission (0 = automatic, 1 = manual)
- `gear`: Number of forward gears
- `carb`: Number of carburetors

### `iris` - Edgar Anderson's Iris Data
**Package**: `datasets`  
**Description**: Famous dataset giving the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris.

**Variables**:
- `Sepal.Length`: Sepal length in cm
- `Sepal.Width`: Sepal width in cm
- `Petal.Length`: Petal length in cm
- `Petal.Width`: Petal width in cm
- `Species`: Species of iris (setosa, versicolor, virginica)

### `cars` - Speed and Stopping Distances of Cars
**Package**: `datasets`  
**Description**: The data give the speed of cars and the distances taken to stop.

**Variables**:
- `speed`: Speed (mph)
- `dist`: Stopping distance (ft)

## Course-Specific Datasets

### `bikeshare.csv` - Bike Sharing Data
**File**: `data/bikeshare.csv`  
**Description**: Dataset containing bike sharing information with various weather and temporal features.

**Variables**:
- `datetime`: Date and time
- `season`: Season (1:spring, 2:summer, 3:fall, 4:winter)
- `holiday`: Whether day is holiday or not
- `workingday`: If day is neither weekend nor holiday
- `weather`: Weather situation (1: Clear, 2: Mist, 3: Light Snow/Rain, 4: Heavy Rain)
- `temp`: Temperature in Celsius
- `atemp`: "Feels like" temperature in Celsius
- `humidity`: Relative humidity
- `windspeed`: Wind speed
- `casual`: Count of casual users
- `registered`: Count of registered users
- `count`: Count of total rental bikes

### `stroke_data.csv` - Stroke Prediction Data
**File**: `data/stroke_data.csv`  
**Description**: Dataset for predicting stroke occurrence based on various health indicators.

**Variables**:
- `id`: Unique identifier
- `gender`: Gender
- `age`: Age
- `hypertension`: Hypertension (0: No, 1: Yes)
- `heart_disease`: Heart disease (0: No, 1: Yes)
- `ever_married`: Ever married (No, Yes)
- `work_type`: Type of work
- `Residence_type`: Residence type (Rural, Urban)
- `avg_glucose_level`: Average glucose level
- `bmi`: Body mass index
- `smoking_status`: Smoking status
- `stroke`: Stroke (0: No, 1: Yes)

### `coronary.dta` - Coronary Heart Disease Data
**File**: `data/coronary.dta`  
**Description**: Dataset containing information about coronary heart disease patients.

**Variables**:
- Various medical and demographic variables related to coronary heart disease
- Used for survival analysis and medical statistics

## How to Access Datasets

### Built-in R Datasets

```r
# Load built-in datasets
data(mtcars)
data(iris)
data(cars)

# View dataset structure
str(mtcars)
head(mtcars)
```

### Course Datasets

```r
# Load course datasets
bikeshare <- read.csv("data/bikeshare.csv")
stroke_data <- read.csv("data/stroke_data.csv")

# View dataset structure
str(bikeshare)
head(bikeshare)
```

## Dataset Usage in Course

- **mtcars**: Used for linear regression examples and correlation analysis
- **iris**: Used for classification, clustering, and ANOVA examples
- **cars**: Used for simple linear regression demonstrations
- **bikeshare**: Used for time series analysis and multiple regression
- **stroke_data**: Used for logistic regression and classification examples
- **coronary**: Used for survival analysis examples

## Additional Resources

For more information about these datasets:
- R documentation: `?mtcars`, `?iris`, `?cars`
- Course materials and exercises
- Statistical analysis examples in course chapters
