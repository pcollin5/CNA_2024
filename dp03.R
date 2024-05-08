labor_force_vars <- c("DP03_0001", "DP03_0001P",
                      "DP03_0002", "DP03_0002P",
                      "DP03_0003", "DP03_0003P",
                      "DP03_0004", "DP03_0004P",
                      "DP03_0005", "DP03_0005P",
                      "DP03_0007", "DP03_0007P",
                      "DP03_0009", "DP03_0009P",
                      "DP03_0011", "DP03_0011P",
                      "DP03_0013", "DP03_0013P",
                      "DP03_0014", "DP03_0014P",
                      "DP03_0015", "DP03_0015P",
                      "DP03_0016", "DP03_0016P",
                      "DP03_0017", "DP03_0017P")

labor_force_names <- c("Population 16+ Years", "Percent Population 16+ Years",
                       "Population 16+ Years in Labor Force", "Percent Population 16+ Years in Labor Force",
                       "Population 16+ Years in Civilian Labor Force", "Percent Population 16+ Years in Civilian Labor Force",
                       "Population 16+ Years Employed", "Percent Population 16+ Years Employed",
                       "Population 16+ Years Unemployed", "Percent Population 16+ Years Unemployed",
                       "Population 16+ Years Not in Labor Force", "Percent Population 16+ Years Not in Labor Force",
                       "Total Unemployment Rate", "Percent Unemployment Rate",
                       "Female Population 16+ Years in Labor Force", "Percent Female Population 16+ Years in Labor Force",
                       "Female Population 16+ Years Employed", "Percent Female Population 16+ Years Employed",
                       "Population 16+ Years with Children under 6 Years", "Percent Population 16+ Years with Children under 6 Years",
                       "Population 16+ Years with Children under 6 Years All Parents in Labor Force", "Percent Population 16+ Years with Children under 6 Years All Parents in Labor Force",
                       "Population 16+ Years with Children 6-17 Years", "Percent Population 16+ Years with Children 6-17 Years",
                       "Population 16+ Years with Children 6-17 Years All Parents in Labor Force", "Percent Population 16+ Years with Children 6-17 Years All Parents in Labor Force")



transportation_to_work_vars<- c("DP03_0019", "DP03_0019P",
                                "DP03_0020", "DP03_0020P",
                                "DP03_0021", "DP03_0021P",
                                "DP03_0022", "DP03_0022P",
                                "DP03_0023", "DP03_0023P",
                                "DP03_0024", "DP03_0024P",
                                "DP03_0025", "DP03_0025P"
)

transportation_to_work_names <- c("Drove Alone", "Percent Drove Alone",
                                  "Carpooled", "Percent Carpooled",
                                  "Public Transportation", "Percent Public Transportation",
                                  "Walked", "Percent Walked",
                                  "Other Means", "Percent Other Means",
                                  "Worked from Home", "Percent Worked from Home",
                                  "Mean Travel Time to Work", "Percent Mean Travel Time to Work")

occupation_vars <- c("DP03_0026", "DP03_0026P",
                     "DP03_0027", "DP03_0027P",
                     "DP03_0028", "DP03_0028P",
                     "DP03_0029", "DP03_0029P",
                     "DP03_0030", "DP03_0030P",
                     "DP03_0031", "DP03_0031P")

occupation_names <- c("Civilian Employed Population", "Percent Civilian Employed Population",
                      "Management, business, science, and arts occupations", "Percent Management, business, science and arts occupations",
                      "Service occupations", "Percent Service occupations",
                      "Sales and office occupations", "Percent Sales and office occupations",
                      "Natural Resources, construction, and maintenance occupations", "Percent Natural Resources, construction, and maintenance occupations",
                      "Production, transportation, and material moving occupations", "Percent Production, transportation, and material moving occupations"
)

industry_vars <- c("DP03_0032", "DP03_0032P",
                   "DP03_0033", "DP03_0033P",
                   "DP03_0034", "DP03_0034P",
                   "DP03_0035", "DP03_0035P",
                   "DP03_0036", "DP03_0036P",
                   "DP03_0037", "DP03_0037P",
                   "DP03_0038", "DP03_0038P",
                   "DP03_0039", "DP03_0039P",
                   "DP03_0040", "DP03_0040P",
                   "DP03_0041", "DP03_0041P",
                   "DP03_0042", "DP03_0042P",
                   "DP03_0043", "DP03_0043P",
                   "DP03_0044", "DP03_0044P",
                   "DP03_0045", "DP03_0045P"
)

industry_names <- c("Civilian Employed Population", "Percent Civilian Employed Population",
                    "Agriculture, forestry, mining", "Percent Agriculture, forestry, mining",
                    "Construction", "Percent Construction",
                    "Manufacturing", "Percent Manufacturing",
                    "Wholesale Trade", "Percent Wholesale Trade",
                    "Retail Trade", "Percent Retail Trade",
                    "Transportation, warehousing, and Utilities", "Percent Transportation, Warehousing, and Utilities",
                    "Information", "Percent Information",
                    "Finance, Insurance, Real Estate", "Percent Fiance, Insurance, Real Estate",
                    "Professional, scientific, and management and administrative and waste management services", "Percent Professional, scientific, and management and administrative and waste management services",
                    "Education, Health Care, Social Services", "Percent Education, Health Care, Social Services",
                    "Arts, Entertainment, Recreation, Accommodation, Food Services", "Percent Arts, Entertainment, Recreation, Accommodation, Food Services",
                    "Other Services", "Percent Other Services",
                    "Public Administration", "Percent Public Administration")

