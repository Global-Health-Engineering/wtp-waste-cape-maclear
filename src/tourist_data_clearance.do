************************************************************************************************************************************************

* Data Clearance Tourists

************************************************************************************************************************************************

clear
use "../data/raw_data/Tourists_RawData.dta", clear


*-----------------------------------------------------------------------------
*label variables present SWM practices & SWM in Cape Maclear

label variable a1 "Have you ever thought about what happens to the waste you dispose of in Cape Maclear after you put it in the bin?"
label variable a2_1 "How satisfied are you with the current waste management situation in Cape Maclear?"
label variable a3 "Do you think there are any waste collection services in Cape Maclear?"
label variable a4 "Do you believe that waste is properly separated in Cape Maclear to facilitate recycling efforts?"
label variable a5 "Do you think there are recycling services available in Cape Maclear?"
label variable a6 "Do you think there are any facilities for composting organic waste in Cape Maclear?"
label variable a7 "Do you think there are any waste disposal services (e.g., landfills or incineration of waste) in Cape Maclear?"
label variable a8 "Have you encountered any waste-related issues during your stay in Cape Maclear?"
label variable a8_2_text "Have you encountered any waste-related issues during your stay in Cape Maclear? specify"
*-----------------------------------------------------------------------------
rename a1 thoughts_endlife
rename a2_1 swm_satisfaction
rename a3 collection
rename a4 separation
rename a5 recycling
rename a6 composting
rename a7 disposal
rename a8 issues
rename a8_2_text issues_txt


*-----------------------------------------------------------------------------
*label variables WTP & Others 

label variable b1_1 "Importance SWM in choice of travel destination"
label variable b2 "Willingness to support SWM efforts"
label variable b3 "How would you like to pay for the SWM system?"
label variable b3_1_text "Payment SWM system? - fixed fee per day"
label variable b3_2_text "Payment SWM system? - fixed fee per stay"
label variable b3_3_text "Payment SWM system? - donation"
label variable b3_4_text "Payment SWM system? - Other"
label variable b4 "Willingness to pay for SWM if included educational programs"
label variable b5 "Would you be more likely to support local businesses and lodges that actively participate in eco-friendly waste management practices?"
label variable b6 "What specific waste management initiatives or practices would positively influence your experience as a tourist in Cape Maclear?"
*-----------------------------------------------------------------------------
rename b1_1 swm_travel
rename b2 contribution
rename b3 payment
rename b3_1_text dailyfee
rename b3_2_text stayfee
rename b3_3_text donation
rename b3_4_text fee_o
rename b4 educ_prgrms
rename b5 ecosupport
rename b6 initiatives


*-----------------------------------------------------------------------------
*label variables demographics 

label variable d1 "Please select your gender."
label variable d2 "What is your nationality? - Selected Choice"
label variable d2_4_text "What is your nationality? - Please write the country's name: - Text"
label variable d3 "How old are you?"
label variable d3_5_text "How old are you? - number (completed years of life)"
label variable d4 "Where do you stay in Cape Maclear?"
label variable d4_4_text "Where do you stay in Cape Maclear? - name of accommodation"
label variable d5 "How many days are you staying in Cape Maclear?"
label variable d5_4_text "How many days are you staying in Cape Maclear? - number"
label variable d6 "How many days are you staying in Malawi?"
label variable d6_4_text "How many days are you staying in Malawi? - number"
label variable d7 "How much money in total do you plan to spend in Cape Maclear? (including accommodation, food, beverages, activities, souvenirs, etc.)"
label variable d7_4_text "How much money in total do you plan to spend in Cape Maclear? - number"
*-----------------------------------------------------------------------------
rename d1 gender
rename d2_4_text nationality
rename d3_5_text age
rename d4_4_text lodge
rename d5_4_text days_cape
rename d6_4_text days_malawi
rename d7_4_text expenses


*-----------------------------------------------------------------------------
*label variables present SWM practices
*label variable f1 "final remarks"

*-----------------------------------------------------------------------------

************************************************************************************************************************************************

* Data Manipulation Tourists

************************************************************************************************************************************************
*OUTLIERS
replace stayfee =. if stayfee == 2000
replace donation =. if donation == 5000
*these are considered as outliers (probably thought its in MWK instead of US$)
*-----------------------------------------------------------------------------

