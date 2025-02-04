**********************************************************************************************************************************************

* Data Clearance HH

**********************************************************************************************************************************************

clear 
use "../data/raw_data/Households_RawData.dta", clear

*-----------------------------------------------------------------------------
*label variables WTP
label variable wtp1 "No Separation, Bid 1: MWK 500, Bid 2: MWK -"
label variable wtp2 "No Separation, Bid 1: MWK 500, Bid 2: MWK 250"
label variable wtp3 "No Separation, Bid 1: MWK 500, Bid 2: 1000"
label variable wtp4 "Separation, Bid 1: MWK 500, Bid 2: MWK: -"
label variable wtp5 "Separation, Bid 1: MWK 500, Bid 2: MWK 250"
label variable wtp6 "Separation, Bid 1: MWK 500, Bid 2: MWK 1000"
label variable wtp7 "No Separation, Bid 1: MWK 1000, Bid 2: MWK -"
label variable wtp8 "No Separation, Bid 1: MWK 1000, Bid 2: MWK 500"
label variable wtp9 "No Separation, Bid 1: MWK 1000, Bid 2: MWK 2000"
label variable wtp10 "Separation, Bid 1: MWK 1000, Bid 2: MWK -"
label variable wtp11 "Separation, Bid 1: MWK 1000, Bid 2: MWK 500"
label variable wtp12 "Separation, Bid 1: MWK 1000, Bid 2: MWK 2000"
label variable wtp13 "No Separation, Bid 1: MWK 1500, Bid 2: MWK -"
label variable wtp14 "No Separation, Bid 1: MWK 1500, Bid 2: MWK 750"
label variable wtp15 "No Separation, Bid 1: MWK 1500, Bid 2: MWK 3000"
label variable wtp16 "Separation, Bid 1: MWK 1500, Bid 2: MWK -"
label variable wtp17 "Separation, Bid 1: MWK 1500, Bid 2: MWK 750"
label variable wtp18 "Separation, Bid 1: MWK 1500, Bid 2: MWK 3000"
label variable wtp19 "No Separation, Bid 1: MWK 2000, Bid 2: -"
label variable wtp20 "No Separation, Bid 1: MWK 2000, Bid 2: MWK 1000"
label variable wtp21 "No Separation, Bid 1: MWK 2000, Bid 2: MWK 4000"
label variable wtp22 "Separation, Bid 1: MWK 2000, Bid 2: -"
label variable wtp23 "Separation, Bid 1: MWK 2000, Bid 2: MWK 1000"
label variable wtp24 "Separation, Bid 1: MWK 2000, Bid 2: MWK 4000"
label variable wtp25 "No Separation, Bid 1: MWK 2500, Bid 2: -"
label variable wtp26 "No Separation, Bid 1: MWK 2500, Bid 2: MWK 1250"
label variable wtp27 "No Separation, Bid 1: MWK 2500, Bid 2: MWK 5000"
label variable wtp28 "Separation, Bid 1: MWK 2500, Bid 2: -"
label variable wtp29 "Separation, Bid 1: MWK 2500, Bid 2: MWK 1250"
label variable wtp30 "Separation, Bid 1: MWK 2500, Bid 2: MWK 5000"
label variable wtp31 "No Separation, Bid 1: MWK 3000, Bid 2: -"
label variable wtp32 "No Separation, Bid 1: MWK 3000, Bid 2: MWK 1500"
label variable wtp33 "No Separation, Bid 1: MWK 3000, Bid 2: MWK 6000"
label variable wtp34 "Separation, Bid 1: MWK 3000, Bid 2: -"
label variable wtp35 "Separation, Bid 1: MWK 3000, Bid 2: MWK 1500"
label variable wtp36 "Separation, Bid 1: MWK 3000, Bid 2: MWK 6000"
*-----------------------------------------------------------------------------
*label variables beans game
label variable e2_1 "Beans Game: Public Policy - Public Education"
label variable e2_2 "Beans Game: Public Policy -  The natural environment"
label variable e2_3 "Beans Game: Public Policy - Crime prevention"
label variable e2_4 "Beans Game: Public Policy - Housing"
label variable e2_5 "Beans Game: Public Policy - Unemployment and poverty"
label variable e2_6 "Beans Game: Public Policy - Public health services"
label variable e2_7 "Beans Game: Public Policy - Food security"
label variable e2_8 "Beans Game: Public Policy - Other"
label variable e2_8_text "Beans Game: Public Policy - Other_txt"
label variable e2_9 "Beans Game: Public Policy - Prefer not to say"
*-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
label variable e3_1 "Beans Game: Environmental Issues - Water pollution"
label variable e3_2 "Beans Game: Environmental Issues - Air pollution"
label variable e3_3 "Beans Game: Environmental Issues - Deforestation "
label variable e3_4 "Beans Game: Environmental Issues - Soil degradation"
label variable e3_5 "Beans Game: Environmental Issues - Solid waste management "
label variable e3_6 "Beans Game: Environmental Issues - Loss of biodiversity"
label variable e3_7 "Beans Game: Environmental Issues - Climate change"
label variable e3_8 "Beans Game: Environmental Issues - Other"
label variable e3_8_text "Beans Game: Environmental Issues - Other_txt"
label variable e3_9 "Beans Game: Environmental Issues - Prefer not to say"
label variable e4 "Does improper solid waste management have a negative impact on the environment and human health?"
label variable e5 "What are the effects of improper solid waste management? - Selected Choice"
label variable e5_13_text "What are the effects of improper solid waste management? - Other_txt"