class_of_workers_vars <- c("DP03_0046", "DP03_0046P",
                           "DP03_0047", "DP03_0047P",
                           "DP03_0048", "DP03_0048P",
                           "DP03_0049", "DP03_0049P",
                           "DP03_0050", "DP03_0050P"
)

class_of_workers_names <- c("Civilian Employed Population", "Percent Civilian Employed Population",
                            "Private Wage and Salary Workers", "Percent Private Wage and Salary Workers",
                            "Government Workers", "Percent Government Workers",
                            "Self Employed", "Percent Self Employed",
                            "Unpaid Family Workers", "Percent Unpaid Family Workers")

hh_income_vars <- c("DP03_0051", "DP03_0051P",
                    "DP03_0052", "DP03_0052P",
                    "DP03_0053", "DP03_0053P",
                    "DP03_0054", "DP03_0054P",
                    "DP03_0055", "DP03_0055P",
                    "DP03_0056", "DP03_0056P",
                    "DP03_0057", "DP03_0057P",
                    "DP03_0058", "DP03_0058P",
                    "DP03_0059", "DP03_0059P",
                    "DP03_0060", "DP03_0060P",
                    "DP03_0061", "DP03_0061P",
                    "DP03_0062", "DP03_0062P",
                    "DP03_0063", "DP03_0063P"
)

hh_income_names <- c("Total Households", "Percent Total Households",
                     "HH Income < 10,000", "Percent HH Income < 10,000",
                     "HH Income 10,000-14,999", "Percent HH Income 10,000-14,999",
                     "HH Income 15,000-24,999", "Percent HH Income 15,000-24,999",
                     "HH Income 25,000-34,999", "Percent HH Income 25,000-34,999",
                     "HH Income 35,000-49,999", "Percent HH Income 35,000-49,999",
                     "HH Income 50,000-74,999", "Percent HH Income 50,000-74,999",
                     "HH Income 75,000-99,999", "Percent HH Income 75,000-99,999",
                     "HH Income 100,000-149,999", "Percent HH Income 100,000-149,999",
                     "HH Income 150,000-199,999", "Percent HH Income 150,000-199,999",
                     "HH Income > 200,000", "Percent HH Income > 200,000",
                     "Median HH Income", "Percent Median HH Income",
                     "Mean HH Income", "Percent Mean HH Income")

methods_of_income_vars <- c("DP03_0064", "DP03_0064P",
                            "DP03_0065", "DP03_0065P",
                            "DP03_0066", "DP03_0066P",
                            "DP03_0067", "DP03_0067P",
                            "DP03_0068", "DP03_0068P",
                            "DP03_0069", "DP03_0069P",
                            "DP03_0070", "DP03_0070P",
                            "DP03_0071", "DP03_0071P",
                            "DP03_0072", "DP03_0072P",
                            "DP03_0073", "DP03_0073P",
                            "DP03_0074", "DP03_0074P")

methods_of_income_names <- c("Total HH with Earnings", "Percent HH with Earnings",
                             "Mean HH Earnings", "Percent Mean HH Earnings",
                             "Total HH with Social Security Earnings", "Percent HH with Social Security Earnings",
                             "Mean HH Social Security Earnings", "Percent HH Mean Social Security Earnings",
                             "Total HH with Retirment Income", "Percent HH with Retirement Income",
                             "Mean HH Retirement Income", "Percent HH Mean Retirement Income",
                             "Total HH with SSI", "Percent HH with SSI",
                             "Mean HH SSI Earnings", "Percent HH SSI Earnings",
                             "Total HH with Cash Public Assistance", "Percent HH with Case Public Assistance",
                             "Mean HH Cash Public Assistance Earnings", "Percent HH Cash Public Assistance Earnings",
                             "Total HH with SNAP", "Percent HH with SNAP")

health_insurance_vars <- c("DP03_0095", "DP03_0095P",
                           "DP03_0096", "DP03_0096P", 
                           "DP03_0097", "DP03_0097P",
                           "DP03_0098", "DP03_0098P",
                           "DP03_0099", "DP03_0099P")

health_insurance_names <- c("Civilian noninstitutionalized Population", "Percent Civilian noninstitutionalized Population",
                            "Total Population with Health Insurance", "Percent Population with Health Insurance",
                            "Total Population with Private Health Insurance", "Percent Population with Private Health Insurance",
                            "Total Population with Public Coverage", "Percent Population with Public Coverage",
                            "Total Population with No Health Insurance", "Percent Population with No Health Insurance")



