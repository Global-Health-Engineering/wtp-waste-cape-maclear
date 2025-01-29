# `data/raw_data/businesses`

The variables described below were used in the surveys conducted with business and can be found in the `.csv` and `.dta` files in this directory.

The tables below are available in the `.csv` format in the `../../metadata/metadata_raw_businesses.csv` file.

## Variables for questions on Solid Waste Management

| `raw_variable` | `renamed_variable` | `description`                                                                                       |
| -------------- | ------------------ | --------------------------------------------------------------------------------------------------- |
| q0             | candidate          | Are you responsible for waste management (or do you know how waste is handeled in this business)?   |
| q1             | waste              | What type of waste is mostly generated through your business?                                       |
| q1_9_text      | waste_o            | What type of waste is mostly generated through your business? - Other                               |
| q10            | swm_lead           | Who takes the lead role in solid waste management in your business?                                 |
| q10_5_text     | swm_lead_o         | Who takes the lead role in solid waste management in your business? - Other                         |
| q11_1          | swm_satisfaction   | How satisfied are you with the current waste management options in Cape Maclear?                    |
| q12            | pay                | Do you currently pay for solid waste management and collection?                                     |
| q121_1_text    | cost               | How much do you spend monthly on waste disposal services? - amount in MWK                           |

## Variables for questions on environmental concern & Willingness to Pay

| `raw_variable` | `renamed_variable` | `description`                                                                                          |
| -------------- | ------------------ | ------------------------------------------------------------------------------------------------------ |
| e1             | recyclables        | Does your business currently utilize recycled materials as inputs in any of its processes?             |
| e2             | engagement         | Willingness to engage in SWM in your community?                                                        |
| e21            | payment            | How would you like to pay for the waste management system?                                             |
| e21_1_text     | weeklyfee          | Payment SWM system? - fixed fee per week                                                               |
| e21_2_text     | monthlyfee         | Payment SWM system? - fixed fee per month                                                              |
| e21_3_text     | yearlyfee          | Payment SWM system? - fixed fee per year                                                               |
| e21_4_text     | wastefee           | Payment SWM system? - fixed fee per kg waste                                                           |
| e21_6_text     | volumefee          | Payment SWM system? - fixed fee per volume trash                                                       |
| e21_7_text     | incomefee          | Payment SWM system? - percentage of income                                                             |
| e21_8_text     | fee_o              | Payment SWM system? - other                                                                            |
| e3             | frequency          | How often do you think waste collection services should be provided for your business?                 |
| e3_4_text      | frequency_o        | How often do you think waste collection services should be provided for your business? - Other         |
| e4             | trainings          | Would your business be interested in participating in workshops or training sessions on effective swm? |

## Variables for questions on demographics

| `raw_variable` | `renamed_variable` | `description`                                                                   |
| -------------- | ------------------ | ------------------------------------------------------------------------------- |
| d1             | village            | Which village in Cape Maclear do you belong to?                                 |
| d2             | position           | What is your position in the business?                                          |
| d2_4_text      | position_o         | What is your position in the business? - Other                                  |
| d3             | business           | What kind of business are you running?                                          |
| d3_18_text     | craftman           | What kind of business are you running? - Craftsman shops - txt                  |
| d3_12_text     | business_o         | What kind of business are you running? - Other                                  |
| d4_1_text      | buildings          | How many buildings are part of this business? number                            |
| d5_1_text      | workers            | How many people are employed / work in total in this business? - number         |
| d6_1_text      | income             | What is the average daily turnover/sales revenue/income in this business? - MWK |