*Europe
replace nationality = "Netherlands" if responseid == "R_2rJlErE7lVU26Jp"
replace nationality = "Netherlands" if responseid == "R_cGFmQ5ofAJUVAhX"
replace nationality = "Netherlands" if responseid == "R_9QxKJFESsmcym0V"
replace nationality = "Netherlands" if responseid == "R_3PYzgFKJCI0npn6"
replace nationality = "Netherlands" if responseid == "R_2cjB82HLFN1p976"
replace nationality = "Netherlands" if responseid == "R_32PV3u5h3mMLYPQ"
replace nationality = "Netherlands" if responseid == "R_2BbUAt3QsEBFOcN"
replace nationality = "Netherlands" if responseid == "R_eqBM6cFto64a0s9"
replace nationality = "Netherlands" if responseid == "R_2QgQeoGzxdUA8DW"
replace nationality = "Netherlands" if responseid == "R_8TpckHB1kZgyi22"

replace nationality = "France" if responseid == "R_3OepzKAEo307MrG"
replace nationality = "France" if responseid == "R_27226yDPGS2damT"
replace nationality = "France" if responseid == "R_295NYelweixD4Zo"
replace nationality = "France" if responseid == "R_27110Z3vZilt8zB"

replace nationality = "Norway" if responseid == "R_2OYEFmxrREFvkP4"

replace nationality = "Germany" if responseid == "R_2EsCeVgMIKebnMV"
replace nationality = "Germany" if responseid == "R_1FP9R8zsx7VZM2t"
replace nationality = "Germany" if responseid == "R_2Vxx42j8YzVNzdf"
replace nationality = "Germany" if responseid == "R_3nCXSemP9nU8mdS"
replace nationality = "Germany" if responseid == "R_XZC5tpTXsiNrJOV"
replace nationality = "Germany" if responseid == "R_2Bkuk3RvcfWVypg"
replace nationality = "Germany" if responseid == "R_2w0FM7ugEl9Tr7f"

replace nationality = "UK" if responseid == "R_xupYB4kdk6Skq2t"
replace nationality = "UK" if responseid == "R_3NxkIgiBj064Sao"
replace nationality = "UK" if responseid == "R_0cXJb8Dzr9nsm65"
replace nationality = "UK" if responseid == "R_2eWM6cAFBbqVP9L"
replace nationality = "UK" if responseid == "R_9Y9xbvgf8ycUich"
replace nationality = "UK" if responseid == "R_Rt5vQjYIZnDtzW1"
replace nationality = "UK" if responseid == "R_xDBttqr15inAj5L"
replace nationality = "UK" if responseid == "R_1pXoc2TXNSaozsV"
replace nationality = "UK" if responseid == "R_6dojFGq2FBy2Ijo"
replace nationality = "UK" if responseid == "R_7MLQDO0g25aCNYQ"
replace nationality = "UK" if responseid == "R_1OOkZWjzVsWzQYE"

replace nationality = "Italy" if responseid == "R_2uyBAfCApTMB2eE"
replace nationality = "Italy" if responseid == "R_2S1DTpqaz28xhDm"
replace nationality = "Italy" if responseid == "R_3qO34kZahUWqOGz"
replace nationality = "Italy" if responseid == "R_1Ic4ORE0iwBGgQG"
replace nationality = "Italy" if responseid == "R_C3ykYoEHW7RVuyB"
replace nationality = "Italy" if responseid == "R_VXqRuQxA9f5z1AJ"

replace nationality = "Sweden" if responseid == "R_UrKvJPoGvckjBsZ"
replace nationality = "Sweden" if responseid == "R_2rTnBsprw9z6esd"
replace nationality = "Sweden" if responseid == "R_sbwXuIDlVDQhmaB"
replace nationality = "Sweden" if responseid == "R_3MsbSuPGpICNWa5"
replace nationality = "Sweden" if responseid == "R_OrJeaVnw5fbqJHz"
replace nationality = "Sweden" if responseid == "R_1QFvxZTmylTx29w"
replace nationality = "Sweden" if responseid == "R_yBWvWBM9jZmaKxr"

replace nationality = "Ireland" if responseid == "R_30ucjLAdXxMQEVM"

replace nationality = "Belgium" if responseid == "R_1d48v79SfIgNp2Y"
replace nationality = "Belgium" if responseid == "R_1HeCYBUvQLFVjPt"
replace nationality = "Belgium" if responseid == "R_2uI1HIY3SRYLqDR"
replace nationality = "Belgium" if responseid == "R_1gjxotsvkrEJYUg"
replace nationality = "Belgium" if responseid == "R_4EOxfUJUm2U53IR"


*-----------------------------------------------------------------------------
*Australia
replace nationality = "Australia" if responseid == "R_3j7B50I6yQHVInK"
replace nationality = "Australia" if responseid == "R_3psTmRHjf9h2r32"

*-----------------------------------------------------------------------------
*America
replace nationality = "USA" if responseid == "R_xFLMSQQLupWRMkh"
replace nationality = "USA" if responseid == "R_3O8HUGtj7VhdtLS"
replace nationality = "USA" if responseid == "R_271NM3OP7ZrEgrj"
replace nationality = "USA" if responseid == "R_vHK9BmCis71gRB7"
replace nationality = "USA" if responseid == "R_2SwTQtcnl1Pd8Cc"