fams_below_pov_vars <- c("DP03_0119P",
                         "DP03_0120P",
                         "DP03_0121P",
                         "DP03_0122P",
                         "DP03_0123P",
                         "DP03_0124P",
                         "DP03_0125P",
                         "DP03_0126P",
                         "DP03_0127P"
)

fams_below_pov_names <- c("Percent of All Families below Poverty Level",
                          "Percent of All Families below Poverty Level with Children under 18",
                          "Percent of All Families below Poverty Level with Children under 5 Only",
                          "Percent of Married Couple Families below Poverty Level", 
                          "Percent of Married Couple Families below Poverty Level with Children under 18",
                          "Percent of Married Couple Families below Poverty Level with Children under 5 Only",
                          "Percent of All Families below Poverty Level Female Householder, No Spouse",
                          "Percent of All Families below Poverty Level Female Householder, No Spouse, Children under 18",
                          "Percent of All Families below Poverty Level Female Householder, No Spouse, Children under 5 Only"
)


all_people_below_pov_vars <- c("DP03_0128P",
                               "DP03_0129P",
                               "DP03_0130P",
                               "DP03_0131P",
                               "DP03_0132P",
                               "DP03_0133P",
                               "DP03_0134P",
                               "DP03_0135P"
)

all_people_below_pov_names <- c("Percent of All People below Poverty Level",
                                "Percent of All People below Poverty Level Under 18",
                                "Percent of All People below Poverty Level Children of Householder under 18",
                                "Percent of All People below Poverty Level Children of Householder under 5",
                                "Percent of All People below Poverty Level Children of Householder 5-17",
                                "Percent of All People below Poverty Level 18+ Years",
                                "Percent of All People below Poverty Level 18-64 Years",
                                "Percent of All People below Poverty Level 65+ Years")

# check for variable differences in 2022 vs 2021

dp03_21_to_check <- dp_table_variables_21 %>%
  filter(str_detect(variable, "DP03"))

dp03_22_to_check <- dp_table_variables_22 %>%
  filter(str_detect(variable, "DP03"))

View(full_join(dp03_22_to_check, dp03_21_to_check, by = c("variable", "label")))
# all match

#### labor force, check for differences, add label ####
# all match

# labor force

names(Full_dp_2022)

full_labor_force_22 <- Full_dp_2022 %>%
  filter(variable %in% labor_force_vars)%>%
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_labor_force_22 <- dp_2022 %>%
  filter(variable %in% labor_force_vars)%>%
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe, geometry)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_labor_force_22 <- uethda_schools_2022 %>%
  filter(variable %in% labor_force_vars)%>%  
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe, geometry)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_labor_force_21 <- Full_dp_2021 %>%
  filter(variable %in% labor_force_vars)  %>%
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_labor_force_21 <- dp_2021%>%
  filter(variable %in% labor_force_vars)%>%
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe, geometry)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  st_drop_geometry()

schools_labor_force_21 <- uethda_schools_2021 %>%
  filter(variable %in% labor_force_vars)  %>%
  cbind(labor_force_names)%>%
  select(NAME, labor_force_names, estimate, moe)%>%
  rename("Variable" = "labor_force_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_labor_force <- rbind(full_labor_force_22, full_labor_force_21)

tract_labor_force <- left_join(tract_labor_force_22, tract_labor_force_21, by = c("Location", "Variable"))


schools_labor_force <- left_join(schools_labor_force_22, schools_labor_force_21, by = c("Location", "Variable"))

# transportation_to_work_vars
full_transportation_to_work_22 <- Full_dp_2022 %>%
  filter(variable %in% transportation_to_work_vars)%>%
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_transportation_to_work_22 <- dp_2022 %>%
  filter(variable %in% transportation_to_work_vars)%>%
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe, geometry)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_transportation_to_work_22 <- uethda_schools_2022 %>%
  filter(variable %in% transportation_to_work_vars)%>%  
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe, geometry)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_transportation_to_work_21 <- Full_dp_2021 %>%
  filter(variable %in% transportation_to_work_vars)  %>%
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_transportation_to_work_21 <- dp_2021%>%
  filter(variable %in% transportation_to_work_vars)%>%
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe, geometry)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_transportation_to_work_21 <- uethda_schools_2021 %>%
  filter(variable %in% transportation_to_work_vars)  %>%
  cbind(transportation_to_work_names)%>%
  select(NAME, transportation_to_work_names, estimate, moe)%>%
  rename("Variable" = "transportation_to_work_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_transportation_to_work <- rbind(full_transportation_to_work_22, full_transportation_to_work_21)

tract_transportation_to_work <- left_join(tract_transportation_to_work_22, tract_transportation_to_work_21, by = c("Location", "Variable"))

schools_transportation_to_work <- left_join(schools_transportation_to_work_22, schools_transportation_to_work_21, by = c("Location", "Variable"))

#occupation_vars
full_occupation_22 <- Full_dp_2022 %>%
  filter(variable %in% occupation_vars)%>%
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_occupation_22 <- dp_2022 %>%
  filter(variable %in% occupation_vars)%>%
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe, geometry)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_occupation_22 <- uethda_schools_2022 %>%
  filter(variable %in% occupation_vars)%>%  
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe, geometry)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_occupation_21 <- Full_dp_2021 %>%
  filter(variable %in% occupation_vars)  %>%
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_occupation_21 <- dp_2021%>%
  filter(variable %in% occupation_vars)%>%
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe, geometry)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_occupation_21 <- uethda_schools_2021 %>%
  filter(variable %in% occupation_vars)  %>%
  cbind(occupation_names)%>%
  select(NAME, occupation_names, estimate, moe)%>%
  rename("Variable" = "occupation_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location)) %>%
  st_drop_geometry()

full_occupation <- rbind(full_occupation_22, full_occupation_21)

tract_occupation <- left_join(tract_occupation_22, tract_occupation_21, by = c("Location", "Variable"))

schools_occupation <- left_join(schools_occupation_22, schools_occupation_21, by = c("Location", "Variable"))


#industry_vars
full_industry_22 <- Full_dp_2022 %>%
  filter(variable %in% industry_vars)%>%
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_industry_22 <- dp_2022 %>%
  filter(variable %in% industry_vars)%>%
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe, geometry)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_industry_22 <- uethda_schools_2022 %>%
  filter(variable %in% industry_vars)%>%  
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe, geometry)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_industry_21 <- Full_dp_2021 %>%
  filter(variable %in% industry_vars)  %>%
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_industry_21 <- dp_2021%>%
  filter(variable %in% industry_vars)%>%
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe, geometry)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry

