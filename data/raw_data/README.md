# `data/raw_data`

The variables described in the tables below were used in the surveys conducted with business, lodges, households, and toursits and can be found in the `.csv` and `.dta` files in this directory. Both formats contain the identical raw data collected during the field surveys. `raw_variable` column contains the names of variables exported from Qualtrics XM, the software to conduct the surveys. `renamed_variable` column contains the names of the variables updated in Stata and used for the analysis.

The tables below are available in the `.csv` format in the metadata files in `../metadata` directory.

## Businesses

### Variables for questions on Solid Waste Management

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

### Variables for questions on environmental concern & Willingness to Pay

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

### Variables for questions on demographics

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

## Households

### Variables for questions on Willingness to Pay

| `raw_variable` | `renamed_variable` | `description`                                   |
| -------------- | ------------------ | ----------------------------------------------- |
| wtp1           | wtp1               | No Separation, Bid 1: MWK 500, Bid 2: MWK -     |
| wtp2           | wtp2               | No Separation, Bid 1: MWK 500, Bid 2: MWK 250   |
| wtp3           | wtp3               | No Separation, Bid 1: MWK 500, Bid 2: 1000      |
| wtp4           | wtp4               | Separation, Bid 1: MWK 500, Bid 2: MWK: -       |
| wtp5           | wtp5               | Separation, Bid 1: MWK 500, Bid 2: MWK 250      |
| wtp6           | wtp6               | Separation, Bid 1: MWK 500, Bid 2: MWK 1000     |
| wtp7           | wtp7               | No Separation, Bid 1: MWK 1000, Bid 2: MWK -    |
| wtp8           | wtp8               | No Separation, Bid 1: MWK 1000, Bid 2: MWK 500  |
| wtp9           | wtp9               | No Separation, Bid 1: MWK 1000, Bid 2: MWK 2000 |
| wtp10          | wtp10              | Separation, Bid 1: MWK 1000, Bid 2: MWK -       |
| wtp11          | wtp11              | Separation, Bid 1: MWK 1000, Bid 2: MWK 500     |
| wtp12          | wtp12              | Separation, Bid 1: MWK 1000, Bid 2: MWK 2000    |
| wtp13          | wtp13              | No Separation, Bid 1: MWK 1500, Bid 2: MWK -    |
| wtp14          | wtp14              | No Separation, Bid 1: MWK 1500, Bid 2: MWK 750  |
| wtp15          | wtp15              | No Separation, Bid 1: MWK 1500, Bid 2: MWK 3000 |
| wtp16          | wtp16              | Separation, Bid 1: MWK 1500, Bid 2: MWK -       |
| wtp17          | wtp17              | Separation, Bid 1: MWK 1500, Bid 2: MWK 750     |
| wtp18          | wtp18              | Separation, Bid 1: MWK 1500, Bid 2: MWK 3000    |
| wtp19          | wtp19              | No Separation, Bid 1: MWK 2000, Bid 2: -        |
| wtp20          | wtp20              | No Separation, Bid 1: MWK 2000, Bid 2: MWK 1000 |
| wtp21          | wtp21              | No Separation, Bid 1: MWK 2000, Bid 2: MWK 4000 |
| wtp22          | wtp22              | Separation, Bid 1: MWK 2000, Bid 2: -           |
| wtp23          | wtp23              | Separation, Bid 1: MWK 2000, Bid 2: MWK 1000    |
| wtp24          | wtp24              | Separation, Bid 1: MWK 2000, Bid 2: MWK 4000    |
| wtp25          | wtp25              | No Separation, Bid 1: MWK 2500, Bid 2: -        |
| wtp26          | wtp26              | No Separation, Bid 1: MWK 2500, Bid 2: MWK 1250 |
| wtp27          | wtp27              | No Separation, Bid 1: MWK 2500, Bid 2: MWK 5000 |
| wtp28          | wtp28              | Separation, Bid 1: MWK 2500, Bid 2: -           |
| wtp29          | wtp29              | Separation, Bid 1: MWK 2500, Bid 2: MWK 1250    |
| wtp30          | wtp30              | Separation, Bid 1: MWK 2500, Bid 2: MWK 5000    |
| wtp31          | wtp31              | No Separation, Bid 1: MWK 3000, Bid 2: -        |
| wtp32          | wtp32              | No Separation, Bid 1: MWK 3000, Bid 2: MWK 1500 |
| wtp33          | wtp33              | No Separation, Bid 1: MWK 3000, Bid 2: MWK 6000 |
| wtp34          | wtp34              | Separation, Bid 1: MWK 3000, Bid 2: -           |
| wtp35          | wtp35              | Separation, Bid 1: MWK 3000, Bid 2: MWK 1500    |
| wtp36          | wtp36              | Separation, Bid 1: MWK 3000, Bid 2: MWK 6000    |

