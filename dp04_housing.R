#### DP04 ####
View(dp_table_variables_22)
View(dp_table_variables_21)

housing_occupancy_vars <- c("DP04_0001", "DP04_0001P",
                            "DP04_0002", "DP04_0002P",
                            "DP04_0003", "DP04_0003P",
                            "DP04_0004", "DP04_0004P",
                            "DP04_0005", "DP04_0005P"
)

housing_occupancy_names <- c("Total Housing Units", "Percent Housing Units",
                             "Occupied Housing Units", "Percent Occupied Housing Units",
                             "Vacant Housing Units", "Percent Vacant Housing Units",
                             "Homeowner Vacancy Rate", "Percent Homeowner Vacancy Rate",
                             "Rental Vacancy Rate", "Percent Rental Vacancy Rate")

housing_unit_size_vars <- c("DP04_0006", "DP04_0006P",
                            "DP04_0007", "DP04_0007P",
                            "DP04_0008", "DP04_0008P",
                            "DP04_0009", "DP04_0009P",
                            "DP04_0010", "DP04_0010P",
                            "DP04_0011", "DP04_0011P",
                            "DP04_0012", "DP04_0012P",
                            "DP04_0013", "DP04_0013P",
                            "DP04_0014", "DP04_0014P",
                            "DP04_0015", "DP04_0015P")

housing_unit_size_names <- c("Total Housing Units", "Percent Housing Units",
                             "Total 1 Unit Detached", "Percent 1 Unit Detached",
                             "Total 1 Unit Attached", "Percent 1 Unit Attached",
                             "Total 2 Unit", "Percent 2 Unit",
                             "Total 3-4 Unit", "Percent 3-4 Unit",
                             "Total 5-9 Unit", "Percent 5-9 Unit",
                             "Total 10-19 Unit", "Percent 10-19 Unit",
                             "Total 20+ Unit", "Percent 20+ Unit",
                             "Total Mobile Home", "Percent Mobile Home",
                             "Total Boat, RV, Van", "Percent Boat, RV, Van")

built_date_vars <- c("DP04_0016", "DP04_0016P",
                     "DP04_0017", "DP04_0017P",
                     "DP04_0018", "DP04_0018P",
                     "DP04_0019", "DP04_0019P",
                     "DP04_0020", "DP04_0020P",
                     "DP04_0021", "DP04_0021P",
                     "DP04_0022", "DP04_0022P",
                     "DP04_0023", "DP04_0023P",
                     "DP04_0024", "DP04_0024P",
                     "DP04_0025", "DP04_0025P",
                     "DP04_0026", "DP04_0026P",
                     "DP04_0037", "DP04_0037P")

built_date_names <- c("Total Housing Units", "Percent Housing Units",
                      "Units Built 2020 or Later", "Percent Units Builts 2020 or Later",
                      "Units Built 2010-2019", "Percent Units Built 2010-2019",
                      "Units Built 2000-2009", "Percent Units Built 2000-2009",
                      "Units Built 1990-1999", "Percent Units Built 1990-1999",
                      "Units Built 1980-1989", "Percent Units Built 1980-1989",
                      "Units Built 1970-1979", "Percent Units Built 1970-1979",
                      "Units Built 1960-1969", "Percent Units Built 1960-1969",
                      "Units Built 1950-1959", "Percent Units Built 1950-1959",
                      "Units Built 1940-1949", "Percent Units Built 1940-1949",
                      "Units Built 1939 or Earlier", "Percent Units Built 1939 or Earlier",
                      "Median Rooms", "Percent Median Rooms")
length(built_date_names)
length(built_date_vars)


bedroom_vars <- c("DP04_0038", "DP04_0038P",
                  "DP04_0039", "DP04_0039P",
                  "DP04_0040", "DP04_0040P",
                  "DP04_0041", "DP04_0041P",
                  "DP04_0042", "DP04_0042P",
                  "DP04_0043", "DP04_0043P",
                  "DP04_0044", "DP04_0044P")

bedroom_names <- c("Total Housing Units", "Percent Housing Units",
                   "No Bedrooms", "Percent No Bedrooms",
                   "1 Bedroom", "Percent 1 Bedroom",
                   "2 Bedrooms", "Percent 2 Bedrooms",
                   "3 Bedrooms", "Percent 3 Bedrooms",
                   "4 Bedrooms", "Percent 4 Bedrooms",
                   "5+ Bedrooms", "Percent 5+ Bedrooms")

housing_tenure_vars <- c("DP04_0045", "DP04_0045P",
                         "DP04_0046", "DP04_0046P",
                         "DP04_0047", "DP04_0047P",
                         "DP04_0048", "DP04_0048P",
                         "DP04_0049", "DP04_0049P")

housing_tenure_names <- c("Occupied Housing Units", "Percent Occupied Housing Units",
                          "Owner Occupied Housing Units", "Percent Owner Occupied Housing Units",
                          "Renter Occupied Housing Units", "Percent Renter Occupied Housing Units",
                          "Average HH Size of Owner Occupied Units", "Percent Average HH Size of Owner Occupied Units",
                          "Average HH Size of Renter Occupied Units", "Percent Average HH Size of Renter Occupied Units"
)

moved_into_vars <- c("DP04_0050", "DP04_0050P",
                     "DP04_0051", "DP04_0051P",
                     "DP04_0052", "DP04_0052P",
                     "DP04_0053", "DP04_0053P",
                     "DP04_0054", "DP04_0054P",
                     "DP04_0055", "DP04_0055P",
                     "DP04_0056", "DP04_0056P")

