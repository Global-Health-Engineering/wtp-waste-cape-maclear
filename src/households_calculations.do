**********************************************************************************************************************************************

* Data manipulation & Variable Calculation HH

**********************************************************************************************************************************************

clear
use "../data/derived_data/derived_data_households.dta", clear

*generate actual years in cape and house ("All my life")
replace yrs_cape = age if d7 == "All my life"
replace yrs_house = age if d8 == "All my life"

**********************************************************************************************************************************************

* Generate Dummy Variables

**********************************************************************************************************************************************
*SWM SATISFACTION
*-----------------------------------------------------------------------------
*dummy variables for satisfaction of current waste management options in Cape Maclear

*drop swm_n_satisfied
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
*dummy variables for beans game / environmental concern

*nat_env -> no dummy needed
*env_swm -> no dummy needed

*-----------------------------------------------------------------------------
*dummy variables for negative impact on environment of improper SWM
generate neg_impact = 0
replace neg_impact =. if impact_swm == "Prefer not to say"
replace neg_impact = 1 if impact_swm == "Yes"

*-----------------------------------------------------------------------------
*dummy variables for engagement in the SWM system - base is no engagement
generate fee = 0
replace fee=. if engagement == "Prefer not to say"
replace fee = 1 if engagement == "I would be willing to pay a fee"

generate time = 0
replace time =. if engagement == "Prefer not to say"
replace time = 1 if engagement == "I would be willing to contribute my time"

generate no_engagement = 0
replace no_engagement =. if engagement == "Prefer not to say"
replace no_engagement = 1 if engagement == "I do not want do engage in solid waste management"

**********************************************************************************************************************************************
*OTHER
*-----------------------------------------------------------------------------
*dummy variables for collection frequency

generate weekly = 0
replace weekly =. if frequency == "Prefer not to say" | frequency == "Other (please specify): "
replace weekly = 1 if frequency == "Once a week"

generate biweekly = 0
replace biweekly =. if frequency == "Prefer not to say" | frequency == "Other (please specify): "
replace biweekly = 1 if frequency == "Bi-weekly / twice a week"


generate daily = 0
replace daily =. if frequency == "Prefer not to say" | frequency == "Other (please specify): "
replace daily = 1 if frequency == "Every day"

**********************************************************************************************************************************************
*DEMOGRAPHICS
*-----------------------------------------------------------------------------
*dummy variables for gender - base scenario = female (male = 1)
generate male = 0
replace male = . if gender == "Prefer not to say"
replace male = 1 if gender == "Male"

*-----------------------------------------------------------------------------
*dummy variable for religion - base is no christianity
generate christian = 0
replace christian =. if religion== "Prefer not to say"
replace christian = 1 if religion== "Christianity"

*-----------------------------------------------------------------------------
*dummy variable for age
*no dummy needed 

*-----------------------------------------------------------------------------
*dummy variable for years in Cape Maclear
*no dummy needed

*dummy variable for years in Cape Maclear - all my life
generate all_life = 0
replace all_life =. if d7 == "Prefer not to say"
replace all_life = 1 if d7 == "All my life"

*-----------------------------------------------------------------------------
*dummy variable for years in the house
*no dummy needed

*-----------------------------------------------------------------------------
*dummy variable for house ownership 
generate owner = 0
replace owner =. if ownership == "Prefer not to say" | ownership == "Other (please specify):"
replace owner = 1 if ownership == "Owner"

**********************************************************************************************************************************************
*HH Role 
*-----------------------------------------------------------------------------
*dummy variable if the lead in SWM is also the head of HH (female or male)
generate lead_head = 0
replace lead_head =. if lead_swm == "Hired labour (e.g., gardener, maid, etc.) " | lead_swm == "Prefer not to say"
replace lead_head = 1 if lead_swm == "Female head of HH" | lead_swm == "Male head of HH"

*-----------------------------------------------------------------------------
*dummy variables for position in the HH (if the participant was the head of HH)
generate hh_head = 0
replace hh_head =. if hh_position == "Prefer not to say"
replace hh_head = 1 if hh_position == "Female head of HH" | hh_position == "Male head of HH"

**********************************************************************************************************************************************
*RICH - POOR
*-----------------------------------------------------------------------------
*dummy variables for village - base scenario = Muonda
generate muonda = 0
replace muonda =. if village == "Prefer not to say"
replace muonda = 1 if village == "Muonda"

generate nkhono = 0
replace nkhono =. if village == "Prefer not to say"
replace nkhono = 1 if village == "Nkhono"

