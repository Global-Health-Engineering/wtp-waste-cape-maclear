************************************************************************************************************************************************

* Data manipulation & Variable Calculation

************************************************************************************************************************************************

clear
use "../data/derived_data/derived_data_tourists.dta", clear

*-----------------------------------------------------------------------------
*generate the daily spendings per tourist by dividing the expenses through the days stayed in Cape 
generate daily_spendings =.
replace daily_spendings = expenses/days_cape

************************************************************************************************************************************************
*DUMMIES 

*----------------------------------------------------------------------------- 
*dummy for if tourists have made thoughts about the endlife of their waste
generate awareness = 0
replace awareness = 1 if thoughts_endlife == "Yes"

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
*dummy for if they think there is any waste mgmt.
generate waste_mgmt = 0
replace waste_mgmt =. if collection == "Prefer not to say / don't know" | separation == "Prefer not to say / don't know" | recycling == "Prefer not to say / don't know" | composting == "Prefer not to say / don't know" | disposal == "Prefer not to say / don't know"
replace waste_mgmt = 1 if collection == "Yes" | separation == "Yes" | recycling == "Yes" | composting == "Yes" | disposal == "Yes"

*dummy for if they think there is a collection 
generate waste_coll = 0
replace waste_coll =. if collection == "Prefer not to say / don't know"
replace waste_coll = 1 if collection == "Yes"

*dummy for if they think there is a waste separation 
generate waste_sep = 0
replace waste_sep =. if separation == "Prefer not to say / don't know"
replace waste_sep = 1 if separation == "Yes"

*dummy for if they think there is recycling 
generate waste_rec = 0
replace waste_rec =. if recycling == "Prefer not to say / don't know"
replace waste_rec = 1 if recycling == "Yes"

*dummy for if they think there is composting  
generate waste_comp = 0
replace waste_comp =. if composting == "Prefer not to say / don't know"
replace waste_comp = 1 if composting == "Yes"

*dummy for if they think there is proper waste disposal  
generate waste_dis = 0
replace waste_dis =. if disposal == "Prefer not to say / don't know"
replace waste_dis = 1 if disposal == "Yes"

*----------------------------------------------------------------------------- 
*dummy if they encountered waste related issues during their stay in Cape (e.g. littered areas)
generate waste_issues = 0
replace waste_issues =. if issues == "Prefer not to say / don't know"
replace waste_issues = 1 if issues == "Yes (please specify):"

*----------------------------------------------------------------------------- 
*dummy for importance of SWM - on a scale from 0 (not at all) to 4 (extremely important)
generate swm_important =.
replace swm_important = 0 if swm_travel == "Not at all important"
replace swm_important = 1 if swm_travel == "Slightly important"
replace swm_important = 2 if swm_travel == "Moderately important"
replace swm_important = 3 if swm_travel == "Very important" 
replace swm_important = 4 if swm_travel == "Extremely important"

*----------------------------------------------------------------------------- 
*dummy for waste management support
generate support = 0
replace support =. if contribution == "Prefer not to say / don't know"
replace support = 1 if contribution == "Yes"

*----------------------------------------------------------------------------- 
*dummy for paymentmode
generate mode_dailyfee = 0
replace mode_dailyfee =. if payment == "" | payment == "Other (please specify):"
replace mode_dailyfee = 1 if payment == "Fixed fee per day"

generate mode_stayfee = 0
replace mode_stayfee =. if payment == "" | payment == "Other (please specify):"
replace mode_stayfee = 1 if payment == "Fixed fee per stay"

generate mode_fee = 0
replace mode_fee =. if payment == "" | payment == "Other (please specify):"
replace mode_fee = 1 if payment == "Fixed fee per day" | payment == "Fixed fee per stay"

generate mode_donation = 0
replace mode_donation =. if payment == "" | payment == "Other (please specify):"
replace mode_donation = 1 if payment == "Donation"

*----------------------------------------------------------------------------- 
*dummy for the different payment mode amounts
*no dummies needed

*----------------------------------------------------------------------------- 
*dummy for impact of educational programs
generate impact_educprgrms = 0
replace impact_educprgrms =. if educ_prgrms == "Prefer not to say / don't know"
replace impact_educprgrms = 1 if educ_prgrms == "Yes"

*----------------------------------------------------------------------------- 
*dummy for eco-friendly impact
generate impact_eco = 0
replace impact_eco =. if ecosupport == "Prefer not to say / don't know"
replace impact_eco = 1 if ecosupport == "Yes"

*----------------------------------------------------------------------------- 
*dummy for initiatives
*no dummy as it's open-ended

**********************************************************************************************************************************************
*DEMOGRAPHICS
*-----------------------------------------------------------------------------
*dummy variables for gender - base scenario = female (male = 1)
generate male = 0
replace male = . if gender == "Prefer not to say" 
replace male = 1 if gender == "Male"

