# `data/raw_data/lodges`

The variables described below were used in the surveys conducted with lodge employees, managers, and/or owners, and can be found in the `.csv` and `.dta` files in this directory.

The tables below are available in the `.csv` format in the `../../metadata/metadata_raw_lodges.csv` file.

## Variables presenting Solid Waste Management practices

| `raw_variable` | `renamed_variable` | `description`                                                                                                           |
| -------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| p1             | waste              | What type of waste is mostly generated through your lodge?                                                              |
| p1_7_text      | waste_o            | What type of waste is mostly generated through your lodge? - Other                                                      |
| p2_1           | swm_satisfaction   | How satisfied are you with the current waste management options in Cape Maclear?                                        |
| p3             | pay                | Do you currently pay for solid waste management and collection?                                                         |
| p4_1_text      | costs              | How much do you spend monthly on waste disposal services? (Approximate amount) - US$                                    |
| p5             | eco                | Are you currently implementing any eco-friendly waste management practices in your lodge? (e.g., composting, recycling) |

## Variables for questions on Willingness to Pay

| `raw_variable` | `renamed_variable`   | `description`                                                                                                  |
| -------------- | -------------------- | -------------------------------------------------------------------------------------------------------------- |
| wtp1           | offerings            | What is your lodge offering?                                                                                   |
| wtp1_3_text    | offerings_activities | What is your lodge offering? - activities                                                                      |
| wtp1_7_text    | offerings_o          | What is your lodge offering? - others                                                                          |
| wtp2           | frequency            | How often do you think waste collection services should be provided for your lodge?                            |
| wtp2_4_text    | frequency_o          | How often do you think waste collection services should be provided for your lodge? - other                    |
| wtp3           | engagement           | Willingness to engage in SWM in your community?                                                                |
| wtp4           | payment              | How would you like to pay for the SWM system?                                                                  |
| wtp4_1_text    | weeklyfee            | Payment SWM system? - fixed fee per week                                                                       |
| wtp4_2_text    | monthlyfee           | Payment SWM system? - fixed fee per month                                                                      |
| wtp4_3_text    | yearlyfee            | Payment SWM system? - fixed fee per year                                                                       |
| wtp4_4_text    | wastefee             | Payment SWM system? - fixed fee per kg waste                                                                   |
| wtp4_5_text    | guestfee             | Payment SWM system? - fixed amount per guest                                                                   |
| wtp4_6_text    | volumefee            | Payment SWM system? - fixed fee per volume trash                                                               |
| wtp4_7_text    | incomefee            | Payment SWM system? - percentage of income                                                                     |
| wtp5           | public_waste         | Willingess to pay additional operating cost to collect already existing waste?                                 |
| wtp6_1_text    | public_waste_fee     | Willigness to pay to remove public waste? - number                                                             |
| wtp7           | educ_prgrms          | Willingness to pay for SWM if included educational programs?                                                   |
| wtp8           | benefits_swm         | What improvements in waste management services would benefit your lodge / your guests and how do they benefit? |

## Variables for questions on demographics

| `raw_variable` | `renamed_variable` | `description`                                                                                                   |
| -------------- | ------------------ | --------------------------------------------------------------------------------------------------------------- |
| d1             | gender_byte        | Please select your gender                                                                                       |
| d2_1_text      | age                | How old are you? - Please state the age in completed years of life - number                                     |
| d3_1_text      | yrs_cape           | How many years have you lived in Cape Maclear? - Please enter amount as a number - number                       |
| d4_1_text      | yrs_lodge          | How many years have you worked in this lodge? - number                                                          |
| d5             | position           | What is your position in the lodge? - Other                                                                     |
| d6_1_text      | buildings          | How many buildings are part of the lodge? - number                                                              |
| d7_1_text      | employed           | How many people are employed / work in total in this lodge?                                                     |
| d8_1_text      | capacity           | What is the capacity (maximum amount of tourists that can stay) of your lodge?                                  |
| d9_1_text      | guests_now         | How many guests are staying at the moment in the lodge?                                                         |
| d10_1_text     | nights             | How many nights on average do guests stay in your lodge?                                                        |
| d11_1_text     | guests_yr          | What is the average number of guests staying at your lodge per year?                                            |
| d12            | busy_pnts          | What is your busiest month and what is your revenue/turnover in this month? Please indicate the amount in US-$. |
| d12_1_text     | busy_jan           | busiest month is January                                                                                        |
| d12_2_text     | busy_feb           | busiest month is February                                                                                       |
| d12_3_text     | busy_mar           | busiest month is March                                                                                          |
| d12_4_text     | busy_apr           | busiest month is April                                                                                          |
| d12_5_text     | busy_mai           | busiest month is May                                                                                            |
| d12_6_text     | busy_jun           | busiest month is June                                                                                           |
| d12_7_text     | busy_jul           | busiest month is July                                                                                           |
| d12_8_text     | busy_aug           | busiest month is August                                                                                         |
| d12_9_text     | busy_sep           | busiest month is September                                                                                      |
| d12_10_text    | busy_oct           | busiest month is October                                                                                        |
| d12_11_text    | busy_nov           | busiest month is November                                                                                       |
| d12_12_text    | busy_dec           | busiest month is December                                                                                       |
| d13            | slow_pnts          | What is your slowest month and what is your revenue/turnover in this month? Please indicate the amount in US-$. |
| d13_1_text     | slow_jan           | slowest month is January                                                                                        |
| d13_2_text     | slow_feb           | slowest month is February                                                                                       |
| d13_3_text     | slow_mar           | slowest month is March                                                                                          |
| d13_4_text     | slow_apr           | slowest month is April                                                                                          |
| d13_5_text     | slow_mai           | slowest month is May                                                                                            |
| d13_6_text     | slow_jun           | slowest month is June                                                                                           |
| d13_7_text     | slow_jul           | slowest month is July                                                                                           |
| d13_8_text     | slow_aug           | slowest month is August                                                                                         |
| d13_9_text     | slow_sep           | slowest month is September                                                                                      |
| d13_10_text    | slow_oct           | slowest month is October                                                                                        |
| d13_11_text    | slow_nov           | slowest month is November                                                                                       |
| d13_12_text    | slow_dec           | slowest month is December                                                                                       |
| d14            | lodge_id           | If this lodge is participating in the Waste Characterisation and Quantification study, enter the lodge-ID.      |