schools_industry_21 <- uethda_schools_2021 %>%
  filter(variable %in% industry_vars)  %>%
  cbind(industry_names)%>%
  select(NAME, industry_names, estimate, moe)%>%
  rename("Variable" = "industry_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_industry <- rbind(full_industry_22, full_industry_21)

tract_industry <- left_join(tract_industry_22, tract_industry_21, by = c("Location", "Variable"))

schools_industry <- left_join(schools_industry_22, schools_industry_21, by = c("Location", "Variable"))


#class_of_workers_vars
full_class_of_workers_22 <- Full_dp_2022 %>%
  filter(variable %in% class_of_workers_vars)%>%
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_class_of_workers_22 <- dp_2022 %>%
  filter(variable %in% class_of_workers_vars)%>%
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe, geometry)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_class_of_workers_22 <- uethda_schools_2022 %>%
  filter(variable %in% class_of_workers_vars)%>%  
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe, geometry)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_class_of_workers_21 <- Full_dp_2021 %>%
  filter(variable %in% class_of_workers_vars)  %>%
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_class_of_workers_21 <- dp_2021%>%
  filter(variable %in% class_of_workers_vars)%>%
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe, geometry)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_class_of_workers_21 <- uethda_schools_2021 %>%
  filter(variable %in% class_of_workers_vars)  %>%
  cbind(class_of_workers_names)%>%
  select(NAME, class_of_workers_names, estimate, moe)%>%
  rename("Variable" = "class_of_workers_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_class_of_workers <- rbind(full_class_of_workers_22, full_class_of_workers_21)

tract_class_of_workers <- left_join(tract_class_of_workers_22, tract_class_of_workers_21, by = c("Location", "Variable"))

schools_class_of_workers <- left_join(schools_class_of_workers_22, schools_class_of_workers_21, by = c("Location", "Variable"))

#hh_income_vars
full_hh_income_22 <- Full_dp_2022 %>%
  filter(variable %in% hh_income_vars)%>%
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_hh_income_22 <- dp_2022 %>%
  filter(variable %in% hh_income_vars)%>%
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_hh_income_22 <- uethda_schools_2022 %>%
  filter(variable %in% hh_income_vars)%>%  
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_hh_income_21 <- Full_dp_2021 %>%
  filter(variable %in% hh_income_vars)  %>%
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_hh_income_21 <- dp_2021%>%
  filter(variable %in% hh_income_vars)%>%
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_hh_income_21 <- uethda_schools_2021 %>%
  filter(variable %in% hh_income_vars)  %>%
  cbind(hh_income_names)%>%
  select(NAME, hh_income_names, estimate, moe)%>%
  rename("Variable" = "hh_income_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_hh_income <- rbind(full_hh_income_22, full_hh_income_21)

tract_hh_income <- left_join(tract_hh_income_22, tract_hh_income_21, by = c("Location", "Variable"))

schools_hh_income <- left_join(schools_hh_income_22, schools_hh_income_21, by = c("Location", "Variable"))


full_hh_income %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Location == "Carter County")

full_hh_income_sub25_percent  <- full_hh_income %>%
  filter(Year == "2022")%>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2") %>%
  filter(Variable == "Percent HH Income < 10,000"|
           Variable == "Percent HH Income 10,000-14,999"|
           Variable == "Percent HH Income 15,000-24,999")%>%
  group_by(Location)%>%
  summarise(`Estimate` = sum(`Estimate`), `MOE` = moe_sum(`MOE`, `Estimate`),
            Variable = "Percent HH Income < 25,000") %>%
  select(Location, Variable, `Estimate`, `MOE`)

full_hh_income_sub25_percent

full_hh_income_25_50_percent <- full_hh_income %>%
  filter(Year == 2022)%>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>% 
  filter(Variable == "Percent HH Income 25,000-34,999"|
           Variable == "Percent HH Income 35,000-49,999")%>%
  group_by(Location)%>%
  summarise(`Estimate` = sum(`Estimate`), `MOE` = moe_sum(`MOE`, `Estimate`),
            
            Variable = "Percent HH Income 25,000-49,999")%>%
  select(Location, Variable, `Estimate`, `MOE`)

full_hh_income_25_50_percent

full_hh_income_50_75_percent <- full_hh_income %>%
  filter(Year == 2022)%>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>% 
  filter(Variable == "Percent HH Income 50,000-74,999")%>%
  select(Location, Variable, `Estimate`, `MOE`)

full_hh_income

full_hh_income_75_100_percent <- full_hh_income %>%
  filter(Year == 2022)%>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>% 
  filter(Variable == "Percent HH Income 75,000-99,999")%>%
  select(Location, Variable, `Estimate`, `MOE`)

full_hh_income_75_100_percent

full_hh_income_over100_percent  <- full_hh_income %>%
  filter(Year == 2022)%>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>%
  filter(Variable == "Percent HH Income 100,000-149,999"|
           Variable == "Percent HH Income 150,000-199,999"|
           Variable == "Percent HH Income > 200,000")%>%
  group_by(Location)%>%
  summarise(`Estimate` = sum(`Estimate`), `MOE` = moe_sum(`MOE`, `Estimate`),
            Variable = "Percent Households $100,000+")%>%
  select(Location, Variable, `Estimate`, `MOE`)


bound_new_income_brackets_full <- rbind(full_hh_income_sub25_percent,full_hh_income_50_75_percent,full_hh_income_75_100_percent,full_hh_income_over100_percent)

temp1 <- bound_new_income_brackets_full %>%
  select(Variable)%>%
  reframe(Variable)%>%
  unique()

temp1

new_hh_income_vars_full <- temp1$Variable

bound_new_income_brackets_full %>%
  mutate(Variable = factor(Variable, levels = new_hh_income_vars_full))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `Estimate`, fill = Location))+
  geom_bar(stat = "identity")+
  facet_wrap(~Location)+
  geom_errorbar(aes(x=`Estimate`, xmin=`Estimate` - `MOE`, xmax = `Estimate` + `MOE`), width=0.2, linewidth=1, color="black")+
  geom_label(aes(group = Variable,label = `Estimate`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("2022 Household Income Distribution")


#methods_of_income_vars
full_methods_of_income_22 <- Full_dp_2022 %>%
  filter(variable %in% methods_of_income_vars)%>%
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_methods_of_income_22 <- dp_2022 %>%
  filter(variable %in% methods_of_income_vars)%>%
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_methods_of_income_22 <- uethda_schools_2022 %>%
  filter(variable %in% methods_of_income_vars)%>%  
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_methods_of_income_21 <- Full_dp_2021 %>%
  filter(variable %in% methods_of_income_vars)  %>%
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_methods_of_income_21 <- dp_2021%>%
  filter(variable %in% methods_of_income_vars)%>%
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe, geometry)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_methods_of_income_21 <- uethda_schools_2021 %>%
  filter(variable %in% methods_of_income_vars)  %>%
  cbind(methods_of_income_names)%>%
  select(NAME, methods_of_income_names, estimate, moe)%>%
  rename("Variable" = "methods_of_income_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

full_methods_of_income <- rbind(full_methods_of_income_22, full_methods_of_income_21)

tract_methods_of_income <- left_join(tract_methods_of_income_22, tract_methods_of_income_21, by = c("Location", "Variable"))

schools_methods_of_income <- left_join(schools_methods_of_income_22, schools_methods_of_income_21, by = c("Location", "Variable"))

#health_insurance_vars
full_health_insurance_22 <- Full_dp_2022 %>%
  filter(variable %in% health_insurance_vars)%>%
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))


