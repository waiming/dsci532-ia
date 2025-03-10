# DSCI532 Individual Assignment: Interactive MTCARS Dashboard

## Motivation

Target audience: Car enthusiasts and automotive analysts

Understanding the relationship between horsepower (HP) and miles per gallon (MPG) is crucial for car buyers, manufacturers, and analysts who want to balance performance with fuel efficiency. This interactive dashboard allows users to visually explore the MTCARS dataset and analyze the trade-offs between power and efficiency.

Users can:
- Filter cars based on horsepower, MPG, and cylinder count.
- Hover over points to see car name, HP, and MPG.
- Compare different cars to make informed decisions about performance and fuel consumption.

This tool is useful for buyers looking for fuel-efficient yet powerful cars, and automotive analysts seeking trends in vehicle performance.

## App description
Instead of writing a long description, a short demo video showcasing the app is included. The video highlights:
- Interactive visualization of HP vs. MPG.
- Filtering options for HP, MPG, and cylinders.
- Tooltip display for car name, HP, and MPG.

## Installation instructions
To run the dashboard locally, follow these steps:

### **1 Clone the repository**
```bash
git clone https://github.com/yourusername/dsci532-ia.git
cd dsci532-ia
```
### **2 Set Up the Conda Environment**
Create a virtual environment with all required R packages:
```bash
conda env create -f environment.yml
```
Then, activate it:
```bash
conda activate dsci532-mtcars
```
### **3 Run the Shiny App**
Open R inside the activated conda environment and run:
```r
library(shiny)
runApp("app.R")
```

###OR you can access the website: https://dsci532-mtcarsdash.shinyapps.io/MTCARS/