moved_into_names <- c("Occupied Housing Units", "Percent Occupied Housing Units",
                      "Occupied Units Moved into 2021 or Later", "Percent Occupied Units Moved into 2021 or Later",
                      "Occupied Units Moved into 2018-2020","Percent Occupied Units Moved into 2018-2020",
                      "Occupied Units Moved into 2010-2017", "Percent Occupied Units Moved into 2010-2017",
                      "Occupied Units Moved into 2000-2009", "Percent Occupied Units Moved into 2000-2009",
                      "Occupied Units Moved into 1990-1999", "Percent Occupied Units Moved into 1990-1999",
                      "Occupied Units Moved into 1989 and Earlier", "Percent Occupied Units Moved into 1989 and Earlier")


vehicles_occupants_vars <- c("DP04_0058", "DP04_0058P",
                             "DP04_0059", "DP04_0059P",
                             "DP04_0060", "DP04_0060P",
                             "DP04_0061", "DP04_0061P",
                             "DP04_0077", "DP04_0077P",
                             "DP04_0078", "DP04_0078P",
                             "DP04_0079", "DP04_0079P")

vehicles_occupants_names <- c("Occupied Housing Units No Vehicles Available", "Percent Occupied Housing Units No Vehicles Available",
                              "Occupied Housing Units 1 Vehicle Available", "Percent Occupied Housing Units 1 Vehicle Available",
                              "Occupied Housing Units 2 Vehicles Available", "Percent Occupied Housing Units 2 Vehicles Available",
                              "Occupied Housing Units 3+ Vehicles Available", "Percent Occupied Housing Units 3+ Vehicles Available",
                              "1 or Less Occupant per Room", "Percent 1 or Less Occupant per Room",
                              "1.01-1.5 Occupants per Room", "Percent 1.01-1.5 Occupants per Room",
                              "1.51+ Occupants per Room", "Percent 1.51+ Occupants per Room")

heating_vars <- c("DP04_0062", "DP04_0062P",
                  "DP04_0063", "DP04_0063P",
                  "DP04_0064", "DP04_0064P",
                  "DP04_0065", "DP04_0065P",
                  "DP04_0066", "DP04_0066P",
                  "DP04_0067", "DP04_0067P",
                  "DP04_0068", "DP04_0068P",
                  "DP04_0069", "DP04_0069P",
                  "DP04_0070", "DP04_0070P",
                  "DP04_0071", "DP04_0071P",
                  "DP04_0073", "DP04_0073P",
                  "DP04_0074", "DP04_0074P",
                  "DP04_0075", "DP04_0075P")

heating_names <- c("Total Occupied Housing Units", "Percent Occupied Housing Units",
                   "Occupied Housing Units Heated by Utility Gas", "Percent Occupied Housing Units Heated by Utility Gas",
                   "Occupied Housing Units Heated by Tank Gas", "Percent Occupied Housing Units Heated by Tank Gas",
                   "Occupied Housing Units Heated by Electricity", "Percent Occupied Housing Units Heated by Electricity",
                   "Occupied Housing Units Heated by Kerosene", "Percent Occupied Housing Units Heated by Kerosene",
                   "Occupied Housing Units Heated by Coal", "Percent Occupied Housing Units Heated by Coal",
                   "Occupied Housing Units Heated by Wood", "Percent Occupied Housing Units Heated by Wood",
                   "Occupied Housing Units Heated by Solar Energy", "Percent Occupied Housing Units Heated by Solar Energy",
                   "Occupied Housing Units Heated by Other Fuel", "Percent Occupied Housing Units Heated by Other Fuel",
                   "Occupied Housing Units Heated by No Fuel", "Percent Occupied Housing Units Heated by No Fuel",
                   "Occupied Housing Units Lacking Complete Plumbing", "Percent Occupied Housing Units Lacking Complete Plumbing",
                   "Occupied Housing Units Lacking Complete Kitchen", "Percent Occupied Housing Units Lacking Complete Kitchen",
                   "Occupied Housing Units No Telephone Service Available", "Percent Occupied Housing Units No Telephone Service Available")

home_value_vars <- c("DP04_0080", "DP04_0080P",
                     "DP04_0081", "DP04_0081P",
                     "DP04_0082", "DP04_0082P",
                     "DP04_0083", "DP04_0083P",
                     "DP04_0084", "DP04_0084P",
                     "DP04_0085", "DP04_0085P",
                     "DP04_0086", "DP04_0086P",
                     "DP04_0087", "DP04_0087P",
                     "DP04_0088", "DP04_0088P",
                     "DP04_0089", "DP04_0089P")

home_value_names <- c("Owner Occupied Housing Units", "Percent Owner Occupied Housing Units",
                      "Owner Occupied Units <$50,000 Value", "Percent Owner Occupied Units <$50,000 Value",
                      "Owner Occupied Units $50,000-$99,999 Value", "Percent Owner Occupied Units $50,000-$99,999 Value",
                      "Owner Occupied Units $100,000-$149,999 Value", "Percent Owner Occupied Units $100,000-$149,999 Value",
                      "Owner Occupied Units $150,000-$199,999 Value", "Percent Owner Occupied Units $150,000-$199,999 Value",
                      "Owner Occupied Units $200,000-$299,999 Value", "Percent Owner Occupied Units $200,000-$299,999 Value",
                      "Owner Occupied Units $300,000-$499,999 Value", "Percent Owner Occupied Units $300,000-$499,999 Value",
                      "Owner Occupied Units $500,000-$999,999 Value", "Percent Owner Occupied Units $500,000-$999,999 Value",
                      "Owner Occupied Units $1,000,000+ Value", "Percent Owner Occupied Units $1,000,000+ Value",
                      "Owner Occupied Units Median Value", "Percent Owner Occupied Units Median Value")

smoc_vars <- c("DP04_0091", "DP04_0091P",
               "DP04_0092", "DP04_0092P",
               "DP04_0094", "DP04_0094P",
               "DP04_0095", "DP04_0095P",
               "DP04_0096", "DP04_0096P",
               "DP04_0097", "DP04_0097P",
               "DP04_0098", "DP04_0098P",
               "DP04_0099", "DP04_0099P",
               "DP04_0100", "DP04_0100P",
               "DP04_0101", "DP04_0101P")