tract_health_insurance_22 <- dp_2022 %>%
  filter(variable %in% health_insurance_vars)%>%
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe, geometry)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")

schools_health_insurance_22 <- uethda_schools_2022 %>%
  filter(variable %in% health_insurance_vars)%>%  
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe, geometry)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_health_insurance_21 <- Full_dp_2021 %>%
  filter(variable %in% health_insurance_vars)  %>%
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_health_insurance_21 <- dp_2021%>%
  filter(variable %in% health_insurance_vars)%>%
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe, geometry)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_health_insurance_21 <- uethda_schools_2021 %>%
  filter(variable %in% health_insurance_vars)  %>%
  cbind(health_insurance_names)%>%
  select(NAME, health_insurance_names, estimate, moe)%>%
  rename("Variable" = "health_insurance_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry

full_health_insurance <- rbind(full_health_insurance_22, full_health_insurance_21)

tract_health_insurance <- left_join(tract_health_insurance_22, tract_health_insurance_21, by = c("Location", "Variable"))

schools_health_insurance <- left_join(schools_health_insurance_22, schools_health_insurance_21, by = c("Location", "Variable"))

#fams_below_pov_vars
full_fams_below_pov_22 <- Full_dp_2022 %>%
  filter(variable %in% fams_below_pov_vars)%>%
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))

