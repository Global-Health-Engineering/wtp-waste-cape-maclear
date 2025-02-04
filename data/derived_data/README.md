# `data/derived_data`

This directory contains derived data in `.csv` and `.dta` formats (both exported from Stata). The `.dta` files were used for analyses in Stata. Both formats contain identical data. In these files, the data have been processed – variables have been renamed, labeled, manipulated, and dummy variables have been created as needed.

Additionally, this directory contains the following result files for households:
- `results_households_constant.csv`
- `results_households_demographics.csv`
- `results_households_education.csv`
- `results_households_income.csv`
- `results_households_per_village.csv`
- `results_households_SWM.csv`

All of them contain the results expressed in Malawian Kwacha [MWK] for various scenarios for households' willingness to pay.

Note the following:
- The results are calculated for two scenarios (with separation at source, where households have to separate their waste themselves, and without separation at source).
- The results are exported from Stata and are used as a basis for summarizing the Household WTP models for different scenarios.
- The calculations of the resulting values are done in Stata with the `doubleb` command.
- Robust standard errors for all the calculated values are reported.

## Scenarios for regression analysis for households

### Baseline

1. average WTP without separation at source, where all other variables are held constant.
2. average WTP with separation at source, where all other variables are held constant.

### Demographics

3. average WTP without separation at source, calculated only with variables that considered the participants' demographics.
4. average WTP with separation at source, calculated only with variables that considered the participants' demographics.

### Education

5. WTP calculated with the independent variables considering the level of education of the participants without separation at source.
6. WTP calculated with the independent variables considering the level of education of the participants with separation at source.

Basic education is a variable coded if the participant completed primary education.  
Higher education means that the participant completed secondary or tertiary education.

### Income

7. Calculations considering the effect of participants’ income on the estimated WTP without separation at source.
8. Calculations considering the effect of participants’ income on the estimated WTP with separation at source.

### Sub-villages of Cape Maclear

9. WTP calculated for sub-villages without separation at source.
10. WTP calculated for sub-villages with separation at source.

Binary variables are coded for the different sub-villages of Cape Maclear. The baseline scenario was chosen to be Madothi. Madothi is located in the east of the village and is the richest area of Cape Maclear (based on the data analysis and the income statements of the participants). Therefore, the coefficients of the other villages are negative.

### Solid Waste Management preferences

11. SWM preferences (paying a fee or contributing time to the community-wide system) without separation at source.
12. SWM preferences (paying a fee or contributing time to the community-wide system) with separation at source.

### Regression including all covariates

13. WTP with all covariates without separation at source.
14. WTP with all covariates with separation at source.