*-----------------------------------------------------------------------------
*dummy for Nationalities

generate europe = 0
label variable europe "Nationality = Europe"
replace europe =. if nationality == ""
replace europe = 1 if nationality == "Italy" 
replace europe = 1 if nationality == "Sweden" 
replace europe = 1 if nationality == "Belgium" 
replace europe = 1 if nationality == "Ireland"
replace europe = 1 if nationality == "UK"
replace europe = 1 if nationality == "Netherlands"
replace europe = 1 if nationality == "France"
replace europe = 1 if nationality == "Norway"
replace europe = 1 if nationality == "Germany"
replace europe = 1 if nationality == "Denmark"
replace europe = 1 if nationality == "Romania"
replace europe = 1 if nationality == "Spain"

generate africa = 0
label variable africa "Nationality = Africa without Malawi (South Africa & Ghana)"
replace africa =. if nationality == ""
replace africa = 1 if nationality == "Ghana"
replace africa = 1 if nationality == "South Africa"

generate malawi = 0
label variable malawi "Nationality = Malawi"
replace malawi =. if nationality == ""
replace malawi = 1 if nationality == "Malawi"

generate america = 0
label variable america "Nationality = America"
replace america =. if nationality == ""
replace america = 1 if nationality == "USA"
replace america = 1 if nationality == "Canada"
replace america = 1 if nationality == "Cuba"

generate asia = 0
label variable asia "Nationality = Asia (Hong Kong & China)"
replace asia =. if nationality == ""
replace asia = 1 if nationality == "China"
replace asia = 1 if nationality == "Hong Kong"

generate australia = 0
label variable australia "Nationality = Australia"
replace australia =. if nationality == ""
replace australia = 1 if nationality == "Australia"

generate origin_europe = 0
replace origin_europe =. if nationality == ""
replace origin_europe = 1 if nationality == "Italy" 
replace origin_europe = 1 if nationality == "Sweden" 
replace origin_europe = 1 if nationality == "Belgium" 
replace origin_europe = 1 if nationality == "Ireland"
replace origin_europe = 1 if nationality == "UK"
replace origin_europe = 1 if nationality == "Netherlands"
replace origin_europe = 1 if nationality == "France"
replace origin_europe = 1 if nationality == "Norway"
replace origin_europe = 1 if nationality == "Germany"
replace origin_europe = 1 if nationality == "Denmark"
replace origin_europe = 1 if nationality == "Romania"
replace origin_europe = 1 if nationality == "Spain"

generate origin_malawi = 0
replace origin_malawi =. if nationality == ""
replace origin_malawi = 1 if nationality == "Malawi"

*-----------------------------------------------------------------------------
*no dummy needed for age

*-----------------------------------------------------------------------------
generate acc_budget = 0
replace acc_budget =. if lodge == ""
replace acc_budget = 1 if lodge == "Mudzi Lodge" |  lodge == "Mbombwe Lodge"

generate acc_excl = 0
replace acc_excl =. if lodge == ""
replace acc_excl = 1 if lodge == "Chembe Eagles Nest Resort" | lodge == "Kayak Africa"

generate acc_med = 0
replace acc_med =. if lodge == ""
replace acc_med = 1 if lodge == "Mgoza Lodge" | lodge == "Warm Heart Adventure Lodge" | lodge == "Thumbi View Lodge" | lodge == "Fat Monkeys Lodge" | lodge == "The Lake House" | lodge == "Thumbi View Lodge; Warm Heart Adventure Lodge; Cape Mac Lodge"

generate cottage = 0
replace cottage = 1 if lodge == "Cottage " | lodge == "Danforth Retreat" | lodge == "Fish Heaven"

*-----------------------------------------------------------------------------
*no dummy needed for days in Cape Maclear

*-----------------------------------------------------------------------------
*no dummy needed for days in Malawi

*-----------------------------------------------------------------------------
*no dummy needed for expenses -> daily spendings calculated

************************************************************************************************************************************************

* Regressions

************************************************************************************************************************************************
*GENERATE WTP 
*-----------------------------------------------------------------------------
*drop wtp
generate wtp = 55555555555
replace wtp = 0 if contribution == "No"
replace wtp =. if contribution == "Prefer not to say / don't know" | payment == "Other (please specify):"
replace wtp =. if payment == "Donation"
replace wtp = dailyfee if dailyfee !=. 
replace wtp =. if payment == "Fixed fee per day" & dailyfee ==.
replace wtp = (stayfee/(days_cape)) if stayfee !=. 	// calculates the fee they would pay per day in Cape
replace wtp =. if payment == "Fixed fee per stay" & stayfee ==.
*-----------------------------------------------------------------------------
regress wtp