smoc_names <- c("Housing Units with a Mortgage", "Percent Housing Units with a Mortgage",
                "Housing Units without a Mortage", "Percent Housing Units without a Mortgage",
                "Mortgage <$500", "Percent Mortgage <$500", 
                "Mortgage $500-$999", "Percent Mortage $500-$999",
                "Mortgage $1,000-$1,499", "Percent Mortage $1,000-$1,499",
                "Mortgage $1,500-$1,999", "Percent Mortage $1,500-$1,999",
                "Mortgage $2,000-$2,499", "Percent Mortage $2,000-$2,499",
                "Mortgage $2,500-$2,999", "Percent Mortage $2,500-$2,999",
                "Mortgage $3,000+", "Percent Mortage $3,000+",
                "Median Mortgage", "Percent Median Mortgage")

smocapi_vars <- c("DP04_0110", "DP04_0110P",
                  "DP04_0111", "DP04_0111P",
                  "DP04_0112", "DP04_0112P",
                  "DP04_0113", "DP04_0113P",
                  "DP04_0114", "DP04_0114P",
                  "DP04_0115", "DP04_0115P",
                  "DP04_0116", "DP04_0116P"
)

smocapi_names <- c("Housing Units with a Mortgage", "Percent Housing Units with a Mortgage",
                   "SMOCAPI <20%", "Percent SMOCAPI <20%",
                   "SMOCAPI 20-24.9%", "Percent SMOCAPI 20-24.9%",
                   "SMOCAPI 25-29.9%", "Percent SMOCAPI 25-29.9%",
                   "SMOCAPI 30-34.9%", "Percent SMOCAPI 30-34.9%",
                   "SMOCAPI 35%+", "Percent SMOCAPI 35%+",
                   "SMOCAPI Not Computed", "Percent SMOCAPI Not Computed")

rent_vars <- c("DP04_0126", "DP04_0126P",
               "DP04_0127", "DP04_0127P",
               "DP04_0128", "DP04_0128P",
               "DP04_0129", "DP04_0129P",
               "DP04_0130", "DP04_0130P",
               "DP04_0131", "DP04_0131P",
               "DP04_0132", "DP04_0132P",
               "DP04_0133", "DP04_0133P",
               "DP04_0134", "DP04_0134P",
               "DP04_0135", "DP04_0135P")

rent_names <- c("Occupied Units paying Rent", "Percent Occupied Units paying Rent",
                "Rent <$500", "Percent Rent <$500",
                "Rent $500-$999", "Percent Rent $500-$999",
                "Rent $1,000-$1,499", "Percent Rent $1,000-$1,499",
                "Rent $1,500-$1,999", "Percent Rent $1,500-$1,999",
                "Rent $2,000-$2,499", "Percent Rent $2,000-$2,499",
                "Rent $2,500-$2,999", "Percent Rent $2,500-$2,999",
                "Rent $3,000+", "Percent Rent $3,000+",
                "Median Rent", "Percent Median Rent",
                "No Rent Paid", "Percent No Rent Paid")

grapi_vars <- c("DP04_0136", "DP04_0136P",
                "DP04_0137", "DP04_0137P",
                "DP04_0138", "DP04_0138P",
                "DP04_0139", "DP04_0139P",
                "DP04_0140", "DP04_0140P",
                "DP04_0141", "DP04_0141P",
                "DP04_0142", "DP04_0142P",
                "DP04_0143", "DP04_0143P")

grapi_names <- c("Occupied Units paying Rent", "Percent Occupied Units paying Rent",
                 "GRAPI <15%", "Percent GRAPI <15%",
                 "GRAPI 15-19.9%", "Percent GRAPI 15-19.9%",
                 "GRAPI 20-24.9%", "Percent GRAPI 20-24.9%",
                 "GRAPI 25-29.9%", "Percent GRAPI 25-29.9%",
                 "GRAPI 30-34.9%", "Percent GRAPI 30-34.9%",
                 "GRAPI 35%+", "Percent GRAPI 35%+",
                 "GRAPI Not Computed", "Percent GRAPI Not Computed")

#### filter the variables ####