### Variables for the bean game

| `raw_variable` | `renamed_variable` | `description`                                                                                    |
| -------------- | ------------------ | ------------------------------------------------------------------------------------------------ |
| e2_1           | publ_educ          | Public Policy - Public Education                                                                 |
| e2_2           | nat_env            | Public Policy - The natural environment                                                          |
| e2_3           | crime_prev         | Public Policy - Crime prevention                                                                 |
| e2_4           | housing            | Public Policy - Housing                                                                          |
| e2_5           | unempl_pov         | Public Policy - Unemployment and poverty                                                         |
| e2_6           | health_serv        | Public Policy - Public health services                                                           |
| e2_7           | foodsec            | Public Policy - Food security                                                                    |
| e2_8           | pp_other           | Public Policy - Other                                                                            |
| e2_8_text      | pp_other_txt       | Public Policy - Other_txt                                                                        |
| e2_9           | pp_pnts            | Public Policy - Prefer not to say                                                                |
| e3_1           | water_poll         | Environmental Issues - Water pollution                                                           |
| e3_2           | air_poll           | Environmental Issues - Air pollution                                                             |
| e3_3           | deforestation      | Environmental Issues - Deforestation                                                             |
| e3_4           | soil_deg           | Environmental Issues - Soil degradation                                                          |
| e3_5           | env_swm            | Environmental Issues - Solid waste management                                                    |
| e3_6           | biodiv_loss        | Environmental Issues - Loss of biodiversity                                                      |
| e3_7           | climate_ch         | Environmental Issues - Climate change                                                            |
| e3_8           | env_other          | Environmental Issues - Other                                                                     |
| e3_8_text      | env_other_txt      | Environmental Issues - Other_txt                                                                 |
| e3_9           | env_pnts           | Environmental Issues - Prefer not to say                                                         |
| e4             | impact_swm         | Does improper solid waste management have a negative impact on the environment and human health? |
| e5             | effects_swm        | What are the effects of improper solid waste management? - Selected Choice                       |
| e5_13_text     | effects_swm_o      | What are the effects of improper solid waste management? - Other_txt                             |

### Variables for questions on present & future Solid Waste Mractices

| `raw_variable` | `renamed_variable` | `description`                                                                              |
| -------------- | ------------------ | ------------------------------------------------------------------------------------------ |
| p1             | lead_swm           | Who takes the lead role in solid waste management in your home?                            |
| p1_10_text     | lead_swm_o         | Who takes the lead role in solid waste management in your home? - Other                    |
| p2_1           | swm_satisfaction   | How satisfied are you with the current waste management options in Cape Maclear?           |
| w1             | frequency          | How often do you think waste collection services should be provided in your area?          |
| w1_4_text      | frequency_o        | How often do you think waste collection services should be provided in your area? - Others |
| w2             | engagement         | Willingness to engage in SWM in the community                                              |

### Variables for questions on demographics

| `raw_variable` | `renamed_variable` | `description`                                                                           |
| -------------- | ------------------ | --------------------------------------------------------------------------------------- |
| d1             | village            | Which village in Cape Maclear do you belong to?                                         |
| d2             | gender             | Please select your gender                                                               |
| d3_1_text      | age                | How old are you? - number (completed years of life)                                     |
| d4             | educ               | What is the highest level of education you completed?                                   |
| d5             | employ             | What is your employment type                                                            |
| d5_7_text      | employ_o           | What is your employment type - Other                                                    |
| d6             | religion           | Religious affiliation                                                                   |
| d6_5_text      | religion_o         | Religious affiliation - Others                                                          |
| d7_1_text      | yrs_cape           | How many years have you lived in Cape Maclear? - Number                                 |
| d8_1_text      | yrs_house          | How many years have you lived in this house? - Number                                   |
| d9             | hh_position        | Position in the household                                                               |
| d9_8_text      | hh_position_om     | What is your position in the household? - male                                          |
| d9_9_text      | hh_position_of     | What is your position in the household? - female                                        |
| d10            | ownership          | House ownership status                                                                  |
| d10_3_text     | ownership_o        | House ownership status?                                                                 |
| d11_1_text     | buildings          | How many buildings do you live in? - Number                                             |
| d12_1_text     | people             | How many people slept in this house last night? (including fisherman) - Number          |
| d13            | income             | In which income bracket does your total monthly household (of all sources) income fall? |
| d14            | household_id       | Participation in the Waste Characterisation and Quantification study, household-ID      |