*-----------------------------------------------------------------------------
*rename the variables (beans game)
rename e2_1 publ_educ
rename e2_2 nat_env
rename e2_3 crime_prev
rename e2_4 housing
rename e2_5 unempl_pov
rename e2_6 health_serv
rename e2_7 foodsec
rename e2_8 pp_other
rename e2_8_text pp_other_txt
rename e2_9 pp_pnts
*-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
rename e3_1 water_poll
rename e3_2 air_poll
rename e3_3 deforestation
rename e3_4 soil_deg
rename e3_5 env_swm
rename e3_6 biodiv_loss
rename e3_7 climate_ch
rename e3_8 env_other
rename e3_8_text env_other_txt
rename e3_9 env_pnts
rename e4 impact_swm
rename e5 effects_swm
rename e5_13_text effects_swm_o

*-----------------------------------------------------------------------------
*label variables present & future SWM practices

label variable p1 "Who takes the lead role in solid waste management in your home?"
label variable p1_10_text "Who takes the lead role in solid waste management in your home? - Other"
label variable p2_1 "How satisfied are you with the current waste management options in Cape Maclear?"

label variable w1 "How often do you think waste collection services should be provided in your area?"
label variable w1_4_text "How often do you think waste collection services should be provided in your area? - Others"
label variable w2 "Willingness to engage in SWM in the community"
*-----------------------------------------------------------------------------
rename p1 lead_swm
rename p1_10_text lead_swm_o
rename p2_1 swm_satisfaction

rename w1 frequency
rename w1_4_text frequency_o
rename w2 engagement


*-----------------------------------------------------------------------------
* demographics

label variable d1 "Which village in Cape Maclear do you belong to?"
label variable d2 "Please select your gender."
label variable d3 "How old are you?"
label variable d3_1_text "How old are you? - number (completed years of life)"
label variable d4 "What is the highest level of education you completed?"
label variable d5 "employment type"
label variable d5_7_text "employment type - Other_txt"
label variable d6 "religious affiliation"
label variable d6_5_text "religious affiliation - Others_txt"
label variable d7 "How many years have you lived in Cape Maclear?"
label variable d7_1_text "How many years have you lived in Cape Maclear? - Please enter amount as a number - txt"
label variable d8 "How many years have you lived in this house?"
label variable d8_1_text "How many years have you lived in this house? - Please enter amount as a number - txt"
label variable d9 "position in the household"
label variable d9_8_text "What is your position in the household? - Other male_txt"
label variable d9_9_text "What is your position in the household? - Other female_txt"
label variable d10 "house ownership status"
label variable d10_3_text "house ownership status? - Other_txt"
label variable d11 "How many buildings do you live in? (Defined as the number of roofs you have, including living house, kitchen, stable, shed, garden house)"
label variable d11_1_text "How many buildings do you live in? - number"
label variable d12 "How many people slept in this house last night? (including fisherman)"
label variable d12_1_text "How many people slept in this house last night? (including fisherman) - number"
label variable d13 "In which income bracket does your total monthly household (of all sources) income fall?"
label variable d14 "Participation in the Waste Characterisation and Quantification study, household-ID"
*-----------------------------------------------------------------------------
rename d1 village
rename d2 gender
rename d3_1_text age
rename d4 educ
rename d5 employ
rename d5_7_text employ_o
rename d6 religion
rename d6_5_text religion_o
rename d7_1_text yrs_cape
rename d8_1_text yrs_house
rename d9 hh_position
rename d9_8_text hh_position_om
rename d9_9_text hh_position_of
rename d10 ownership
rename d10_3_text ownership_o
rename d11_1_text buildings
rename d12_1_text people 
rename d13 income
rename d14 household_id


