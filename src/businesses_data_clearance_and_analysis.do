************************************************************************************************************************************************

* Data Clearance Businesses

************************************************************************************************************************************************

clear
use "../data/raw_data/Businesses_RawData.dta", clear


*-----------------------------------------------------------------------------
*SWM questions

label variable q0 "Are you responsible for waste management (or do you know how waste is handeled in this business)?"
label variable q1 "What type of waste is mostly generated through your business?"
label variable q1_9_text "What type of waste is mostly generated through your business? - Other"
label variable q10 "Who takes the lead role in solid waste management in your business?"
label variable q10_5_text "Who takes the lead role in solid waste management in your business? - Other"
label variable q11_1 "How satisfied are you with the current waste management options in Cape Maclear?"
label variable q12 "Do you currently pay for solid waste management and collection?"
label variable q121 "How much do you spend monthly on waste disposal services?"
label variable q121_1_text "How much do you spend monthly on waste disposal services? - amount in MWK:"
*-----------------------------------------------------------------------------
rename q0 candidate
rename q1 waste
rename q1_9_text waste_o
rename q10 swm_lead
rename q10_5_text swm_lead_o
rename q11_1 swm_satisfaction
rename q12 pay
rename q121_1_text cost


*-----------------------------------------------------------------------------
*Environmental concern & WTP

label variable e1 "Does your business currently utilize recycled materials as inputs in any of its processes?"
label variable e1_2_text "Specification of recycled materials as inputs in any of its processes?"
label variable e2 "Willingness to engage in SWM in your community?"
label variable e21 "How would you like to pay for the waste management system?"
label variable e21_1_text "Payment SWM system? - fixed fee per week"
label variable e21_2_text "Payment SWM system? - fixed fee per month"
label variable e21_3_text "Payment SWM system? - fixed fee per year"
label variable e21_4_text "Payment SWM system? - fixed fee per kg waste"
label variable e21_6_text "Payment SWM system? - fixed fee per volume trash"
label variable e21_7_text "Payment SWM system? - percentage of income"
label variable e21_8_text "Payment SWM system? - other"
label variable e3 "How often do you think waste collection services should be provided for your business?"
label variable e3_4_text "How often do you think waste collection services should be provided for your business? - Other"
label variable e4 "Would your business be interested in participating in workshops or training sessions on effective swm?"
*-----------------------------------------------------------------------------
rename e1 recyclables
rename e2 engagement
rename e21 payment
rename e21_1_text weeklyfee
rename e21_2_text monthlyfee
rename e21_3_text yearlyfee
rename e21_4_text wastefee
rename e21_6_text volumefee
rename e21_7_text incomefee
rename e21_8_text fee_o
rename e3 frequency
rename e3_4_text frequency_o
rename e4 trainings


*-----------------------------------------------------------------------------
*demographics

label variable d1 "Which village in Cape Maclear do you belong to?"
label variable d2 "What is your position in the business?"
label variable d2_4_text "What is your position in the business? - Other"
label variable d3 "What kind of business are you running?"
label variable d3_18_text "What kind of business are you running? - Craftsman shops - txt"
label variable d3_12_text "What kind of business are you running? - Other"
label variable d4 "How many buildings are part of this business? (Defined as the number of roofs you have, including stable and sheds)"
label variable d4_1_text "How many buildings are part of this business? number"
label variable d5 "How many people are employed / work in total in this business?"
label variable d5_1_text "How many people are employed / work in total in this business? - number"
label variable d6 "What is the average daily turnover/sales revenue/income in this business?"
label variable d6_1_text "What is the average daily turnover/sales revenue/income in this business? - MWK"
*-----------------------------------------------------------------------------
rename d1 village
rename d2 position
rename d2_4_text position_o
rename d3 business
rename d3_18_text craftman
rename d3_12_text business_o
rename d4_1_text buildings
rename d5_1_text workers
rename d6_1_text income




************************************************************************************************************************************************

*Data manipulation & Variable Calculation

************************************************************************************************************************************************
*-----------------------------------------------------------------------------
*calculate the WTP (monthyl, weekly or smth like that with some assumptions)

