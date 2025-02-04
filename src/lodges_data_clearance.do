************************************************************************************************************************************************************************

* Data Clearance Lodges

************************************************************************************************************************************************************************

clear 
use "../data/raw_data/Lodges_RawData.dta", clear

*-----------------------------------------------------------------------------
*label variables present SWM practices

label variable p1 "What type of waste is mostly generated through your lodge?"
label variable p1_7_text "What type of waste is mostly generated through your lodge? - Other"
label variable p2_1 "How satisfied are you with the current waste management options in Cape Maclear?"
label variable p3 "Do you currently pay for solid waste management and collection?"
label variable p4 "How much do you spend monthly on waste disposal services? (Approximate amount)"
label variable p4_1_text "How much do you spend monthly on waste disposal services? (Approximate amount) - US$"
label variable p5 "Are you currently implementing any eco-friendly waste management practices in your lodge? (e.g., composting, recycling)"
*-----------------------------------------------------------------------------
rename p1 waste
rename p1_7_text waste_o 
rename p2_1 swm_satisfaction
rename p3 pay
rename p4_1_text costs
rename p5 eco

*-----------------------------------------------------------------------------
*label variables WTP

label variable wtp1 "What is your lodge offering?"
label variable wtp1_3_text "What is your lodge offering? - activities"
label variable wtp1_7_text "What is your lodge offering? - others"
label variable wtp2 "How often do you think waste collection services should be provided for your lodge?"
label variable wtp2_4_text "How often do you think waste collection services should be provided for your lodge? - other"
label variable wtp3 "Willingness to engage in SWM in your community?"
label variable wtp4 "How would you like to pay for the SWM system?"
label variable wtp4_1_text "Payment SWM system? - fixed fee per week"
label variable wtp4_2_text "Payment SWM system? - fixed fee per month"
label variable wtp4_3_text "Payment SWM system? - fixed fee per year"
label variable wtp4_4_text "Payment SWM system? - fixed fee per kg waste"
label variable wtp4_5_text "Payment SWM system? - fixed amount per guest"
label variable wtp4_6_text "Payment SWM system? - fixed fee per volume trash"
label variable wtp4_7_text "Payment SWM system? - percentage of income"
label variable wtp5 "Willingess to pay additional operating cost to collect already existing waste?"
label variable wtp6 "Willingness to pay to remove public waste?"
label variable wtp6_1_text "Willigness to pay to remove public waste? - number"
label variable wtp7 "Willingness to pay for SWM if included educational programs?"
label variable wtp8 "What improvements in waste management services would benefit your lodge / your guests and how do they benefit?"
*-----------------------------------------------------------------------------
rename wtp1 offerings
rename wtp1_3_text offerings_activities
rename wtp1_7_text offerings_o
rename wtp2 frequency
rename wtp2_4_text frequency_o
rename wtp3 engagement
rename wtp4 payment
rename wtp4_1_text weeklyfee
rename wtp4_2_text monthlyfee
rename wtp4_3_text yearlyfee
rename wtp4_4_text wastefee
rename wtp4_5_text guestfee
rename wtp4_6_text volumefee
rename wtp4_7_text incomefee
rename wtp5 public_waste
rename wtp6_1_text public_waste_fee
rename wtp7 educ_prgrms
rename wtp8 benefits_swm


*-----------------------------------------------------------------------------
* demographics