**********************************************************************************************************************************************

* Variable Calculation WTP

**********************************************************************************************************************************************

*no separation bid 1 (starting bid)
*drop ns_bid1 
generate ns_bid1 = .
label variable ns_bid1 "no separation bid 1 (=starting bid)"

replace ns_bid1 = 500 if wtp1 == "No" | wtp1 == "Yes"
replace ns_bid1 = 1000 if wtp7 == "No" | wtp7 == "Yes"
replace ns_bid1 = 1500 if wtp13 == "No"| wtp13 == "Yes"
replace ns_bid1 = 2000 if wtp19 == "No" | wtp19 == "Yes"
replace ns_bid1 = 2500 if wtp25 == "No" | wtp25 == "Yes"
replace ns_bid1 = 3000 if wtp31 == "No" | wtp31 == "Yes"

replace ns_bid1 = . if wtp1 == "Prefer not to say" | wtp7 == "Prefer not to say" | wtp13 == "Prefer not to say" |wtp19 == "Prefer not to say" | wtp25 == "Prefer not to say" | wtp31 == "Prefer not to say"

*separation bid 1 (starting bid)
*drop s_bid1 
generate s_bid1 = .
label variable s_bid1 "separation bid 1 (=starting bid)"

replace s_bid1 = 500 if wtp4 == "No" | wtp4 == "Yes"
replace s_bid1 = 1000 if wtp10 == "No" | wtp10 == "Yes"
replace s_bid1 = 1500 if wtp16 == "No"| wtp16 == "Yes"
replace s_bid1 = 2000 if wtp22 == "No" | wtp22 == "Yes"
replace s_bid1 = 2500 if wtp28 == "No" | wtp28 == "Yes"
replace s_bid1 = 3000 if wtp34 == "No" | wtp34 == "Yes"

replace s_bid1 = . if wtp4 == "Prefer not to say" | wtp10 == "Prefer not to say" | wtp16 == "Prefer not to say" |wtp22 == "Prefer not to say" | wtp28 == "Prefer not to say" | wtp34 == "Prefer not to say"

*-----------------------------------------------------------------------------

*no separation bid 2
generate ns_bid2 = .
label variable ns_bid2 "no separation bid 2"

replace ns_bid2 = .

replace ns_bid2 = 250 if wtp2 == "No" | wtp2 == "Yes"
replace ns_bid2 = 1000 if wtp3 == "No" | wtp3 == "Yes"
replace ns_bid2 = 500 if wtp8 == "No" | wtp8 == "Yes"
replace ns_bid2 = 2000 if wtp9 == "No" | wtp9 == "Yes"
replace ns_bid2 = 750 if wtp14 == "No" | wtp14 == "Yes"
replace ns_bid2 = 3000 if wtp15 == "No" | wtp15 == "Yes"
replace ns_bid2 = 1000 if wtp20 == "No" | wtp20 == "Yes"
replace ns_bid2 = 4000 if wtp21 == "No" | wtp21 == "Yes"
replace ns_bid2 = 1250 if wtp26 == "No" | wtp26 == "Yes"
replace ns_bid2 = 5000 if wtp27 == "No" | wtp27 == "Yes"
replace ns_bid2 = 1500 if wtp32 == "No" | wtp32 == "Yes"
replace ns_bid2 = 6000 if wtp33 == "No" | wtp33 == "Yes"

replace ns_bid2 = . if wtp2 == "Prefer not to say" | wtp3 == "Prefer not to say" | wtp8 == "Prefer not to say" | wtp9 == "Prefer not to say" | wtp14 == "Prefer not to say" | wtp15 == "Prefer not to say" | wtp20 == "Prefer not to say" | wtp21 == "Prefer not to say" | wtp26 == "Prefer not to say" | wtp27 == "Prefer not to say" | wtp32 == "Prefer not to say" | wtp33 == "Prefer not to say"