## Lodges

### Variables presenting Solid Waste Management practices

| `raw_variable` | `renamed_variable` | `description`                                                                                                           |
| -------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| p1             | waste              | What type of waste is mostly generated through your lodge?                                                              |
| p1_7_text      | waste_o            | What type of waste is mostly generated through your lodge? - Other                                                      |
| p2_1           | swm_satisfaction   | How satisfied are you with the current waste management options in Cape Maclear?                                        |
| p3             | pay                | Do you currently pay for solid waste management and collection?                                                         |
| p4_1_text      | costs              | How much do you spend monthly on waste disposal services? (Approximate amount) - US$                                    |
| p5             | eco                | Are you currently implementing any eco-friendly waste management practices in your lodge? (e.g., composting, recycling) |

### Variables for questions on Willingness to Pay

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

### Variables for questions on demographics

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

## Tourists

### Variables for questions on Solid Waste Management practices in Cape Maclear

| `raw_variable` | `renamed_variable` | `description`                                                                                                     |
| -------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| a1             | thoughts_endlife   | Have you ever thought about what happens to the waste you dispose of in Cape Maclear after you put it in the bin? |
| a2_1           | swm_satisfaction   | How satisfied are you with the current waste management situation in Cape Maclear?                                |
| a3             | collection         | Do you think there are any waste collection services in Cape Maclear?                                             |
| a4             | separation         | Do you believe that waste is properly separated in Cape Maclear to facilitate recycling efforts?                  |
| a5             | recycling          | Do you think there are recycling services available in Cape Maclear?                                              |
| a6             | composting         | Do you think there are any facilities for composting organic waste in Cape Maclear?                               |
| a7             | disposal           | Do you think there are any waste disposal services (e.g., landfills or incineration of waste) in Cape Maclear?    |
| a8             | issues             | Have you encountered any waste-related issues during your stay in Cape Maclear?                                   |
| a8_2_text      | issues_txt         | Have you encountered any waste-related issues during your stay in Cape Maclear? specify                           |

### Variables for questions on Willingness to Pay & others 

| `raw_variable` | `renamed_variable` | `description`                                                                                                                         |
| -------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------- |
| b1_1           | swm_travel         | Importance SWM in choice of travel destination                                                                                        |
| b2             | contribution       | Willingness to support SWM efforts                                                                                                    |
| b3             | payment            | How would you like to pay for the SWM system?                                                                                         |
| b3_1_text      | dailyfee           | Payment SWM system? - fixed fee per day                                                                                               |
| b3_2_text      | stayfee            | Payment SWM system? - fixed fee per stay                                                                                              |
| b3_3_text      | donation           | Payment SWM system? - donation                                                                                                        |
| b3_4_text      | fee_o              | Payment SWM system? - Other                                                                                                           |
| b4             | educ_prgrms        | Willingness to pay for SWM if included educational programs                                                                           |
| b5             | ecosupport         | Would you be more likely to support local businesses and lodges that actively participate in eco-friendly waste management practices? |
| b6             | initiatives        | What specific waste management initiatives or practices would positively influence your experience as a tourist in Cape Maclear?      |

### Variables for questions on demographics

| `raw_variable` | `renamed_variable` | `description`                                                          |
| -------------- | ------------------ | ---------------------------------------------------------------------- |
| d1             | gender             | Please select your gender                                              |
| d2_4_text      | nationality        | What is your nationality? - Please write the country's name: - Text    |
| d3_5_text      | age                | How old are you? - number (completed years of life)                    |
| d4_4_text      | lodge              | Where do you stay in Cape Maclear? - name of accommodation             |
| d5_4_text      | days_cape          | How many days are you staying in Cape Maclear? - number                |
| d6_4_text      | days_malawi        | How many days are you staying in Malawi? - number                      |
| d7_4_text      | expenses           | How much money in total do you plan to spend in Cape Maclear? - number |
