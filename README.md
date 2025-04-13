
<!-- README.md is generated from README.Rmd. Please edit that file -->

# predict.bike

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310-2025/predict.bike/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310-2025/predict.bike/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/DSCI-310-2025/predict.bike/graph/badge.svg)](https://app.codecov.io/gh/DSCI-310-2025/predict.bike)
<!-- badges: end -->

The goal of predict.bike is to provide a workflow for a bike data set
analysis. `predict.bike` is an R package that streamlines the analysis
and prediction of bikeshare usage using a clean, reproducible workflow.
Designed with accessibility in mind, it is ideal for learners and data
science beginners looking to practice data cleaning, modeling, and
visualization with a real-world dataset. While more flexible frameworks
like `caret` and `tidymodels` offer broader applicability,
`predict.bike` focuses on a single problem and makes it easy to
understand each step of a typical ML pipeline.

## Ecosystem Context

predict.bike sits within the broader R ecosystem of machine learning and
data science packages. While powerful tools like caret, randomForest,
and tidymodels offer highly customizable workflows, predict.bike is a
lightweight, beginner-friendly alternative tailored to a specific
problem and dataset. It allows users to focus on the logic and structure
of a data analysis pipeline without needing to configure every modeling
component.

## Installation

You can install the development version of predict.bike from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("DSCI-310-2025/predict.bike")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(predict.bike)

# Load and clean raw data
bike_data <- read.csv("data/raw/bike_data.csv")
cleaned_data <- clean_bike_data(bike_data)

# Split data and train model
split <- split_data(cleaned_data)
model <- train_bike_model(split$train)

# Evaluate on test set
evaluate_model(model, split$test)

# Create a custom scatter plot
scatter <- make_scatter(cleaned_data, x = "temp", y = "cnt",
                        title = "Bike Rentals vs Temp", xlab = "Temperature",
                        ylab = "Count", color = "steelblue")
print(scatter)

# Create a custom bar plot
bar <- make_bar(cleaned_data, x = "season", y = "cnt", fill = "season",
                title = "Bike Rentals by Season", xlab = "Season",
                ylab = "Total Count", xlabels = c("1", "2", "3", "4"))
print(bar)

# Save the plot
save_plot("scatter_plot.png", output_file = "output/plots", width = 8)
```

## Main Functions

- `clean_bike_data()`: Preprocesses raw bikeshare data
- `split_data()`: Splits the data into training and test sets
- `train_bike_model()`: Trains a Random Forest model
- `evaluate_model()`: Evaluates model accuracy and predictions
- `make_scatter()`: Generates customizable scatter plots
- `make_bar()`: Creates bar plots with label and fill options
- `save_plot()`: Saves a plot to a specified output path