regress wtp malawi africa america asia australia 

regress wtp africa malawi america asia australia acc_excl cottage age days_cape days_malawi daily_spendings male
*note: asia omitted because of collinearity 

regress wtp awareness swm_dissatisfied waste_mgmt swm_important impact_educprgrms mode_stayfee mode_donation impact_eco
*note: mode_donation omitted because of collinearity 
*note: impact_eco omitted because of collinearity

regress wtp support 
regress wtp awareness support
regress wtp swm_dissatisfied support awareness

regress wtp waste_mgmt waste_coll waste_sep waste_rec waste_comp waste_dis waste_issues
*probably only take waste_mgmt waste_coll waste_sep waste_rec 

regress wtp europe africa malawi america asia australia
regress wtp origin_europe origin_malawi
*probably only regress origin_malawi

regress wtp awareness swm_dissatisfied 
*regress wtp support --> exclude support as it is integrated in the wtp (if support = 0, then wtp = 0)

regress wtp swm_important
regress wtp mode_dailyfee 
regress wtp mode_donation
regress wtp mode_stayfee 
*base: mode_donation 
regress wtp impact_educprgrms impact_eco cottage 
*take cottage out 

regress wtp waste_mgmt waste_issues waste_rec

**********************************************************************************************************************************************
*FINAL REGRESSIONS
*-----------------------------------------------------------------------------
*Base
regress wtp

*Demographics 
regress wtp male age days_cape days_malawi daily_spendings malawi acc_med
*exclude expenses as it's not weighted -> daily spendings is the weighted expenses 
*Base: acc_excl
*take acc_med into demographics (acc_budget has 0 observations)

*SWM
regress wtp waste_issues swm_important awareness satisfaction impact_educprgrms impact_eco 
regress wtp waste_issues awareness satisfaction impact_educprgrms impact_eco 
regress wtp waste_issues awareness satisfaction impact_educprgrms impact_eco 
*SWM important: how important is SWM in your selection of travel choice 
*probably delete awareness (awareness :people that thought about what happens to their waste are more willing to pay)
*regress wtp support --> exclude support as it is integrated in the wtp (if support = 0, then wtp = 0)

*SWM options 
regress wtp waste_mgmt waste_coll waste_sep waste_rec
*nothing significant 
regress wtp waste_coll waste_sep waste_rec
regress wtp waste_issues impact_educprgrms swm_dissatisfied 		//best one

regress wtp waste_issues satisfaction impact_educprgrms swm_dissatisfied
regress wtp waste_issues satisfaction impact_educprgrms 

regress wtp waste_issues swm_important awareness satisfaction impact_educprgrms impact_eco waste_mgmt waste_coll waste_sep waste_rec
*nothing significant

*all together 
regress wtp male age days_cape days_malawi daily_spendings malawi acc_med awareness swm_dissatisfied waste_issues swm_important impact_educprgrms impact_eco waste_mgmt waste_coll waste_sep waste_rec
*nothing significant, malawi & waste_issues ommitted 

regress wtp male age days_cape days_malawi daily_spendings malawi acc_med waste_issues swm_important awareness satisfaction impact_educprgrms impact_eco waste_mgmt waste_coll waste_sep waste_rec
*nothing significant, waste_sep ommitted

regress wtp male age days_cape days_malawi daily_spendings malawi acc_med waste_issues impact_educprgrms swm_dissatisfied 	
*waste_issues ommitted

*Base
regress wtp

*Demographics 
regress wtp male age days_cape days_malawi daily_spendings malawi acc_med

*SWM options 
regress wtp waste_issues impact_educprgrms swm_dissatisfied 		//best one

*all together 
regress wtp male age days_cape days_malawi daily_spendings malawi acc_med waste_issues impact_educprgrms swm_dissatisfied
*waste_issues ommitted, only malawi significant

**********************************************************************************************************************************************
*FINAL REGRESSIONS 2.0
*-----------------------------------------------------------------------------

regress wtp malawi africa america asia australia 

regress wtp acc_excl 

regress wtp age male

regress wtp days_cape days_malawi daily_spendings 

regress wtp awareness 
regress wtp swm_dissatisfied 

regress wtp swm_important 
*significant 

regress wtp impact_educprgrms impact_eco
regress wtp mode_stayfee mode_donation 

regress wtp waste_mgmt 
regress wtp waste_mgmt waste_coll waste_sep waste_rec waste_comp waste_dis 
regress wtp waste_rec waste_comp waste_dis 
regress wtp waste_issues

regress wtp origin_malawi

regress wtp awareness swm_dissatisfied 

regress wtp swm_important
regress wtp mode_dailyfee 
regress wtp mode_donation
*significant 

regress wtp mode_stayfee 