label variable d1 "Please select your gender."
label variable d2 "How old are you? - Selected Choice"
label variable d2_1_text "How old are you? - Please state the age in completed years of life - number"
label variable d3 "How many years have you lived in Cape Maclear?"
label variable d3_1_text "How many years have you lived in Cape Maclear? - Please enter amount as a number - txt"
label variable d4 "How many years have you worked in this lodge?"
label variable d4_1_text "How many years have you worked in this lodge? - number"
label variable d5 "position in the lodge"
label variable d5_3_text "What is your position in the lodge? - Other"
label variable d6 "How many buildings are part of this lodge? (Defined as the number of roofs you have, including guest houses, restaurant, stable, shed, garden house)"
label variable d6_1_text "How many buildings are part of the lodge? - number"
label variable d7 "How many people are employed / work in total in this lodge?"
label variable d7_1_text "# employed people in lodge "
label variable d8 "What is the capacity (maximum amount of tourists that can stay) of your lodge?"
label variable d8_1_text "capacity of lodge (=# beds)"
label variable d9 "How many guests are staying at the moment in the lodge?"
label variable d9_1_text "# guests at the moment"
label variable d10 "How many nights on average do guests stay in your lodge?"
label variable d10_1_text "average nights per guest"
label variable d11 "What is the average number of guests staying at your lodge per year?"
label variable d11_1_text "average guests per year"
label variable d12 "What is your busiest month and what is your revenue/turnover in this month? Please indicate the amount in US-$."
label variable d12_1_text "busiest month january"
label variable d12_2_text "busiest month february"
label variable d12_3_text "busiest month march"
label variable d12_4_text "busiest month april"
label variable d12_5_text "busiest month mai"
label variable d12_6_text "busiest month june"
label variable d12_7_text "busiest month july"
label variable d12_8_text "busiest month august"
label variable d12_9_text "busiest month september"
label variable d12_10_text "busiest month october"
label variable d12_11_text "busiest month november"
label variable d12_12_text "busiest month december"
label variable d13 "What is your slowest month and what is your revenue/turnover in this month? Please indicate the amount in US-$."
label variable d13_1_text "slowest month january"
label variable d13_2_text "slowest month february"
label variable d13_3_text "slowest month march"
label variable d13_4_text "slowest month april"
label variable d13_5_text "slowest month mai"
label variable d13_6_text "slowest month june"
label variable d13_7_text "slowest month july"
label variable d13_8_text "slowest month august"
label variable d13_9_text "slowest month september"
label variable d13_10_text "slowest month october"
label variable d13_11_text "slowest month november"
label variable d13_12_text "slowest month december"
label variable d14 "If this lodge is participating in the Waste Characterisation and Quantification study, please enter the lodge-ID. (Reminder: pre-sorting)"

*-----------------------------------------------------------------------------
rename d1 gender_byte
rename d2_1_text age
rename d3_1_text yrs_cape
rename d4_1_text yrs_lodge
rename d5 position
rename d6_1_text buildings
rename d7_1_text employed
rename d8_1_text capacity
rename d9_1_text guests_now
rename d10_1_text nights
rename d11_1_text guests_yr
rename d12 busy_pnts
rename d12_1_text busy_jan
rename d12_2_text busy_feb
rename d12_3_text busy_mar
rename d12_4_text busy_apr
rename d12_5_text busy_mai
rename d12_6_text busy_jun
rename d12_7_text busy_jul
rename d12_8_text busy_aug
rename d12_9_text busy_sep
rename d12_10_text busy_oct
rename d12_11_text busy_nov
rename d12_12_text busy_dec
rename d13 slow_pnts
rename d13_1_text slow_jan
rename d13_2_text slow_feb
rename d13_3_text slow_mar
rename d13_4_text slow_apr
rename d13_5_text slow_mai
rename d13_6_text slow_jun
rename d13_7_text slow_jul
rename d13_8_text slow_aug
rename d13_9_text slow_sep
rename d13_10_text slow_oct
rename d13_11_text slow_nov
rename d13_12_text slow_dec
rename d14 lodge_id


************************************************************************************************************************************************************************

* Data manipulation & Variable Calculation

************************************************************************************************************************************************************************
*rename gender as it is coded, 1 male, 2 female
generate gender = ""
replace gender = "Male" if gender_byte == 1
replace gender = "Female" if gender_byte == 2
drop gender_byte

*-----------------------------------------------------------------------------
*calculate yrs cape 
replace yrs_cape = age if d3 == "All my life"

*-----------------------------------------------------------------------------
*dummies for type of waste that is mostly generated in the business
generate plastics = 0
replace plastics =. if waste == "Don't know"
replace plastics = 1 if waste == "Plastic waste"

generate food = 0
replace food =. if waste == "Don't know"
replace food = 1 if waste == "Food waste"

generate yard = 0
replace yard =. if waste == "Don't know"
replace yard = 1 if waste == "Yard waste"