*separation bid 2
generate s_bid2 = .
label variable s_bid2 "separation bid 2"

*replace s_bid2 = .

replace s_bid2 = 250 if wtp5 == "No" | wtp5 == "Yes"
replace s_bid2 = 1000 if wtp6 == "No" | wtp6 == "Yes"
replace s_bid2 = 500 if wtp11 == "No" | wtp11 == "Yes"
replace s_bid2 = 2000 if wtp12 == "No" | wtp12 == "Yes"
replace s_bid2 = 750 if wtp17 == "No" | wtp17 == "Yes"
replace s_bid2 = 3000 if wtp18 == "No" | wtp18 == "Yes"
replace s_bid2 = 1000 if wtp23 == "No" | wtp23 == "Yes"
replace s_bid2 = 4000 if wtp24 == "No" | wtp24 == "Yes"
replace s_bid2 = 1250 if wtp29 == "No" | wtp29 == "Yes"
replace s_bid2 = 5000 if wtp30 == "No" | wtp30 == "Yes"
replace s_bid2 = 1500 if wtp35 == "No" | wtp35 == "Yes"
replace s_bid2 = 6000 if wtp36 == "No" | wtp36 == "Yes"

replace s_bid2 = . if wtp5 == "Prefer not to say" | wtp6 == "Prefer not to say" | wtp11 == "Prefer not to say" | wtp12 == "Prefer not to say" | wtp17 == "Prefer not to say" | wtp18 == "Prefer not to say" | wtp23 == "Prefer not to say" | wtp24 == "Prefer not to say" | wtp29 == "Prefer not to say" | wtp30 == "Prefer not to say" | wtp35 == "Prefer not to say" | wtp36 == "Prefer not to say"



**********************************************************************************************************************************************
*-----------------------------------------------------------------------------
*dummy response no separation bid1 (starting bid), 0 = No and 1 = Yes

generate response_ns_bid1 = .

replace response_ns_bid1 = 0 if wtp1 == "No" 
replace response_ns_bid1 = 1 if wtp1 == "Yes"
replace response_ns_bid1 = . if wtp1 == "Prefer not to say"

replace response_ns_bid1 = 0 if wtp7 == "No" 
replace response_ns_bid1 = 1 if wtp7 == "Yes"
replace response_ns_bid1 = . if wtp7 == "Prefer not to say"

replace response_ns_bid1 = 0 if wtp13 == "No" 
replace response_ns_bid1 = 1 if wtp13 == "Yes"
replace response_ns_bid1 = . if wtp13 == "Prefer not to say"

replace response_ns_bid1 = 0 if wtp19 == "No" 
replace response_ns_bid1 = 1 if wtp19 == "Yes"
replace response_ns_bid1 = . if wtp19 == "Prefer not to say"

replace response_ns_bid1 = 0 if wtp25 == "No" 
replace response_ns_bid1 = 1 if wtp25 == "Yes"
replace response_ns_bid1 = . if wtp25 == "Prefer not to say"

replace response_ns_bid1 = 0 if wtp31 == "No" 
replace response_ns_bid1 = 1 if wtp31 == "Yes"
replace response_ns_bid1 = . if wtp31 == "Prefer not to say"


*dummy response separation bid1 (starting bid), 0 = No and 1 = Yes
generate response_s_bid1 = .

replace response_s_bid1 = 0 if wtp4 == "No" 
replace response_s_bid1 = 1 if wtp4 == "Yes"
replace response_s_bid1 = . if wtp4 == "Prefer not to say"

replace response_s_bid1 = 0 if wtp10 == "No" 
replace response_s_bid1 = 1 if wtp10 == "Yes"
replace response_s_bid1 = . if wtp10 == "Prefer not to say"

replace response_s_bid1 = 0 if wtp16 == "No" 
replace response_s_bid1 = 1 if wtp16 == "Yes"
replace response_s_bid1 = . if wtp16 == "Prefer not to say"

replace response_s_bid1 = 0 if wtp22 == "No" 
replace response_s_bid1 = 1 if wtp22 == "Yes"
replace response_s_bid1 = . if wtp22 == "Prefer not to say"

replace response_s_bid1 = 0 if wtp28 == "No" 
replace response_s_bid1 = 1 if wtp28 == "Yes"
replace response_s_bid1 = . if wtp28 == "Prefer not to say"

