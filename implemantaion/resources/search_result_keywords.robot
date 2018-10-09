***Settings***
Library  Collections
Library  DebugLibrary
Library  String
Library  FakerLibrary
Library  OperatingSystem
Library  BuiltIn
Library  Selenium2Library
Library  Process
Resource  general_keywords.robot

***Variables***
${price_per_night}  125
${enter}  //13
${resultPage_box}  xpath=//*[@data-selenium='searchBox']
${hotels_button}  xpath=//*[@data-element-name='search-filter-producttype-hotels']
${price_input}  id=price_box_1
${hotel-name}  xpath=//*[@data-selenium='hotel-name']
${select_property_type}  //*[@id="accomdtypeFilterList"]/div[2]/ul/li[2]/span
${select_rating_type}  xpath=//*[@id="guestRatingCategoryFilterId"]/div[2]/ul/li[1]
${select_free_cancelition}  xpath=//*[@id="paymentoptionFilterList"]/div[2]/ul/li[2]/span/span[2]/span[1]
${show_more_button_property_facilities}  xpath=//*[@id="facilitiesFilterList"]/div[2]/div/a
${non-smoking-button}  xpath=//*[@id="facilitiesFilterList"]/div[2]/ul/li[8]/span
${rating_lowest}  xpath=//*[@data-element-name='search-sort-guest-rating']

***Keywords***
Check SearchResultPage
  wait until page contains element  ${resultPage_box}
  click element  ${hotels_button}
  wait until page contains element  ${resultPage_box}

Set MaxPricePerNight
  clear element text  ${price_input}
  input text  ${price_input}  ${price_per_night}
  press key  ${price_input}  ${enter}
  wait until page contains element  ${hotel-name}

Set Property Type
  wait until page contains element  ${select_property_type}
  click element  ${select_property_type}
  wait until page contains element  ${hotel-name}  10

Set Rating Type
  wait until page contains element  ${select_rating_type}
  click element  ${select_rating_type}
  wait until page contains element  ${hotel-name}  10

Set Free Cancelition
  wait until page contains element  ${select_free_cancelition}
  click element  ${select_free_cancelition}
  wait until page contains element  ${hotel-name}  10

Set Property facilities
  wait until page contains element  ${show_more_button_property_facilities}
  click element  ${show_more_button_property_facilities}
  wait until page contains element  ${non-smoking-button}
  click element  ${non-smoking-button}
  wait until page contains element  ${hotel-name}  10

Set Guest Rating
  click element  ${rating_lowest}
  wait until page contains element  ${hotel-name}  10