#county
county_housing_occupancy_22 <- Full_dp_2022 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_housing_occupancy_21 <- Full_dp_2021 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_housing_occupancy <- left_join(county_housing_occupancy_22, county_housing_occupancy_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_housing_occupancy

county_housing_unit_size_22 <- Full_dp_2022 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_housing_unit_size_21 <- Full_dp_2021 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_housing_unit_size <- left_join(county_housing_unit_size_22, county_housing_unit_size_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_built_date_22 <- Full_dp_2022 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_built_date_21 <- Full_dp_2021 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_built_date <- left_join(county_built_date_22, county_built_date_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_bedroom_22 <- Full_dp_2022 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_bedroom_21 <- Full_dp_2021 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_bedroom <- left_join(county_bedroom_22, county_bedroom_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_housing_tenure_22 <- Full_dp_2022 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_housing_tenure_21 <- Full_dp_2021 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_housing_tenure <- left_join(county_housing_tenure_22, county_housing_tenure_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_moved_into_22 <- Full_dp_2022 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_moved_into_21 <- Full_dp_2021 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_moved_into <- left_join(county_moved_into_22, county_moved_into_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_vehicles_occupants_22 <- Full_dp_2022 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_vehicles_occupants_21 <- Full_dp_2021 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_vehicles_occupants <- left_join(county_vehicles_occupants_22, county_vehicles_occupants_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_heating_22 <- Full_dp_2022 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_heating_21 <- Full_dp_2021 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_heating <- left_join(county_heating_22, county_heating_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_home_value_22 <- Full_dp_2022 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_home_value_21 <- Full_dp_2021 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_home_value <- left_join(county_home_value_22, county_home_value_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_smoc_22 <- Full_dp_2022 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_smoc_21 <- Full_dp_2021 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_smoc <- left_join(county_smoc_22, county_smoc_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_smocapi_22 <- Full_dp_2022 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_smocapi_21 <- Full_dp_2021 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_smocapi <- left_join(county_smocapi_22, county_smocapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_rent_22 <- Full_dp_2022 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_rent_21 <- Full_dp_2021 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_rent <- left_join(county_rent_22, county_rent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_grapi_22 <- Full_dp_2022 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_grapi_21 <- Full_dp_2021 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_grapi <- left_join(county_grapi_22, county_grapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#tract
tract_housing_occupancy_22 <- dp_2022 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_housing_occupancy_21 <- dp_2021 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_housing_occupancy <- left_join(tract_housing_occupancy_22, tract_housing_occupancy_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_housing_occupancy

tract_housing_unit_size_22 <- dp_2022 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_housing_unit_size_21 <- dp_2021 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

#schools
schools_housing_occupancy_22 <- uethda_schools_2022 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_housing_occupancy_21 <- uethda_schools_2021 %>%
  filter(variable %in% housing_occupancy_vars)%>%
  cbind(housing_occupancy_names) %>%
  rename("Variable" = "housing_occupancy_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_housing_occupancy <- left_join(schools_housing_occupancy_22, schools_housing_occupancy_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_housing_occupancy

schools_housing_unit_size_22 <- uethda_schools_2022 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_housing_unit_size_21 <- uethda_schools_2021 %>%
  filter(variable %in% housing_unit_size_vars)%>%
  cbind(housing_unit_size_names) %>%
  rename("Variable" = "housing_unit_size_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_housing_unit_size <- left_join(schools_housing_unit_size_22, schools_housing_unit_size_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_built_date_22 <- uethda_schools_2022 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_built_date_21 <- uethda_schools_2021 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_built_date <- left_join(schools_built_date_22, schools_built_date_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_bedroom_22 <- uethda_schools_2022 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_bedroom_21 <- uethda_schools_2021 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_bedroom <- left_join(schools_bedroom_22, schools_bedroom_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_housing_tenure_22 <- uethda_schools_2022 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_housing_tenure_21 <- uethda_schools_2021 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_housing_tenure <- left_join(schools_housing_tenure_22, schools_housing_tenure_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_moved_into_22 <- uethda_schools_2022 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_moved_into_21 <- uethda_schools_2021 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_moved_into <- left_join(schools_moved_into_22, schools_moved_into_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_vehicles_occupants_22 <- uethda_schools_2022 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_vehicles_occupants_21 <- uethda_schools_2021 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_vehicles_occupants <- left_join(schools_vehicles_occupants_22, schools_vehicles_occupants_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_heating_22 <- uethda_schools_2022 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_heating_21 <- uethda_schools_2021 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_heating <- left_join(schools_heating_22, schools_heating_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_home_value_22 <- uethda_schools_2022 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_home_value_21 <- uethda_schools_2021 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_home_value <- left_join(schools_home_value_22, schools_home_value_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_smoc_22 <- uethda_schools_2022 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_smoc_21 <- uethda_schools_2021 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_smoc <- left_join(schools_smoc_22, schools_smoc_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_smocapi_22 <- uethda_schools_2022 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_smocapi_21 <- uethda_schools_2021 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_smocapi <- left_join(schools_smocapi_22, schools_smocapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_rent_22 <- uethda_schools_2022 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_rent_21 <- uethda_schools_2021 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_rent <- left_join(schools_rent_22, schools_rent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_grapi_22 <- uethda_schools_2022 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_grapi_21 <- uethda_schools_2021 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_grapi <- left_join(schools_grapi_22, schools_grapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_housing_unit_size <- left_join(tract_housing_unit_size_22, tract_housing_unit_size_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_built_date_22 <- dp_2022 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_built_date_21 <- dp_2021 %>%
  filter(variable %in% built_date_vars)%>%
  cbind(built_date_names) %>%
  rename("Variable" = "built_date_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_built_date <- left_join(tract_built_date_22, tract_built_date_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_bedroom_22 <- dp_2022 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_bedroom_21 <- dp_2021 %>%
  filter(variable %in% bedroom_vars)%>%
  cbind(bedroom_names) %>%
  rename("Variable" = "bedroom_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_bedroom <- left_join(tract_bedroom_22, tract_bedroom_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_housing_tenure_22 <- dp_2022 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_housing_tenure_21 <- dp_2021 %>%
  filter(variable %in% housing_tenure_vars)%>%
  cbind(housing_tenure_names) %>%
  rename("Variable" = "housing_tenure_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_housing_tenure <- left_join(tract_housing_tenure_22, tract_housing_tenure_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_moved_into_22 <- dp_2022 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_moved_into_21 <- dp_2021 %>%
  filter(variable %in% moved_into_vars)%>%
  cbind(moved_into_names) %>%
  rename("Variable" = "moved_into_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_moved_into <- left_join(tract_moved_into_22, tract_moved_into_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_vehicles_occupants_22 <- dp_2022 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_vehicles_occupants_21 <- dp_2021 %>%
  filter(variable %in% vehicles_occupants_vars)%>%
  cbind(vehicles_occupants_names) %>%
  rename("Variable" = "vehicles_occupants_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_vehicles_occupants <- left_join(tract_vehicles_occupants_22, tract_vehicles_occupants_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_heating_22 <- dp_2022 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_heating_21 <- dp_2021 %>%
  filter(variable %in% heating_vars)%>%
  cbind(heating_names) %>%
  rename("Variable" = "heating_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_heating <- left_join(tract_heating_22, tract_heating_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_home_value_22 <- dp_2022 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_home_value_21 <- dp_2021 %>%
  filter(variable %in% home_value_vars)%>%
  cbind(home_value_names) %>%
  rename("Variable" = "home_value_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_home_value <- left_join(tract_home_value_22, tract_home_value_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_smoc_22 <- dp_2022 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_smoc_21 <- dp_2021 %>%
  filter(variable %in% smoc_vars)%>%
  cbind(smoc_names) %>%
  rename("Variable" = "smoc_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_smoc <- left_join(tract_smoc_22, tract_smoc_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_smocapi_22 <- dp_2022 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_smocapi_21 <- dp_2021 %>%
  filter(variable %in% smocapi_vars)%>%
  cbind(smocapi_names) %>%
  rename("Variable" = "smocapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_smocapi <- left_join(tract_smocapi_22, tract_smocapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_rent_22 <- dp_2022 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_rent_21 <- dp_2021 %>%
  filter(variable %in% rent_vars)%>%
  cbind(rent_names) %>%
  rename("Variable" = "rent_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_rent <- left_join(tract_rent_22, tract_rent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_grapi_22 <- dp_2022 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)

tract_grapi_21 <- dp_2021 %>%
  filter(variable %in% grapi_vars)%>%
  cbind(grapi_names) %>%
  rename("Variable" = "grapi_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


tract_grapi <- left_join(tract_grapi_22, tract_grapi_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

##### these data sets are ready ####

# housing occupancy 
county_housing_occupancy

housing_occ_vars_2 <- c("Total Housing Units",
                        "Occupied Housing Units",
                        "Percent Occupied Housing Units",
                        "Vacant Housing Units",
                        "Percent Vacant Housing Units",
                        "Home Owner Vacancy Rate",
                        "Rental Vacancy Rate")

county_housing_occupancy %>%
  filter(Variable %in% housing_occ_vars_2)%>%
  mutate(Variable = factor(Variable, levels = housing_occ_vars_2))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Housing Occupancy and Housing Units 2021 to 2022")

table_function(county_housing_occupancy %>%
                 filter(Variable %in% housing_occ_vars_2)%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Housing Occupancy and Housing Units`)


table_function(county_housing_occupancy %>%
                 filter(Variable %in% housing_occ_vars_2)%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2021 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2021 Estimate`), `2021 Housing Occupancy and Housing Units`)


# housing unit size

total_unit_size <- county_housing_unit_size %>%
  filter(str_detect(Variable, "Total"))

total_unit_names <- total_unit_size$Variable %>%
  unique()

percent_unit_size <- county_housing_unit_size %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units")

percent_unit_names <- percent_unit_size$Variable %>%
  unique()

county_housing_unit_size %>%
  filter(str_detect(Variable, "Total"))%>%
  mutate(Variable = factor(Variable, levels = total_unit_names))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Total Housing Units by Size 2021 to 2022")

county_housing_unit_size %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units")%>%
  mutate(Variable = factor(Variable, levels = percent_unit_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Percent of Housing Units by Size 2021 to 2022")

table_function(county_housing_unit_size %>%
                 filter(str_detect(Variable, "Total"))%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Housing Unit Type`)


table_function(county_housing_unit_size %>%
                 filter(str_detect(Variable, "Percent"))%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Percent of Housing Unit Type`)


# built date
total_built_date <- county_built_date %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

total_built_date_names <- total_built_date$Variable %>%
  unique()


table_function(county_built_date %>%
                 st_drop_geometry() %>%
                 filter(Variable != "Percent Median Rooms")%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Housing Unit Built Date`)


table_function(county_built_date %>%
                 st_drop_geometry() %>%
                 filter(Variable != "Percent Median Rooms")%>%
                 select(Location, Variable, `2021 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2021 Estimate`), `2021 Housing Unit Built Date`)

table_function(county_built_date %>%
  filter(Variable == "Units Built 2020 or Later")%>%
  group_by(Location)%>%
  mutate(`Units Built in 2021` = `2022 Estimate` - `2021 Estimate`)%>%
  mutate(`Units Built in 2021 MOE` = moe_sum(`2022 MOE`, `2022 Estimate`))%>%
  select(Location, `Units Built in 2021`, `Units Built in 2021 MOE`), `2021 Housing Units Built`)


county_built_date %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Total Housing Units")%>%
  filter(Variable != "Median Rooms")%>%
  mutate(Variable = factor(Variable, levels = total_built_date_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Housing Unit Build Date Distribution")

schools_built_in_2021 <- schools_built_date %>%
                 filter(Variable == "Units Built 2020 or Later")%>%
                 group_by(Location)%>%
                 mutate(`Units Built in 2021` = `2022 Estimate` - `2021 Estimate`)%>%
                 mutate(`Units Built in 2021 MOE` = moe_sum(`2022 MOE`, `2022 Estimate`))
                 
tract_map_function_green(schools_built_in_2021, schools_built_in_2021, `Units Built in 2021`, "Housing Units Built in 2021")

schools_built_in_2021



tract_map_function(tract_built_date %>%
  filter(Variable == "Units Built 2020 or Later"), tract_built_date %>%
    filter(Variable == "Units Built 2020 or Later"), `2022 Estimate`, "Housing Units Built since 2020")

# bedroom number
county_bedroom 

total_bedrooms <- county_bedroom  %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

total_bedroom_names <- total_bedrooms$Variable %>%
  unique()

total_bedroom_names

percent_bedrooms<- county_bedroom %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units")

percent_bedroom_names <- percent_bedrooms$Variable %>%
  unique()

percent_bedroom_names

county_bedroom %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Variable = factor(Variable, levels = total_bedroom_names))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Bedroom Number in Housing Units 2021 to 2022")

table_function(county_bedroom %>%
                 st_drop_geometry() %>%
                 filter(Variable != "Percent Housing Units")%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Housing Unit Number of Bedrooms`)


# housing tenure
renter_vs_owner_total <- county_housing_tenure %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

renter_vs_owner_total_names <- renter_vs_owner_total$Variable %>%
  unique()

county_housing_tenure %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Variable = factor(Variable, levels = renter_vs_owner_total_names))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Renters and Owners and Household Size 2021 to 2022")

county_housing_tenure %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(str_detect(Variable, "HH", negate = TRUE))%>%
  filter(Variable != "Percent Occupied Housing Units")%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Percent of Renters and Owners 2021 to 2022")

table_function(county_housing_tenure %>%
                 filter(Variable != "Percent Occupied Housing Units")%>%
                 filter(str_detect(Variable, "Percent Average", negate = TRUE))%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Renters and Owners and Household Size`)


#moved into date
table_function(county_moved_into %>%
                 filter(Variable != "Percent Occupied Housing Units")%>%
                 filter(str_detect(Variable, "Percent Average", negate = TRUE))%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Occupancy Start Date`)

county_moved_into_test <- county_moved_into %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Occupied Housing Units")%>%
  select(Variable)%>%
  unique()

county_moved_into_names <- county_moved_into_test$Variable

county_moved_into %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Occupied Housing Units")%>%
  mutate(Variable = factor(Variable, levels = county_moved_into_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Housing Occupancy Start Date Distribution")  


#vehicles for occupant number

county_vehicles_occupants %>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Percent in Vehicles per Housing Units and Occupants per Room 2021 to 2022")

county_vehicles_occupants %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Totals for Vehicles per Housing Units and Occupants per Room 2021 to 2022")

table_function(county_vehicles_occupants %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Vehicles per Housing Unit and Occupants per Room`)


# heating source

county_heating_total <- county_heating %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_heating_total_names <- county_heating$Variable %>%
  unique()

county_heating %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Percent Occupied Housing Units")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_heating_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Totals Heating Source and Amenities for Housing Units 2021 to 2022")

county_heating %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Housing Units")%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Heating Source and Amenities for Housing Units 2021 to 2022")


table_function(county_heating%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Percent Occupied Housing Units")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Heating Source and Amenities for Housing Units`)


# home value
county_home_value 

county_home_value_total <- county_home_value %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_home_value_total_names <- county_home_value$Variable %>%
  unique()

county_home_value %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Percent Occupied Housing Units")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_home_value_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Home Values 2021 to 2022")

county_home_value_percent <- county_home_value %>%
  filter(str_detect(Variable, "Percent"))

county_home_value_percent_names <- county_home_value$Variable %>%
  unique()

county_home_value_percent_names

county_home_value %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Owner Occupied Housing Units")%>%
  filter(Variable != "Percent Owner Occupied Units Median Value")%>%
  mutate(Variable = factor(Variable, levels = county_home_value_percent_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Home Value 2021 to 2022")


table_function(county_home_value%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Owner Occupied Housing Units")%>%
                 filter(Variable != "Percent Owner Occupied Housing Units")%>%
                 filter(Variable != "Percent Owner Occupied Units Median Value")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Home Value`)


county_home_value %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Owner Occupied Housing Units")%>%
  filter(Variable != "Owner Occupied Units Median Value")%>%
  mutate(Variable = factor(Variable, levels = county_home_value_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Home Value Distribution") 

county_home_value %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Owner Occupied Housing Units")%>%
  filter(Variable != "Owner Occupied Units Median Value")%>%
  mutate(Variable = factor(Variable, levels = county_home_value_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 Home Value Distribution") 

county_home_value %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Owner Occupied Housing Units")%>%
  filter(Variable != "Percent Owner Occupied Units Median Value")%>%
  mutate(Variable = factor(Variable, levels = county_home_value_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Home Value Percent Distribution") 

county_home_value %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Owner Occupied Housing Units")%>%
  filter(Variable != "Percent Owner Occupied Units Median Value")%>%
  mutate(Variable = factor(Variable, levels = county_home_value_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 Home Value Percent Distribution") 


tract_map_function(tract_home_value %>%
  filter(Variable == "Owner Occupied Units Median Value"), tract_home_value %>%
    filter(Variable == "Owner Occupied Units Median Value"), `2022 Estimate`, "Median Owner Occupied Units Value")

schools_home_value_increase <- schools_home_value %>%
  filter(Variable == "Owner Occupied Units Median Value")%>%
  mutate(`Median Value Increase from 2021-2022` = `2022 Estimate` - `2021 Estimate`)

tract_map_function_green(schools_home_value_increase, schools_home_value_increase, `Median Value Increase from 2021-2022`, "Median Value Increase in Owner Occupied Units from 2021-2022")

# smoc
county_smoc 

county_smoc 

county_smoc_total <- county_smoc %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_smoc_total_names <- county_smoc$Variable %>%
  unique()

county_smoc %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Percent Median Mortgage")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_smoc_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change Mortgage Costs 2021 to 2022")

county_smoc_percent <- county_smoc %>%
  filter(str_detect(Variable, "Percent"))

county_smoc_percent_names <- county_smoc$Variable %>%
  unique()

county_smoc_percent_names

county_smoc %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Owner Occupied Housing Units")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  mutate(Variable = factor(Variable, levels = county_smoc_percent_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Percent Mortgage Costs 2021 to 2022")


table_function(county_smoc%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Owner Occupied Housing Units")%>%
                 filter(Variable != "Percent Owner Occupied Housing Units")%>%
                 filter(Variable != "Percent Median Mortgage")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Mortgage Costs`)


median_mortgage_22 <- county_smoc %>%
  filter(Variable == "Median Mortgage") %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`)%>%
  rename("Estimate" = "2022 Estimate", "MOE"= "2022 MOE")%>%
  mutate(Year = 2022)

median_mortgage_21 <- county_smoc %>%
  filter(Variable == "Median Mortgage")%>%
  select(Location, Variable, `2021 Estimate`, `2021 MOE`) %>%
  rename("Estimate" = "2021 Estimate", "MOE"= "2021 MOE") %>%
  mutate(Year = 2021)

median_mortgage <- rbind(median_mortgage_22, median_mortgage_21)

median_mortgage %>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Year = factor(Year, levels = c("2021", "2022")))%>%
  ggplot(aes(x = Year, y = `Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(y=`Estimate`, ymin=`Estimate` - `MOE`, ymax = `Estimate` + `MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 and 2021 Median Mortgage") 

county_smoc %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units without a Mortgage")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Percent Housing Units with a Mortgage")%>%
  mutate(Variable = factor(Variable, levels = county_smoc_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Mortgage Cost Percent Distribution") 

county_smoc %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units without a Mortgage")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Percent Housing Units with a Mortgage")%>%
  mutate(Variable = factor(Variable, levels = county_smoc_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 Mortage Cost Percent Distribution") 





#smocapi
county_smocapi

# smocapi
county_smocapi 

county_smocapi 

county_smocapi_total <- county_smocapi %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_smocapi_total_names <- county_smocapi$Variable %>%
  unique()

county_smocapi %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Housing Units with a Mortgage")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_smocapi_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in SMOCAPI 2021 to 2022")

county_smocapi_percent <- county_smocapi %>%
  filter(str_detect(Variable, "Percent"))

county_smocapi_percent_names <- county_smocapi$Variable %>%
  unique()

county_smocapi_percent_names

county_smocapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units with a Mortgage")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Percent SMOCAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_smocapi_percent_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in SMOCAPI 2021 to 2022")


table_function(county_smocapi%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Housing Units with a Mortgage")%>%
                 filter(Variable != "Percent Housing Units with a Mortgage")%>%
                 filter(Variable != "Percent Median Mortgage")%>%
                 filter(Variable != "Percent SMOCAPI Not Computed")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 SMOCAPI`)


median_mortgage_22 <- county_smocapi %>%
  filter(Variable == "Median Mortgage") %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`)%>%
  rename("Estimate" = "2022 Estimate", "MOE"= "2022 MOE")%>%
  mutate(Year = 2022)

median_mortgage_21 <- county_smocapi %>%
  filter(Variable == "Median Mortgage")%>%
  select(Location, Variable, `2021 Estimate`, `2021 MOE`) %>%
  rename("Estimate" = "2021 Estimate", "MOE"= "2021 MOE") %>%
  mutate(Year = 2021)

median_mortgage <- rbind(median_mortgage_22, median_mortgage_21)

median_mortgage %>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Year = factor(Year, levels = c("2021", "2022")))%>%
  ggplot(aes(x = Year, y = `Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(y=`Estimate`, ymin=`Estimate` - `MOE`, ymax = `Estimate` + `MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 and 2021 Median Mortgage") 

county_smocapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units without a Mortgage")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Percent Housing Units with a Mortgage")%>%
  filter(Variable != "Percent SMOCAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_smocapi_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 SMOCAPI Percent Distribution") 

county_smocapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Housing Units without a Mortgage")%>%
  filter(Variable != "Percent Median Mortgage")%>%
  filter(Variable != "Percent Housing Units with a Mortgage")%>%
  filter(Variable != "Percent SMOCAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_smocapi_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 SMOCAPI Percent Distribution") 




# rent
county_rent 

county_rent 

county_rent_total <- county_rent %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_rent_total_names <- county_rent$Variable %>%
  unique()

county_rent %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  filter(Variable != "Percent Median Mortgage")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_rent_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Monthly Rent 2021 to 2022")

county_rent_percent <- county_rent %>%
  filter(str_detect(Variable, "Percent"))

county_rent_percent_names <- county_rent$Variable %>%
  unique()

county_rent_percent_names

county_rent %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent Median Rent")%>%
  filter(Variable != "Percent No Rent Paid")%>%
  mutate(Variable = factor(Variable, levels = county_rent_percent_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Monthly Rent 2021 to 2022")


table_function(county_rent%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Occupied Units paying Rent")%>%
                 filter(Variable != "Percent Occupied Units paying Rent")%>%
                 filter(Variable != "Percent No Rent Paid")%>%
                 filter(Variable != "Percent Median Rent")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Monthly Rent`)


median_rent_22 <- county_rent %>%
  filter(Variable == "Median Rent") %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`)%>%
  rename("Estimate" = "2022 Estimate", "MOE"= "2022 MOE")%>%
  mutate(Year = 2022)

median_rent_21 <- county_rent %>%
  filter(Variable == "Median Rent")%>%
  select(Location, Variable, `2021 Estimate`, `2021 MOE`) %>%
  rename("Estimate" = "2021 Estimate", "MOE"= "2021 MOE") %>%
  mutate(Year = 2021)

median_rent <- rbind(median_rent_22, median_rent_21)

median_rent %>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Year = factor(Year, levels = c("2021", "2022")))%>%
  ggplot(aes(x = Year, y = `Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(y=`Estimate`, ymin=`Estimate` - `MOE`, ymax = `Estimate` + `MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 and 2021 Median Rent") 

county_rent %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent Median Rent")%>%
  filter(Variable != "Percent No Rent Paid")%>%
  filter(Variable != "Percent rent Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_rent_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 Monthly Percent Distribution") 

county_rent %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent Median Rent")%>%
  filter(Variable != "Percent No Rent Paid")%>%
  filter(Variable != "Percent rent Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_rent_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 Monthly Rent Percent Distribution") 



# grapi
county_grapi 

county_grapi 

county_grapi_total <- county_grapi %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))

county_grapi_total_names <- county_grapi$Variable %>%
  unique()

county_grapi %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Variable = factor(Variable, levels = county_grapi_total_names))%>%
  filter(`Percent Change` != Inf)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Monthly GRAPI 2021 to 2022")

county_grapi_percent <- county_grapi %>%
  filter(str_detect(Variable, "Percent"))

county_grapi_percent_names <- county_grapi$Variable %>%
  unique()

county_grapi_percent_names

county_grapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent GRAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_grapi_percent_names))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Difference in Monthly GRAPI 2021 to 2022")


table_function(county_grapi%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Occupied Units paying Rent")%>%
                 filter(Variable != "Percent Occupied Units paying Rent")%>%
                 filter(Variable != "Percent No grapi Paid")%>%
                 filter(Variable != "Percent GRAPI Not Computed")%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 GRAPI`)

grapi_30_county <- county_grapi %>%
  filter(Variable == "GRAPI 30-34.9%"|
           Variable == "Percent GRAPI 30-34.9%"|
           Variable == "GRAPI 35%+"|
           Variable == "Percent GRAPI 35%+")%>%
  pivot_wider(names_from = Variable, values_from = c("2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE"), names_sep = " ")%>%
  group_by(Location)%>%
  mutate(`2022 GRAPI 30%+` = `2022 Estimate GRAPI 30-34.9%` + `2022 Estimate GRAPI 35%+`,
         `2021 GRAPI 30%+` = `2021 Estimate GRAPI 30-34.9%` + `2021 Estimate GRAPI 35%+`,
         `2022 GRAPI 30%+ MOE` = moe_sum(c(`2022 MOE GRAPI 30-34.9%`, `2022 MOE GRAPI 35%+`), c(`2022 Estimate GRAPI 30-34.9%`, `2022 Estimate GRAPI 35%+`)),
         `2021 GRAPI 30%+ MOE` = moe_sum(c(`2021 MOE GRAPI 30-34.9%`, `2021 MOE GRAPI 35%+`), c(`2021 Estimate GRAPI 30-34.9%`, `2021 Estimate GRAPI 35%+`)),
         `2022 Percent GRAPI 30%+` = `2022 Estimate Percent GRAPI 30-34.9%` + `2022 Estimate Percent GRAPI 35%+`,
         `2021 Percent GRAPI 30%+` = `2021 Estimate Percent GRAPI 30-34.9%` + `2021 Estimate Percent GRAPI 35%+`,
         `2022 Percent GRAPI 30%+ MOE` = moe_sum(c(`2022 MOE Percent GRAPI 30-34.9%`, `2022 MOE Percent GRAPI 35%+`), c(`2022 Estimate Percent GRAPI 30-34.9%`, `2022 Estimate Percent GRAPI 35%+`)),
         `2021 Percent GRAPI 30%+ MOE` = moe_sum(c(`2021 MOE Percent GRAPI 30-34.9%`, `2021 MOE Percent GRAPI 35%+`), c(`2021 Estimate Percent GRAPI 30-34.9%`, `2021 Estimate Percent GRAPI 35%+`)))%>%
  select(Location, `2022 GRAPI 30%+`, `2022 GRAPI 30%+ MOE`, `2021 GRAPI 30%+`, `2021 GRAPI 30%+ MOE`,
         `2022 Percent GRAPI 30%+`, `2022 Percent GRAPI 30%+ MOE`, `2021 Percent GRAPI 30%+`, `2021 Percent GRAPI 30%+ MOE`)%>%
  mutate(`GRAPI 30%+ Percent Change` = round(100*((`2022 GRAPI 30%+` - `2021 GRAPI 30%+`) / `2021 GRAPI 30%+`),2),
         `GRAPI Percent 30%+ Change` = `2022 Percent GRAPI 30%+` -`2021 Percent GRAPI 30%+`,
         `GRAPI 30%+ Significance` = significance(`2022 GRAPI 30%+`, `2021 GRAPI 30%+`, `2022 GRAPI 30%+ MOE`, `2021 GRAPI 30%+ MOE`),
         `GRAPI Percent 30%+ Significance` = significance(`2022 Percent GRAPI 30%+`, `2021 Percent GRAPI 30%+`, `2022 Percent GRAPI 30%+ MOE`, `2021 Percent GRAPI 30%+ MOE`))%>%
  select(Location,`2022 Percent GRAPI 30%+`, `2021 Percent GRAPI 30%+` ,`GRAPI Percent 30%+ Change`,`GRAPI Percent 30%+ Significance`)%>%
  arrange(-`2022 Percent GRAPI 30%+`)

grapi_30_county

grapi_30_county %>%
  mutate(`GRAPI Percent 30%+ Change` = round(`GRAPI Percent 30%+ Change`,2))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(x = Location, y = `GRAPI Percent 30%+ Change`, fill = `GRAPI Percent 30%+ Significance`))+
  geom_bar(stat = "identity")+
  geom_label(aes(group = Location,label = `GRAPI Percent 30%+ Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Pastel1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent Difference in GRAPI Above 30% 2021 to 2022")




?moe_sum
county_grapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent Median grapi")%>%
  filter(Variable != "Percent No grapi Paid")%>%
  filter(Variable != "Percent GRAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_grapi_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2022 GRAPI Percent Distribution") 

county_grapi %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Occupied Units paying Rent")%>%
  filter(Variable != "Percent Median grapi")%>%
  filter(Variable != "Percent No grapi Paid")%>%
  filter(Variable != "Percent GRAPI Not Computed")%>%
  mutate(Variable = factor(Variable, levels = county_grapi_total_names))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  geom_label(aes(group = Variable,label = `2021 Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("2021 GRAPI Percent Distribution") 


#fair market rent
#need to get this from online