full_fams_below_pov_22

tract_fams_below_pov_22 <- dp_2022 %>%
  filter(variable %in% fams_below_pov_vars)%>%
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")




schools_fams_below_pov_22 <- uethda_schools_2022 %>%
  filter(variable %in% fams_below_pov_vars)%>%  
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_fams_below_pov_21 <- Full_dp_2021 %>%
  filter(variable %in% fams_below_pov_vars)  %>%
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_fams_below_pov_21 <- dp_2021%>%
  filter(variable %in% fams_below_pov_vars)%>%
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_fams_below_pov_21 <- uethda_schools_2021 %>%
  filter(variable %in% fams_below_pov_vars)  %>%
  cbind(fams_below_pov_names)%>%
  select(NAME, fams_below_pov_names, estimate, moe)%>%
  rename("Variable" = "fams_below_pov_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()%>%
  mutate(Location = remove_after_comma_function(Location))

full_fams_below_pov <- rbind(full_fams_below_pov_22, full_fams_below_pov_21)

tract_fams_below_pov <- left_join(tract_fams_below_pov_22, tract_fams_below_pov_21, by = c("Location", "Variable"))

schools_fams_below_pov <- left_join(schools_fams_below_pov_22, schools_fams_below_pov_21, by = c("Location", "Variable"))


#all_people_below_pov_vars
full_all_people_below_pov_22 <- Full_dp_2022 %>%
  filter(variable %in% all_people_below_pov_vars)%>%
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))

full_all_people_below_pov_22

tract_all_people_below_pov_22 <- dp_2022 %>%
  filter(variable %in% all_people_below_pov_vars)%>%
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")


schools_all_people_below_pov_22 <- uethda_schools_2022 %>%
  filter(variable %in% all_people_below_pov_vars)%>%  
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "2022 Estimate" = "estimate", "2022 MOE" = "moe")%>%
  mutate(Location = remove_after_comma_function(Location))


full_all_people_below_pov_21 <- Full_dp_2021 %>%
  filter(variable %in% all_people_below_pov_vars)  %>%
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

tract_all_people_below_pov_21 <- dp_2021%>%
  filter(variable %in% all_people_below_pov_vars)%>%
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe, geometry)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()

schools_all_people_below_pov_21 <- uethda_schools_2021 %>%
  filter(variable %in% all_people_below_pov_vars)  %>%
  cbind(all_people_below_pov_names)%>%
  select(NAME, all_people_below_pov_names, estimate, moe)%>%
  rename("Variable" = "all_people_below_pov_names", "Location" = "NAME",
         "2021 Estimate" = "estimate", "2021 MOE" = "moe")%>%
  st_drop_geometry()%>%
  mutate(Location = remove_after_comma_function(Location))

full_all_people_below_pov <- rbind(full_all_people_below_pov_22, full_all_people_below_pov_21)

tract_all_people_below_pov <- left_join(tract_all_people_below_pov_22, tract_all_people_below_pov_21, by = c("Location", "Variable"))

schools_all_people_below_pov <- left_join(schools_all_people_below_pov_22, schools_all_people_below_pov_21, by = c("Location", "Variable"))

### data sets are ready to go ####

#county
county_fams_below_pov <- full_fams_below_pov %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_all_people_below_pov <- full_all_people_below_pov %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_health_insurance <- full_health_insurance %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_methods_of_income <- full_methods_of_income %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_hh_income <- full_hh_income %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_class_of_workers <- full_class_of_workers %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_industry <- full_industry %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_occupation <- full_occupation %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_transportation_to_work <- full_transportation_to_work %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")

county_labor_force <- full_labor_force %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")


county_all_people_below_pov

county_fams_below_pov

fams_below_pov_vars

county_fams_below_pov %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = fams_below_pov_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  ggtitle("Percent Change in Families in Poverty from 2021 to 2022")

table_function(county_fams_below_pov %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Family Poverty Percentages`)

##### NEED TO PULL OUT 65+ for DP02 ####

county_65_pov <- county_all_people_below_pov %>%
  filter(str_detect(Variable, "65"))

### labor force profile ####

lab_force_vars <- c("Population 16+ Years", "Percent Population 16+ Years",
                    "Population 16+ Years in Labor Force", "Percent Population 16+ Years in Labor Force",
                    "Population 16+ Years in Civilian Labor Force", "Percent Population 16+ Years in Civilian Labor Force",
                    "Population 16+ Years Employed", "Percent Population 16+ Years Employed",
                    "Population 16+ Years Unemployed", "Percent Population 16+ Years Unemployed",
                    "Population 16+ Years Not in Labor Force", "Percent Population 16+ Years Not in Labor Force",
                    "Percent Unemployment Rate")

lab_force_gender <- c("Female Population 16+ Years in Labor Force", "Percent Female Population 16+ Years in Labor Force",
                      "Female Population 16+ Years Employed", "Percent Female Population 16+ Years Employed",
                      "Population 16+ Years with Children under 6 Years", 
                      "Population 16+ Years with Children under 6 Years All Parents in Labor Force", "Percent Population 16+ Years with Children under 6 Years All Parents in Labor Force",
                      "Population 16+ Years with Children 6-17 Years", 
                      "Population 16+ Years with Children 6-17 Years All Parents in Labor Force", "Percent Population 16+ Years with Children 6-17 Years All Parents in Labor Force")

county_labor_force %>%
  filter(Variable %in% lab_force_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = lab_force_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  ggtitle("Percent Change Labor Force Profile from 2021 to 2022")

table_function(county_labor_force %>%
                 filter(Variable %in% lab_force_vars)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Labor Force Profile`)

