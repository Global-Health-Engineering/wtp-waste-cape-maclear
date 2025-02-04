# `src`

This directory contains Stata do-files used to process and analyze the data. Due to the varying sizes of the datasets across the different stakeholder groups, the analysis approach was tailored accordingly.

## Households

To estimate the WTP of households, the double-bounded dichotomous choice contingent valuation method was used. In Stata, this can be implemented using the `doubleb` command, which allows for more precise WTP estimation by incorporating follow-up responses to initial bids. The analysis code for the household survey is split into two separate do-files:
- `household_data_clearance.do` takes the raw data of the household questionnaire as input and performs initial data clearance. It labels and renames variables and creates the necessary variables for the `doubleb` command. The output from this step is saved in the `../data/derived_data` directory.
- `households_calculations.do` uses the `derived_data` from the clearance step as an input. It further manipulates the data, creates additional dummy variables required for subsequent analyses, and calculates the willingness to pay (WTP) for the different scenarios using the doubleb command, incorporating various relevant variables in the process.

## Businesses

The analysis code for the business survey is contained in a single do-file: `businesses_data_clearance_and_analysis.do`. This file takes the raw data of the business questionnaire as input and performs initial data clearance. It labels and renames variables, manipulates the data, and creates dummy variables. It does basic calculations that provide an overview of businesses, income, generated waste, and engagement in Solid Waste Management practices. It summarizes business distribution, sales, waste characteristics, and financial contributions. The output from this step is saved in the `derived_data` directory. 

## Lodges

The analysis code for the lodge survey is contained in `lodges_data_clearance.do`. The file takes the raw data of the lodge questionnaire as input and performs initial data clearance. It labels and renames variables and creates dummy variables. The output from this step is saved in the `derived_data` directory. Given the small sample size (13), the subsequent analysis for the lodge survey is conducted in Microsoft Excel and not available in this repository.

## Tourists

The analysis code for the tourist survey is split into two separate do-files:
- `tourist_data_clearance.do` takes the raw data of the tourist questionnaire as input and performs initial data clearance. It labels and renames variables. The output from this step is saved in the `derived_data` directory.
- `tourists_calculations.do` uses the derived data from the clearance step as input. It manipulates the data and creates additional dummy variables required for subsequent analysis. The analysis examines various factors influencing willingness to pay (WTP), including demographics, geographic origin, awareness, waste management perceptions, travel behaviors, and payment preferences. By running multiple regressions, it identifies which variables significantly impact WTP, helping to understand key drivers for financial contributions.