replace nationality = "Canada" if responseid == "R_3oN1ZOBS35YNxFa"

*-----------------------------------------------------------------------------
*Asia
replace nationality = "Hong Kong" if responseid == "R_1oHjLNpX3gnLUjP"

*-----------------------------------------------------------------------------
*Malawi
replace nationality = "Malawi" if responseid == "R_1pAP9OhU6z1ZMDw"
replace nationality = "Malawi" if responseid == "R_1duYNMQpDmNHVCl"
replace nationality = "Malawi" if responseid == "R_3pa7B29sYLVIC5C"
replace nationality = "Malawi" if responseid == "R_1gunj5RQleNEZ6V"
replace nationality = "Malawi" if responseid == "R_3spsLKpizYTisxp"
replace nationality = "Malawi" if responseid == "R_2BbKg7mPpRxMxjr"
replace nationality = "Malawi" if responseid == "R_3dKuawcJJ77uGDA"
replace nationality = "Malawi" if responseid == "R_DNNwCjvGhmZq1ZT"
replace nationality = "Malawi" if responseid == "R_T7xqiLcUkPyTcWZ"
replace nationality = "Malawi" if responseid == "R_5n78p2sNzGXZKcS"
replace nationality = "Malawi" if responseid == "R_15ToFPKopuYOId0"

*-----------------------------------------------------------------------------
*Africa without Malalwi
replace nationality = "South Africa" if responseid == "R_1di3oA1VuWVegIc"
replace nationality = "South Africa" if responseid == "R_1yKPcOb1qA9BCJr"
replace nationality = "South Africa" if responseid == "R_2TMmYYgsVgww6tn"
replace nationality = "South Africa" if responseid == "R_2q0i4MPaiXK1129"

replace nationality = "Ghana" if responseid == "R_2qeinstDdHiqvCh"

*-----------------------------------------------------------------------------
*Data Clearance Lodge Names
replace lodge = "Mgoza Lodge" if responseid == "R_sLSOdOyDD0qdhMB"
replace lodge = "Mgoza Lodge" if responseid == "R_2rJlErE7lVU26Jp"
replace lodge = "Mgoza Lodge" if responseid == "R_3OepzKAEo307MrG"
replace lodge = "Mgoza Lodge" if responseid == "R_2OYEFmxrREFvkP4"
replace lodge = "Mgoza Lodge" if responseid == "R_27226yDPGS2damT"
replace lodge = "Mgoza Lodge" if responseid == "R_2Vxx42j8YzVNzdf"
replace lodge = "Mgoza Lodge" if responseid == "R_3nCXSemP9nU8mdS"
replace lodge = "Mgoza Lodge" if responseid == "R_XZC5tpTXsiNrJOV"
replace lodge = "Mgoza Lodge" if responseid == "R_3PYzgFKJCI0npn6"
replace lodge = "Mgoza Lodge" if responseid == "R_271NM3OP7ZrEgrj"
replace lodge = "Mgoza Lodge" if responseid == "R_3NxkIgiBj064Sao"
replace lodge = "Mgoza Lodge" if responseid == "R_0cXJb8Dzr9nsm65"
replace lodge = "Mgoza Lodge" if responseid == "R_2S1DTpqaz28xhDm"
replace lodge = "Mgoza Lodge" if responseid == "R_C3ykYoEHW7RVuyB"
replace lodge = "Mgoza Lodge" if responseid == "R_VXqRuQxA9f5z1AJ"
replace lodge = "Mgoza Lodge" if responseid == "R_3oN1ZOBS35YNxFa"
replace lodge = "Mgoza Lodge" if responseid == "R_1duYNMQpDmNHVCl"
replace lodge = "Mgoza Lodge" if responseid == "R_32PV3u5h3mMLYPQ"
replace lodge = "Mgoza Lodge" if responseid == "R_2BbUAt3QsEBFOcN"
replace lodge = "Mgoza Lodge" if responseid == "R_3pa7B29sYLVIC5C"
replace lodge = "Mgoza Lodge" if responseid == "R_9Y9xbvgf8ycUich"
replace lodge = "Mgoza Lodge" if responseid == "R_1gunj5RQleNEZ6V"
replace lodge = "Mgoza Lodge" if responseid == "R_3spsLKpizYTisxp"
replace lodge = "Mgoza Lodge" if responseid == "R_2BbKg7mPpRxMxjr"
replace lodge = "Mgoza Lodge" if responseid == "R_DNNwCjvGhmZq1ZT"
replace lodge = "Mgoza Lodge" if responseid == "R_T7xqiLcUkPyTcWZ"
replace lodge = "Mgoza Lodge" if responseid == "R_1HeCYBUvQLFVjPt"
replace lodge = "Mgoza Lodge" if responseid == "R_2uI1HIY3SRYLqDR"
replace lodge = "Mgoza Lodge" if responseid == "R_21mFMtgRhB1hoCg"
replace lodge = "Mgoza Lodge" if responseid == "R_xDBttqr15inAj5L"
replace lodge = "Mgoza Lodge" if responseid == "R_4EOxfUJUm2U53IR"