county_labor_force %>%
  filter(Variable %in% lab_force_gender)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = lab_force_gender))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  ggtitle("Percent Change Labor Force Female and Working Parents Profile from 2021 to 2022")

table_function(county_labor_force %>%
                 filter(Variable %in% lab_force_gender)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Labor Force Female and Working Parents`)

#### occupation and industry ####

industry_names

county_industry %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = industry_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Percent Change in Industry Number of Workers Profile from 2021 to 2022")

table_function(county_industry %>%
                 filter(str_detect(Variable, "Percent"))%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate")%>%
                 rename("Civilian Employed Population" = "Percent Civilian Employed Population"), `2022 Industry Percentage of Workers Profile`)


county_occupation %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = occupation_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Percent Change in Total Workers in Occupations from 2021 to 2022")

table_function(county_occupation %>%
                 filter(str_detect(Variable, "Percent"))%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate")%>%
                 rename("Civilian Employed Population" = "Percent Civilian Employed Population"), `2022 Percentage of Workers in Occupations Profile`)

#### per capita income ####

per_capita_income <- "Per Capita Income"

per_capita_22 <- Full_dp_2022 %>%
  filter(variable == "DP03_0088")%>%
  cbind(per_capita_income)%>%
  select(NAME,per_capita_income, estimate, moe)%>%
  rename("Variable" = per_capita_income, "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))

per_capita_21 <- Full_dp_2021 %>%
  filter(variable == "DP03_0088")%>%
  cbind(per_capita_income)%>%
  select(NAME,per_capita_income, estimate, moe)%>%
  rename("Variable" = per_capita_income, "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

per_capita <- rbind(per_capita_22, per_capita_21)

full_per_capita <- per_capita %>%
  pivot_wider(names_from = Year, values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")%>%
  mutate("2021 Inf Adj Estimate" = 1.078 * `2021 Estimate`)%>%
  mutate("2021 Inf Adj MOE" = 1.078 * `2021 MOE`)

full_per_capita %>%  
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Inf Adj Estimate`)/`2021 Inf Adj Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Inf Adj Estimate`, `2022 MOE`, `2021 Inf Adj MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Per Capita Income Changes from 2021 to 2022",
          subtitle = "7.8% Inflation Adjusted")

full_per_capita %>%  
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Per Capita Income Changes from 2021 to 2022")


table_function(full_per_capita %>%
                 mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Inf Adj Estimate`)/`2021 Inf Adj Estimate`,2))%>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Inf Adj Estimate`, `2022 MOE`, `2021 Inf Adj MOE`, clevel = 0.95))%>%
                 select(Location, `2022 Estimate`, `2021 Estimate`, `2021 Inf Adj Estimate`, `Percent Change`, `Significant`), `Per Capita Income Change from 2021 to 2022`)

county_class_of_workers %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = class_of_workers_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set2")+
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
  ggtitle("Percent Change in Class of Workers from 2021 to 2022")

table_function(county_class_of_workers %>%                
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable != "Percent Civilian Employed Population")%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Class of Workers`)

# transportation to work

trans_to_work <- county_transportation_to_work %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  select(Variable)%>%
  unique()

trans_to_work_factor <- trans_to_work$Variable

table_function(county_transportation_to_work %>%
                 filter(Variable != "Percent Mean Travel Time to Work")%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Transportation to Work`)



county_transportation_to_work %>%
  filter(Variable != "Percent Mean Travel Time to Work")%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = trans_to_work_factor))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white", show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Percent Change in Work Transportation from 2021 to 2022")

# health insurance 

county_health_insurance %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Civilian noninstitutionalized Population")%>%
  select(Location, Variable, `2022 Estimate`)%>%
  pivot_wider(names_from = "Variable", values_from = "2022 Estimate")%>%
  table_function(`2022 Health Insurance Profile`)

health_ins <- county_health_insurance %>%
  filter(str_detect(Variable, "Percent"))%>%
  select(Variable)%>%
  filter(Variable !="Percent Civilian noninstitutionalized Population")%>%
  unique()

health_ins

health_ins_factor <- health_ins$Variable

county_health_insurance %>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Variable != "Percent Civilian noninstitutionalized Population")%>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = health_ins_factor))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "white",  show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Percent Difference in Health Insurance from 2021 to 2022")


#kpt

schools_fams_below_pov

kpt_schools_fams_below_pov <- schools_fams_below_pov %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))


kpt_schools_all_people_below_pov <- schools_all_people_below_pov %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_health_insurance <- schools_health_insurance %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_methods_of_income <- schools_methods_of_income %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_hh_income <- schools_hh_income %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_class_of_workers <- schools_class_of_workers %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_industry <- schools_industry %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_occupation <- schools_occupation %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_transportation_to_work <- schools_transportation_to_work %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

kpt_schools_labor_force <- schools_labor_force %>%
  st_drop_geometry()%>%
  filter(str_detect(Location, "Kingsport"))

#### kingsport stuff ####


table_function(kpt_schools_transportation_to_work %>%
                 filter(Variable != "Percent Mean Travel Time to Work")%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`)
               , `Kingsport Transportation to Work`)