replace response_s_bid1 = 0 if wtp34 == "No" 
replace response_s_bid1 = 1 if wtp34 == "Yes"
replace response_s_bid1 = . if wtp34 == "Prefer not to say"

*-----------------------------------------------------------------------------

*dummy response no separation bid2 (starting bid), 0 = No and 1 = Yes
generate response_ns_bid2 = .

*replace response_ns_bid2 = .

replace response_ns_bid2 = 0 if wtp2 == "No" | wtp3 == "No"
replace response_ns_bid2 = 1 if wtp2 == "Yes" | wtp3 == "Yes"
replace response_ns_bid2 = . if wtp2 == "Prefer not to say" | wtp3 == "Prefer not to say"

replace response_ns_bid2 = 0 if wtp8 == "No" | wtp9 == "No"
replace response_ns_bid2 = 1 if wtp8 == "Yes" | wtp9 == "Yes"
replace response_ns_bid2 = . if wtp8 == "Prefer not to say" | wtp9 == "Prefer not to say"

replace response_ns_bid2 = 0 if wtp14 == "No" | wtp15 == "No"
replace response_ns_bid2 = 1 if wtp14 == "Yes" | wtp15 == "Yes"
replace response_ns_bid2 = . if wtp14 == "Prefer not to say" | wtp15 == "Prefer not to say"

replace response_ns_bid2 = 0 if wtp20 == "No" | wtp21 == "No"
replace response_ns_bid2 = 1 if wtp20 == "Yes" | wtp21 == "Yes"
replace response_ns_bid2 = . if wtp20 == "Prefer not to say" | wtp21 == "Prefer not to say"

replace response_ns_bid2 = 0 if wtp26 == "No" | wtp27 == "No"
replace response_ns_bid2 = 1 if wtp26 == "Yes" | wtp27 == "Yes"
replace response_ns_bid2 = . if wtp26 == "Prefer not to say" | wtp27 == "Prefer not to say"

replace response_ns_bid2 = 0 if wtp32 == "No" | wtp33 == "No"
replace response_ns_bid2 = 1 if wtp32 == "Yes" | wtp33 == "Yes"
replace response_ns_bid2 = . if wtp32 == "Prefer not to say" | wtp33 == "Prefer not to say"


*dummy response separation bid1 (starting bid), 0 = No and 1 = Yes
generate response_s_bid2 = .

*replace response_s_bid2 = .

replace response_s_bid2 = 0 if wtp5 == "No" | wtp6 == "No"
replace response_s_bid2 = 1 if wtp5 == "Yes" | wtp6 == "Yes"
replace response_s_bid2 = . if wtp5 == "Prefer not to say" | wtp6 == "Prefer not to say"

replace response_s_bid2 = 0 if wtp11 == "No" | wtp12 == "No"
replace response_s_bid2 = 1 if wtp11 == "Yes" | wtp12 == "Yes"
replace response_s_bid2 = . if wtp11 == "Prefer not to say" | wtp12 == "Prefer not to say"

replace response_s_bid2 = 0 if wtp17 == "No" | wtp18 == "No"
replace response_s_bid2 = 1 if wtp17 == "Yes" | wtp18 == "Yes"
replace response_s_bid2 = . if wtp17 == "Prefer not to say" | wtp18 == "Prefer not to say"

replace response_s_bid2 = 0 if wtp23 == "No" | wtp24 == "No"
replace response_s_bid2 = 1 if wtp23 == "Yes" | wtp24 == "Yes"
replace response_s_bid2 = . if wtp23 == "Prefer not to say" | wtp24 == "Prefer not to say"

replace response_s_bid2 = 0 if wtp29 == "No" | wtp30 == "No"
replace response_s_bid2 = 1 if wtp29 == "Yes" | wtp30 == "Yes"
replace response_s_bid2 = . if wtp29 == "Prefer not to say" | wtp30 == "Prefer not to say"

replace response_s_bid2 = 0 if wtp35 == "No" | wtp36 == "No"
replace response_s_bid2 = 1 if wtp35 == "Yes" | wtp36 == "Yes"
replace response_s_bid2 = . if wtp35 == "Prefer not to say" | wtp36 == "Prefer not to say"



**********************************************************************************************************************************************


save "../data/derived_data/Households_DerivedData.dta", replace
export delimited "../data/derived_data/Households_DerivedData.csv", replace