generate madothi = 0
replace madothi =. if village == "Prefer not to say"
replace madothi = 1 if village == "Madothi"

generate katukumala = 0
replace katukumala =. if village == "Prefer not to say"
replace katukumala = 1 if village == "Katukumala"

generate kafukuta = 0
replace kafukuta =. if village == "Prefer not to say"
replace kafukuta = 1 if village == "Kafukuta"

generate chembe = 0
replace chembe =. if village == "Prefer not to say"
replace chembe = 1 if village == "Chembe"

*-----------------------------------------------------------------------------
*dummy variables for employment - base scenario = employed
generate unemployed = 0
replace unemployed =. if employ == "Prefer not to say"
replace unemployed = 1 if employ == "Unemployed"

*-----------------------------------------------------------------------------
*dummy variables for education - base is basic education (=Primary education")
generate basic_educ = 0
replace basic_educ =. if educ == "Prefer not to say"
replace basic_educ = 1 if educ == "Primary education"

generate no_educ = 0
replace no_educ =. if educ == "Prefer not to say"
replace no_educ = 1 if educ == "No education"

generate higher_educ = 0
replace higher_educ =. if educ == "Prefer not to say"
replace higher_educ = 1 if educ == "Secondary education " | educ == "Tertiary education"

*-----------------------------------------------------------------------------
*dummy variables for income brackets - base scenarion income between 0-50k
*drop inc_0_50k
generate inc_0_50k = 0
replace inc_0_50k =. if income == "Prefer not to say" 
replace inc_0_50k = 1 if income == "Less than 25,000" | income == "25,001 to 50,000"

generate inc_50_100k = 0
replace inc_50_100k =. if income == "Prefer not to say" 
replace inc_50_100k = 1 if income == "50,001 to 75,000" | income == "75,001 to 100,000"

generate inc_100_150k = 0
replace inc_100_150k =. if income == "Prefer not to say" 
replace inc_100_150k = 1 if income == "100,001 to 125,000" | income == "125,001 to 150,000"

generate inc_150_200k = 0
replace inc_150_200k =. if income == "Prefer not to say" 
replace inc_150_200k = 1 if income == "150,001 to 175,000" | income == "175,001 to 200,000"

generate inc_200_250k = 0
replace inc_50_100k =. if income == "Prefer not to say" 
replace inc_200_250k = 1 if income == "200,001 to 225,000" | income == "225,001 to 250,000"

generate inc_250_300k = 0
replace inc_250_300k =. if income == "Prefer not to say" 
replace inc_250_300k = 1 if income == "250,001 to 275,000" | income == "275,001 to 300,000"

generate inc_300k_ = 0
replace inc_300k_ =. if income == "Prefer not to say" 
replace inc_300k_ = 1 if income == "More than 300,000"

**********************************************************************************************************************************************

* Willingness To Pay (WTP)

**********************************************************************************************************************************************

*Calculate the WTP with doubleb command

*Base Scenario: without waste separation
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2

*Base Scenario: with waste separation (HH have to separate their waste)
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2

*-----------------------------------------------------------------------------
*Scenario: WITHOUT waste separation
*other
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 fee time 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 weekly biweekly

*SWM Satisfaction
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 neg_impact env_swm nat_env swm_dissatisfied
*SWM Satisfaction w/o neg_impact
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 env_swm nat_env swm_dissatisfied

*Demographics
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 male christian age yrs_cape yrs_house owner all_life

*HH Role
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 lead_head hh_head

*Rich-Poor
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 muonda nkhono katukumala kafukuta chembe unemployed basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

*all together
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 fee time weekly biweekly neg_impact env_swm nat_env swm_dissatisfied male christian age yrs_cape yrs_house owner all_life lead_head hh_head muonda nkhono katukumala kafukuta chembe unemployed basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

*-----------------------------------------------------------------------------
*Scenario: WITH waste separation (HH have to separate their waste)
*other
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 fee time 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 weekly biweekly

*SWM Satisfaction
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 neg_impact env_swm nat_env swm_dissatisfied
*SWM Satisfaction w/o neg_impact
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 env_swm nat_env swm_dissatisfied

*Demographics
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 male christian age yrs_cape yrs_house owner all_life

*HH Role
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 lead_head hh_head

*Rich-Poor
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 muonda nkhono katukumala kafukuta chembe unemployed basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

*all together
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 fee time weekly biweekly neg_impact env_swm nat_env swm_dissatisfied male christian age yrs_cape yrs_house owner all_life lead_head hh_head muonda nkhono katukumala kafukuta chembe unemployed basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

**********************************************************************************************************************************************
*TABLE
*-----------------------------------------------------------------------------
*NS: Base
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 

*S: Base
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2

*-----------------------------------------------------------------------------

*NS: Demographics  
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 male age unemployed lead_head hh_head 

*S: Demographics  
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 male age unemployed lead_head hh_head 

*-----------------------------------------------------------------------------
*NS: Education 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 basic_educ higher_educ 

*S: Education 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 basic_educ higher_educ 

*-----------------------------------------------------------------------------
*NS: Income
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

*S: Income
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_

*-----------------------------------------------------------------------------
*NS: Village 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 muonda nkhono katukumala kafukuta chembe

*S: Village 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 muonda nkhono katukumala kafukuta chembe

*-----------------------------------------------------------------------------
*NS: SWM 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 fee time env_swm nat_env satisfaction

*S: SWM 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 fee time env_swm nat_env satisfaction

*-----------------------------------------------------------------------------
*NS: All 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env satisfaction 

*S: All 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env satisfaction

*-----------------------------------------------------------------------------

*NS: SWM 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 fee time env_swm nat_env satisfaction
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 fee time env_swm nat_env swm_dissatisfied

*S: SWM 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 fee time env_swm nat_env satisfaction
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 fee time env_swm nat_env swm_dissatisfied

*-----------------------------------------------------------------------------
*NS: All 
doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env satisfaction 

doubleb ns_bid1 ns_bid2 response_ns_bid1 response_ns_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env swm_dissatisfied 

*S: All 
doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env satisfaction

doubleb s_bid1 s_bid2 response_s_bid1 response_s_bid2 male age unemployed lead_head hh_head basic_educ higher_educ inc_50_100k inc_100_150k inc_150_200k inc_200_250k inc_250_300k inc_300k_ muonda nkhono katukumala kafukuta chembe fee time env_swm nat_env swm_dissatisfied

*-----------------------------------------------------------------------------

tab wtp1 if time == 1
tab wtp2 if time == 1
tab wtp3 if time == 1
tab wtp4 if time == 1
tab wtp5 if time == 1
tab wtp6 if time == 1
tab wtp7 if time == 1
tab wtp8 if time == 1
tab wtp9 if time == 1
tab wtp10 if time == 1
tab wtp11 if time == 1
tab wtp12 if time == 1
tab wtp13 if time == 1
tab wtp14 if time == 1
tab wtp15 if time == 1
tab wtp16 if time == 1
tab wtp17 if time == 1
tab wtp18 if time == 1
tab wtp19 if time == 1
tab wtp20 if time == 1
tab wtp21 if time == 1
tab wtp22 if time == 1
tab wtp23 if time == 1
tab wtp24 if time == 1
tab wtp25 if time == 1
tab wtp26 if time == 1
tab wtp27 if time == 1
tab wtp28 if time == 1
tab wtp29 if time == 1
tab wtp30 if time == 1
tab wtp31 if time == 1
tab wtp32 if time == 1
tab wtp33 if time == 1
tab wtp34 if time == 1
tab wtp35 if time == 1
tab wtp36 if time == 1

tab wtp1 if no_engagement == 1
tab wtp2 if no_engagement == 1
tab wtp3 if no_engagement == 1
tab wtp4 if no_engagement == 1
tab wtp5 if no_engagement == 1
tab wtp6 if no_engagement == 1
tab wtp7 if no_engagement == 1
tab wtp8 if no_engagement == 1
tab wtp9 if no_engagement == 1
tab wtp10 if no_engagement == 1
tab wtp11 if no_engagement == 1
tab wtp12 if no_engagement == 1
tab wtp13 if no_engagement == 1
tab wtp14 if no_engagement == 1
tab wtp15 if no_engagement == 1
tab wtp16 if no_engagement == 1
tab wtp17 if no_engagement == 1
tab wtp18 if no_engagement == 1
tab wtp19 if no_engagement == 1
tab wtp20 if no_engagement == 1
tab wtp21 if no_engagement == 1
tab wtp22 if no_engagement == 1
tab wtp23 if no_engagement == 1
tab wtp24 if no_engagement == 1
tab wtp25 if no_engagement == 1
tab wtp26 if no_engagement == 1
tab wtp27 if no_engagement == 1
tab wtp28 if no_engagement == 1
tab wtp29 if no_engagement == 1
tab wtp30 if no_engagement == 1
tab wtp31 if no_engagement == 1
tab wtp32 if no_engagement == 1
tab wtp33 if no_engagement == 1
tab wtp34 if no_engagement == 1
tab wtp35 if no_engagement == 1
tab wtp36 if no_engagement == 1