kpt_schools_transportation_to_work %>%
  filter(Variable != "Percent Mean Travel Time to Work")%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = trans_to_work_factor))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Percent Change in Work Transportation in Kingsport from 2021 to 2022")

kpt_schools_class_of_workers %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = class_of_workers_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set2")+
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
  ggtitle("Percent Change in Kingsport Class of Workers from 2021 to 2022")

table_function(kpt_schools_class_of_workers %>%                
                 select(Variable, `2022 Estimate`, `2021 Estimate`)%>%
                 filter(Variable != "Percent Civilian Employed Population"), `2022 Kingsport Class of Workers`)

kpt_schools_industry %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = industry_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Kingsport Percent Change in Industry Number of Workers Profile from 2021 to 2022")

table_function(kpt_schools_industry %>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`), `2022 Kingsport Industry Percentage of Workers Profile`)


kpt_schools_occupation %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = occupation_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("Kingsport Percent Change in Total Workers in Occupations from 2021 to 2022")

table_function(kpt_schools_occupation %>%
                 select( Variable, `2022 Estimate`, `2021 Estimate`), `2022 Kingsport Percentage of Workers in Occupations Profile`)

kpt_schools_labor_force %>%
  filter(Variable %in% lab_force_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = lab_force_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  ggtitle("Percent Change Labor Force Profile from 2021 to 2022")

table_function(kpt_schools_labor_force %>%
                 filter(Variable %in% lab_force_vars)%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`)
               , `2022 Kingsport Labor Force Profile`)

kpt_schools_labor_force %>%
  filter(Variable %in% lab_force_gender)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = lab_force_gender))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
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
  ggtitle("KPT Percent Change Labor Force Female and Working Parents Profile from 2021 to 2022")

table_function(kpt_schools_labor_force %>%
                 filter(Variable %in% lab_force_gender)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Labor Force Female and Working Parents`)




#### need to pull school district per capita ####

per_capita_income <- "Per Capita Income"

joined_tn_school_districts_2022

schools_per_capita_22 <- joined_tn_school_districts_2022 %>%
  filter(variable == "DP03_0088")%>%
  cbind(per_capita_income)%>%
  select(NAME,per_capita_income, estimate, moe)%>%
  rename("Variable" = per_capita_income, "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2022)%>%
  mutate(Location = remove_after_comma_function(Location))

schools_per_capita_21 <- joined_tn_school_districts_2021 %>%
  filter(variable == "DP03_0088")%>%
  cbind(per_capita_income)%>%
  select(NAME,per_capita_income, estimate, moe)%>%
  rename("Variable" = per_capita_income, "Location" = "NAME",
         "Estimate" = "estimate", "MOE" = "moe")%>%
  mutate(Year = 2021)%>%
  mutate(Location = remove_after_comma_function(Location))

schools_per_capita <- rbind(schools_per_capita_22, schools_per_capita_21)

kpt_per_capita <- schools_per_capita %>%
  filter(str_detect(Location, "Kingsport"))



kpt_adj_per_capita <- kpt_per_capita %>%
  st_drop_geometry()%>%
  pivot_wider(names_from = "Year", values_from = c("Estimate", "MOE"))%>%
  rename("2022 Estimate" = "Estimate_2022", "2021 Estimate" = "Estimate_2021", "2022 MOE" = "MOE_2022", "2021 MOE" = "MOE_2021")%>%
  select(Location, Variable, "2022 Estimate", "2022 MOE", "2021 Estimate", "2021 MOE")%>%
  mutate("2021 Inf Adj Estimate" = 1.078 * `2021 Estimate`)%>%
  mutate("2021 Inf Adj MOE" = 1.078 * `2021 MOE`)


kpt_adj_per_capita%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Inf Adj Estimate`)/`2021 Inf Adj Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Inf Adj Estimate`, `2022 MOE`, `2021 Inf Adj MOE`, clevel = 0.95))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
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
  ggtitle("KPT Per Capita Income Changes from 2021 to 2022")

names(kpt_adj_per_capita)

table_function(kpt_adj_per_capita%>%
                 mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Inf Adj Estimate`)/`2021 Inf Adj Estimate`,2))%>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Inf Adj Estimate`, `2022 MOE`, `2021 Inf Adj MOE`, clevel = 0.95)), `KPT Per Capita Income Changes 2022 to 2021`)