replace lodge = "Other" if responseid == "R_2uyBAfCApTMB2eE"
replace lodge = "Other" if responseid == "R_15ToFPKopuYOId0"
replace lodge = "Other" if responseid == "R_1pXoc2TXNSaozsV"
replace lodge = "Other" if responseid == "R_2VD7RCSES16WvFQ"
replace lodge = "Other" if responseid == "R_3dKuawcJJ77uGDA"

replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_BXGmjK9dlcp9VBv"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_3j7B50I6yQHVInK"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_3psTmRHjf9h2r32"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_1di3oA1VuWVegIc"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_295NYelweixD4Zo"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_Rt5vQjYIZnDtzW1"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_2SwTQtcnl1Pd8Cc"
replace lodge = "Warm Heart Adventure Lodge" if responseid == "R_1gjxotsvkrEJYUg"

replace lodge = "Kayak Africa" if responseid == "R_30ucjLAdXxMQEVM"
replace lodge = "Kayak Africa" if responseid == "R_1OOkZWjzVsWzQYE"

replace lodge = "Thumbi View Lodge; Warm Heart Adventure Lodge; Cape Mac Lodge" if responseid == "R_2qeinstDdHiqvCh" 

replace lodge = "Thumbi View Lodge" if responseid == "R_cGFmQ5ofAJUVAhX"
replace lodge = "Thumbi View Lodge" if responseid == "R_9QxKJFESsmcym0V"
replace lodge = "Thumbi View Lodge" if responseid == "R_2EsCeVgMIKebnMV"
replace lodge = "Thumbi View Lodge" if responseid == "R_Q0P4cnh8IveRwI1"
replace lodge = "Thumbi View Lodge" if responseid == "R_UrKvJPoGvckjBsZ"
replace lodge = "Thumbi View Lodge" if responseid == "R_2Bkuk3RvcfWVypg"
replace lodge = "Thumbi View Lodge" if responseid == "R_2eWM6cAFBbqVP9L"
replace lodge = "Thumbi View Lodge" if responseid == "R_2w0FM7ugEl9Tr7f"
replace lodge = "Thumbi View Lodge" if responseid == "R_eqBM6cFto64a0s9"
replace lodge = "Thumbi View Lodge" if responseid == "R_2rTnBsprw9z6esd"
replace lodge = "Thumbi View Lodge" if responseid == "R_3MsbSuPGpICNWa5"
replace lodge = "Thumbi View Lodge" if responseid == "R_OrJeaVnw5fbqJHz"
replace lodge = "Thumbi View Lodge" if responseid == "R_yBWvWBM9jZmaKxr"
replace lodge = "Thumbi View Lodge" if responseid == "R_yBWvWBM9jZmaKxr"

replace lodge = "Fish Heaven" if responseid == "R_xFLMSQQLupWRMkh"
replace lodge = "Fish Heaven" if responseid == "R_3O8HUGtj7VhdtLS"

replace lodge = "Danforth Retreat" if responseid == "R_1yKPcOb1qA9BCJr"
replace lodge = "Danforth Retreat" if responseid == "R_2TMmYYgsVgww6tn"

replace lodge = "The Lake House" if responseid == "R_7MLQDO0g25aCNYQ"

replace lodge = "Fat Monkeys Lodge" if responseid == "R_xupYB4kdk6Skq2t"
replace lodge = "Fat Monkeys Lodge" if responseid == "R_1pAP9OhU6z1ZMDw"
replace lodge = "Fat Monkeys Lodge" if responseid == "R_8TpckHB1kZgyi22"
replace lodge = "Fat Monkeys Lodge" if responseid == "R_5n78p2sNzGXZKcS"

replace lodge = "Chembe Eagles Nest Resort" if responseid == "R_31g7UIAuDHtxABT"
replace lodge = "Chembe Eagles Nest Resort" if responseid == "R_2QgQeoGzxdUA8DW"
replace lodge = "Chembe Eagles Nest Resort" if responseid == "R_2q0i4MPaiXK1129"

************************************************************************************************************************************************


save "../data/derived_data/Tourists_DerivedData.dta", replace
export delimited "../data/derived_data/Tourists_DerivedData.csv", replace