*----------------------------------------------------------------------------- 
*dummy for SWM satisfaction
generate swm_dissatisfied =.
*swm_dissatisfied =. if swm_satisfaction == "" | swm_satisfaction == "Neither satisfied nor dissatisfied"
label variable swm_dissatisfied "Extremely dissatisfied & Somewhat dissatisfied with current waste mgmt options"
replace swm_dissatisfied = 0 if swm_satisfaction == "Extremely satisfied" | swm_satisfaction == "Somewhat satisfied" 
replace swm_dissatisfied = 1 if swm_satisfaction == "Extremely dissatisfied" | swm_satisfaction == "Somewhat dissatisfied"


generate satisfaction = 0
replace satisfaction =. if swm_satisfaction == ""
replace satisfaction = 1 if swm_satisfaction == "Extremely dissatisfied"
replace satisfaction = 2 if swm_satisfaction == "Somewhat dissatisfied"
replace satisfaction = 3 if swm_satisfaction == "Neither satisfied nor dissatisfied"
replace satisfaction = 4 if swm_satisfaction == "Somewhat satisfied" 
replace satisfaction = 5 if swm_satisfaction == "Extremely satisfied"

*-----------------------------------------------------------------------------
*dummy if the business are currently paying for SWM 
generate currently_paying = 0
replace currently_paying = 1 if pay == "Yes"

*-----------------------------------------------------------------------------
*atm no dummy for cost (amount they are paying atm)

*-----------------------------------------------------------------------------
*atm no dummy for offerings

*-----------------------------------------------------------------------------
*dummy variables for collection frequency
generate weekly = 0
replace weekly =. if frequency == "Other (please specify): "
replace weekly = 1 if frequency == "Once a week"

generate biweekly = 0
replace biweekly =. if frequency == "Other (please specify): "
replace biweekly = 1 if frequency == "Bi-weekly /twice a week"

generate daily = 0
replace daily =. if frequency == "Other (please specify): "
replace daily = 1 if frequency == "Every day"

generate triweekly = 0
replace triweekly =. if frequency == "Other (please specify): "
replace triweekly = 1 if frequency_o != ""

*-----------------------------------------------------------------------------
*dummy variables for engagement in the SWM system
generate fee = 0
replace fee = 1 if engagement == "I would be willing to pay a fee"

generate time_employee = 0
replace time_employee = 1 if engagement == "I would be willing to contribute the time of another empleyee"

*-----------------------------------------------------------------------------
generate fee_permonth =0
replace fee_permonth = monthlyfee if monthlyfee !=.
replace fee_permonth =. if monthlyfee == 0
replace fee_permonth =. if weeklyfee == 0
replace fee_permonth =. if engagement == "I would be willing to contribute the time of another empleyee"


*-----------------------------------------------------------------------------
*generate the busiest and slowest month's turnover
generate revenue_busy =.
replace revenue_busy = busy_jan if busy_jan !=.
replace revenue_busy = busy_feb if busy_feb !=.
replace revenue_busy = busy_mar if busy_mar !=.
replace revenue_busy = busy_apr if busy_apr !=.
replace revenue_busy = busy_mai if busy_mai !=.
replace revenue_busy = busy_jun if busy_jun !=.
replace revenue_busy = busy_jul if busy_jul !=.
replace revenue_busy = busy_aug if busy_aug !=.
replace revenue_busy = busy_sep if busy_sep !=.
replace revenue_busy = busy_oct if busy_oct !=.
replace revenue_busy = busy_nov if busy_nov !=.
replace revenue_busy = busy_dec if busy_dec !=.

generate revenue_slow =. 
replace revenue_slow = slow_jan if slow_jan !=.
replace revenue_slow = slow_feb if slow_feb !=.
replace revenue_slow = slow_mar if slow_mar !=.
replace revenue_slow = slow_apr if slow_apr !=.
replace revenue_slow = slow_mai if slow_mai !=.
replace revenue_slow = slow_jun if slow_jun !=.
replace revenue_slow = slow_jul if slow_jul !=.
replace revenue_slow = slow_aug if slow_aug !=.
replace revenue_slow = slow_sep if slow_sep !=.
replace revenue_slow = slow_oct if slow_oct !=.
replace revenue_slow = slow_nov if slow_nov !=.
replace revenue_slow = slow_dec if slow_dec !=.




************************************************************************************************************************************************************************


save "../data/derived_data/Lodges_DerivedData.dta", replace
export delimited "../data/derived_data/Lodges_DerivedData.csv", replace


           
