*-----------------------------------------------------------------------------
*variables for SWM payment - fee in MWK per month
*drop swm_fee
generate swm_fee =.
replace swm_fee = 52*weeklyfee/12 if payment == "Fixed fee per week "
replace swm_fee = monthlyfee if payment == "Fixed fee per month"


**********************************************************************************************************************************************

* Generate Dummy Variables

**********************************************************************************************************************************************
*-----------------------------------------------------------------------------
*dummies for type of waste that is mostly generated in the business

generate plastics = 0
replace plastics =. if waste == "Don't know"
replace plastics = 1 if waste == "Plastic waste"

generate food = 0
replace food =. if waste == "Don't know"
replace food = 1 if waste == "Food waste "

generate metals = 0
replace metals =. if waste == "Don't know"
replace metals = 1 if waste == "Metal waste"

generate glass = 0
replace glass =. if waste == "Don't know"
replace glass = 1 if waste == "Glass waste "

generate hygiene = 0
replace hygiene =. if waste == "Don't know"
replace hygiene = 1 if waste == "Hygiene products"

generate paper = 0
replace paper =. if waste == "Don't know"
replace paper = 1 if waste == "Paper and Cardboard waste"

generate otherwaste = 0
replace otherwaste =. if waste == "Don't know"
replace otherwaste = 1 if waste == "Other (please specify):"


*-----------------------------------------------------------------------------
*dummy for who is responsible / takes the lead role for SWM 
generate lead_self = 0
replace lead_self = 1 if swm_lead == "Self"

*probabaly do another one for self & owner
generate lead_owner = 0
replace lead_owner = 1 if (swm_lead == "Self" & position == "Owner")

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
*dummy if the business uses recyclables as input materials 
generate use_recyclables = 0
replace use_recyclables = . if recyclables == "Prefer not to say / don't know"
replace use_recyclables = 1 if recyclables == "Yes (please indicate which recycled materials they use):"


*-----------------------------------------------------------------------------
*dummy variables for engagement in the SWM system - base is no engagement
generate fee = 0
replace fee=. if engagement == "Prefer not to say / don't know"
replace fee = 1 if engagement == "I would be willing to pay a fee"

generate time = 0
replace time =. if engagement == "Prefer not to say / don't know"
replace time = 1 if engagement == "I would be willing to contribute my time"

generate time_employee = 0
replace time_employee =. if engagement == "Prefer not to say / don't know"
replace time_employee = 1 if engagement == "I would be willing to contribute the time of another empleyee"

generate no_engagement = 0
replace no_engagement =. if engagement == "Prefer not to say / don't know"
replace no_engagement = 1 if engagement == "I do not want do engage in solid waste management"


*-----------------------------------------------------------------------------
*dummy variables for collection frequency

generate weekly = 0
replace weekly =. if frequency == "Prefer not to say / don't know" | frequency == "Other (please specify):"
replace weekly = 1 if frequency == "Once a week"

generate biweekly = 0
replace biweekly =. if frequency == "Prefer not to say / don't know" | frequency == "Other (please specify):"
replace biweekly = 1 if frequency == "Bi-weekly /twice a week"


generate daily = 0
replace daily =. if frequency == "Prefer not to say / don't know" | frequency == "Other (please specify):"
replace daily = 1 if frequency == "Every day"

*-----------------------------------------------------------------------------
*dummy variables if business interested in training sessions 
generate swm_training = 0
replace swm_training =. if trainings == "Prefer not to say / don't know"
replace swm_training = 1 if trainings == "Yes"


*-----------------------------------------------------------------------------
*dummy variables for village 
generate muonda = 0
replace muonda =. if village == "Prefer not to say / don't know"
replace muonda = 1 if village == "Muonda"

generate nkhono = 0
replace nkhono =. if village == "Prefer not to say / don't know"
replace nkhono = 1 if village == "Nkhono"

generate madothi = 0
replace madothi =. if village == "Prefer not to say / don't know"
replace madothi = 1 if village == "Madothi"

generate katukumala = 0
replace katukumala =. if village == "Prefer not to say / don't know"
replace katukumala = 1 if village == "Katukumala"

generate kafukuta = 0
replace kafukuta =. if village == "Prefer not to say / don't know"
replace kafukuta = 1 if village == "Kafukuta"

generate chembe = 0
replace chembe =. if village == "Prefer not to say / don't know"
replace chembe = 1 if village == "Chembe"

*-----------------------------------------------------------------------------
*dummy variables 
generate owner = 0
replace owner =. if position == "Prefer not to say / don't know"
replace owner = 1 if position == "Owner"

*-----------------------------------------------------------------------------
*no dummy needed for buildings
*no dummy needed for workers 
*no dummy needed for income


**********************************************************************************************************************************************
*Data manipulation for business type 

replace business = "Other (please specify):" in 95
replace business_o = "Bar" in 95
replace craftman = "" in 95

replace business = "Craftsman shops, e.g. carpenter, mechanic, blacksmith, mason, etc. (please specify):" in 103
replace business_o = "" in 103
replace craftman = "Mechanical engineering " in 103

replace business = "Small shops and markets" in 111
replace business_o = "" in 111

replace business = "ICT centers" in 146
replace craftman = "" in 146

replace craftman = "" in 49
replace business_o = "Barbershop, groceries,  cloths shops " in 49

replace business = "Other (please specify):" in 49

*-----------------------------------------------------------------------------
*dummy variables for business type 

generate fish = 0
replace fish =. if business == "Prefer not to say / don't know"
replace fish = 1 if business == "Fish processing and preservations" | business == "Fishing and fish sales"

generate craftsman = 0
replace craftsman =. if business == "Prefer not to say / don't know"
replace craftsman = 1 if business == "Craftsman shops, e.g. carpenter, mechanic, blacksmith, mason, etc. (please specify):"

generate shops = 0
replace shops =. if business == "Prefer not to say / don't know"
replace shops = 1 if business == "Small shops and markets"

generate ict = 0
replace ict =. if business == "Prefer not to say / don't know"
replace ict = 1 if business == "ICT centers"

generate electro = 0
replace electro =. if business == "Prefer not to say / don't know"
replace electro = 1 if business == "Electronic repair centers"

generate educ = 0
replace educ =. if business == "Prefer not to say / don't know"
replace educ = 1 if business == "Education "

generate agric = 0
replace agric =. if business == "Prefer not to say / don't know"
replace agric = 1 if business == "Agriculture"

generate souvenirs = 0
replace souvenirs =. if business == "Prefer not to say / don't know"
replace souvenirs = 1 if business == "Crafts and souvenirs"

generate restaurants = 0
replace restaurants =. if business == "Prefer not to say / don't know"
replace restaurants = 1 if business == "Restaurants and food stalls"

generate transp = 0
replace transp =. if business == "Prefer not to say / don't know"
replace transp = 1 if business == "Transportation services"

generate tourism = 0
replace tourism =. if business == "Prefer not to say / don't know"
replace tourism = 1 if business == "Lodging and tourism "

generate hair = 0
replace hair =. if business == "Prefer not to say / don't know"
replace hair = 1 if business == "Barber shops" | (business == "Other (please specify):" & (business_o == "Hair salon " | business_o == "Saloon"))

generate health = 0
replace health =. if business == "Prefer not to say / don't know"
replace health = 1 if business == "Health services "

generate otherbusiness = 0
replace otherbusiness =. if business == "Prefer not to say / don't know"
replace otherbusiness = 1 if business == "Other (please specify):"

**********************************************************************************************************************************************

*generate RESULTS

**********************************************************************************************************************************************

tab business village 
*matrix of how many and which kind of business are located in each village

tabstat income, by(business) statistics(min max mean count)
*these are the daily turnovers/sales 

tab waste
tab recyclables
tab position 
tab frequency

tab engagement
sum weeklyfee monthlyfee 


**********************************************************************************************************************************************


save "../data/derived_data/Businesses_DerivedData.dta", replace
export delimited "../data/derived_data/Businesses_DerivedData.csv", replace





