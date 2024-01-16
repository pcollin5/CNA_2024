##### S1701 POVERTY ####

View(subject_table_variables_22)

uethda_county_individual_poverty_2022

uethda_county_individual_poverty_2021

uethda_tract_individual_poverty_2022

uethda_tract_individual_poverty_2021

uethda_schools_individual_poverty_2022

uethda_schools_individual_poverty_2021

individual_pov_total_vars_22 <- c("S1701_C01_001", "S1701_C01_002",
                                  "S1701_C01_003","S1701_C01_004",
                                  "S1701_C01_005","S1701_C01_006",
                                  "S1701_C01_007","S1701_C01_008",
                                  "S1701_C01_009","S1701_C01_010",
                                  "S1701_C01_011","S1701_C01_012",
                                  "S1701_C01_013","S1701_C01_014",
                                  "S1701_C01_015","S1701_C01_016",
                                  "S1701_C01_017","S1701_C01_018",
                                  "S1701_C01_019","S1701_C01_020",
                                  "S1701_C01_021","S1701_C01_022",
                                  "S1701_C01_023","S1701_C01_024",
                                  "S1701_C01_025","S1701_C01_026",
                                  "S1701_C01_027","S1701_C01_028",
                                  "S1701_C01_029","S1701_C01_030",
                                  "S1701_C01_031","S1701_C01_032",
                                  "S1701_C01_033","S1701_C01_034",
                                  "S1701_C01_035","S1701_C01_036",
                                  "S1701_C01_037","S1701_C01_038",
                                  "S1701_C01_039","S1701_C01_040",
                                  "S1701_C01_041","S1701_C01_042",
                                  "S1701_C01_043","S1701_C01_044",
                                  "S1701_C01_045","S1701_C01_058"
)

individual_pov_total_names_22 <- c("Population for whom Poverty Status is Determined", "Pop. Pov. Status under 18",
                                   "Pop. Pov. Status under 5", "Pop. Pov. Status 5-17", "Pop. Pov. Status children of householder under 18",
                                   "Pop. Pov. Status 18-64","Pop. Pov. Status 18-34","Pop. Pov. Status 35-64","Pop. Pov. Status 60+",
                                   "Pop. Pov. Status 65+","Pop. Pov. Status Male","Pop. Pov. Status Female","Pop. Pov. Status White",
                                   "Pop. Pov. Status Black","Pop. Pov. Status Native American","Pop. Pov. Status Asian",
                                   "Pop. Pov. Status Pacific Islander","Pop. Pov. Status Some Other Race","Pop. Pov. Status Two or More Races",
                                   "Pop. Pov. Status Hispanic","Pop. Pov. Status Non-Hispanic","Pop. Pov. Status 25+",
                                   "Pop. Pov. Status Less than HS Degree","Pop. Pov. Status HS Degree","Pop. Pov. Status Some College or Associates",
                                   "Pop. Pov. Status Bachelor's or Higher","Pop. Pov. Status 16+ in Labor Force","Pop. Pov. Status Employed",
                                   "Pop. Pov. Status Employed Male","Pop. Pov. Status Employed Female","Pop. Pov. Status Unemployed",
                                   "Pop. Pov. Status Unemployed Male","Pop. Pov. Status Unemployed Female","Pop. Pov. Status 16+",
                                   "Pop. Pov. Status Worked Full Time Year Round","Pop. Pov. Status Worked Part Time or Part Year",
                                   "Pop. Pov. Status Did Not Work","Pop. Pov. Status below 50% of Poverty Level","Pop. Pov. Status below 125% of Poverty Level",
                                   "Pop. Pov. Status below 150% of Poverty Level","Pop. Pov. Status below 185% of Poverty Level",
                                   "Pop. Pov. Status below 200% of Poverty Level","Pop. Pov. Status below 300% of Poverty Level",
                                   "Pop. Pov. Status below 400% of Poverty Level","Pop. Pov. Status below 500% of Poverty Level",
                                   "Pop. Pov. Status Mean Income Deficit")

individual_pov_total_below_pov_names_22 <- c("Population for whom Poverty Status is Determined in Poverty", "Pop. Pov. Status under 18 in Poverty",
                                             "Pop. Pov. Status under 5 in Poverty", "Pop. Pov. Status 5-17 in Poverty", "Pop. Pov. Status children of householder under 18 in Poverty",
                                             "Pop. Pov. Status 18-64 in Poverty","Pop. Pov. Status 18-34 in Poverty","Pop. Pov. Status 35-64 in Poverty","Pop. Pov. Status 60+ in Poverty",
                                             "Pop. Pov. Status 65+ in Poverty","Pop. Pov. Status Male in Poverty","Pop. Pov. Status Female in Poverty","Pop. Pov. Status White in Poverty",
                                             "Pop. Pov. Status Black in Poverty","Pop. Pov. Status Native American in Poverty","Pop. Pov. Status Asian in Poverty",
                                             "Pop. Pov. Status Pacific Islander in Poverty","Pop. Pov. Status Some Other Race in Poverty","Pop. Pov. Status Two or More Races in Poverty",
                                             "Pop. Pov. Status Hispanic in Poverty","Pop. Pov. Status Non-Hispanic in Poverty","Pop. Pov. Status 25+ in Poverty",
                                             "Pop. Pov. Status Less than HS Degree in Poverty","Pop. Pov. Status HS Degree in Poverty","Pop. Pov. Status Some College or Associates in Poverty",
                                             "Pop. Pov. Status Bachelor's or Higher in Poverty","Pop. Pov. Status 16+ in Labor Force in Poverty","Pop. Pov. Status Employed in Poverty",
                                             "Pop. Pov. Status Employed Male in Poverty","Pop. Pov. Status Employed Female in Poverty","Pop. Pov. Status Unemployed in Poverty",
                                             "Pop. Pov. Status Unemployed Male in Poverty","Pop. Pov. Status Unemployed Female in Poverty","Pop. Pov. Status 16+ in Poverty",
                                             "Pop. Pov. Status Worked Full Time Year Round in Poverty","Pop. Pov. Status Worked Part Time or Part Year in Poverty",
                                             "Pop. Pov. Status Did Not Work in Poverty","Pop. Pov. Status below 50% of Poverty Level in Poverty","Pop. Pov. Status below 125% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 150% of Poverty Level in Poverty","Pop. Pov. Status below 185% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 200% of Poverty Level in Poverty","Pop. Pov. Status below 300% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 400% of Poverty Level in Poverty","Pop. Pov. Status below 500% of Poverty Level in Poverty",
                                             "Pop. Pov. Status Mean Income Deficit in Poverty")

individual_pov_total_below_pov_vars_22 <- c("S1701_C02_001", "S1701_C02_002",
                                            "S1701_C02_003","S1701_C02_004",
                                            "S1701_C02_005","S1701_C02_006",
                                            "S1701_C02_007","S1701_C02_008",
                                            "S1701_C02_009","S1701_C02_010",
                                            "S1701_C02_011","S1701_C02_012",
                                            "S1701_C02_013","S1701_C02_014",
                                            "S1701_C02_015","S1701_C02_016",
                                            "S1701_C02_017","S1701_C02_018",
                                            "S1701_C02_019","S1701_C02_020",
                                            "S1701_C02_021","S1701_C02_022",
                                            "S1701_C02_023","S1701_C02_024",
                                            "S1701_C02_025","S1701_C02_026",
                                            "S1701_C02_027","S1701_C02_028",
                                            "S1701_C02_029","S1701_C02_030",
                                            "S1701_C02_031","S1701_C02_032",
                                            "S1701_C02_033","S1701_C02_034",
                                            "S1701_C02_035","S1701_C02_036",
                                            "S1701_C02_037","S1701_C02_038",
                                            "S1701_C02_039","S1701_C02_040",
                                            "S1701_C02_041","S1701_C02_042",
                                            "S1701_C02_043","S1701_C02_044",
                                            "S1701_C02_045","S1701_C02_058"
)

individual_pov_percent_names_22 <- c("Population for whom Poverty Status is Determined in Poverty Percent", "Pop. Pov. Status under 18 in Poverty Percent",
                                     "Pop. Pov. Status under 5 in Poverty Percent", "Pop. Pov. Status 5-17 in Poverty Percent", "Pop. Pov. Status children of householder under 18 in Poverty Percent",
                                     "Pop. Pov. Status 18-64 in Poverty Percent","Pop. Pov. Status 18-34 in Poverty Percent","Pop. Pov. Status 35-64 in Poverty Percent","Pop. Pov. Status 60+ in Poverty Percent",
                                     "Pop. Pov. Status 65+ in Poverty Percent","Pop. Pov. Status Male in Poverty Percent","Pop. Pov. Status Female in Poverty Percent","Pop. Pov. Status White in Poverty Percent",
                                     "Pop. Pov. Status Black in Poverty Percent","Pop. Pov. Status Native American in Poverty Percent","Pop. Pov. Status Asian in Poverty Percent",
                                     "Pop. Pov. Status Pacific Islander in Poverty Percent","Pop. Pov. Status Some Other Race in Poverty Percent","Pop. Pov. Status Two or More Races in Poverty Percent",
                                     "Pop. Pov. Status Hispanic in Poverty Percent","Pop. Pov. Status Non-Hispanic in Poverty Percent","Pop. Pov. Status 25+ in Poverty Percent",
                                     "Pop. Pov. Status Less than HS Degree in Poverty Percent","Pop. Pov. Status HS Degree in Poverty Percent","Pop. Pov. Status Some College or Associates in Poverty Percent",
                                     "Pop. Pov. Status Bachelor's or Higher in Poverty Percent","Pop. Pov. Status 16+ in Labor Force in Poverty Percent","Pop. Pov. Status Employed in Poverty Percent",
                                     "Pop. Pov. Status Employed Male in Poverty Percent","Pop. Pov. Status Employed Female in Poverty Percent","Pop. Pov. Status Unemployed in Poverty Percent",
                                     "Pop. Pov. Status Unemployed Male in Poverty Percent","Pop. Pov. Status Unemployed Female in Poverty Percent","Pop. Pov. Status 16+ in Poverty Percent",
                                     "Pop. Pov. Status Worked Full Time Year Round in Poverty Percent","Pop. Pov. Status Worked Part Time or Part Year in Poverty Percent",
                                     "Pop. Pov. Status Did Not Work in Poverty Percent","Pop. Pov. Status below 50% of Poverty Level in Poverty Percent","Pop. Pov. Status below 125% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 150% of Poverty Level in Poverty Percent","Pop. Pov. Status below 185% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 200% of Poverty Level in Poverty Percent","Pop. Pov. Status below 300% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 400% of Poverty Level in Poverty Percent","Pop. Pov. Status below 500% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status Mean Income Deficit in Poverty Percent")

individual_pov_percent_vars_22 <- c("S1701_C03_001", "S1701_C03_002",
                                    "S1701_C03_003","S1701_C03_004",
                                    "S1701_C03_005","S1701_C03_006",
                                    "S1701_C03_007","S1701_C03_008",
                                    "S1701_C03_009","S1701_C03_010",
                                    "S1701_C03_011","S1701_C03_012",
                                    "S1701_C03_013","S1701_C03_014",
                                    "S1701_C03_015","S1701_C03_016",
                                    "S1701_C03_017","S1701_C03_018",
                                    "S1701_C03_019","S1701_C03_020",
                                    "S1701_C03_021","S1701_C03_022",
                                    "S1701_C03_023","S1701_C03_024",
                                    "S1701_C03_025","S1701_C03_026",
                                    "S1701_C03_027","S1701_C03_028",
                                    "S1701_C03_029","S1701_C03_030",
                                    "S1701_C03_031","S1701_C03_032",
                                    "S1701_C03_033","S1701_C03_034",
                                    "S1701_C03_035","S1701_C03_036",
                                    "S1701_C03_037","S1701_C03_038",
                                    "S1701_C03_039","S1701_C03_040",
                                    "S1701_C03_041","S1701_C03_042",
                                    "S1701_C03_043","S1701_C03_044",
                                    "S1701_C03_045","S1701_C03_058"
)

individual_pov_total_vars_21 <- c("S1701_C01_001", "S1701_C01_002",
                                  "S1701_C01_003","S1701_C01_004",
                                  "S1701_C01_005","S1701_C01_006",
                                  "S1701_C01_007","S1701_C01_008",
                                  "S1701_C01_009","S1701_C01_010",
                                  "S1701_C01_011","S1701_C01_012",
                                  "S1701_C01_013","S1701_C01_014",
                                  "S1701_C01_015","S1701_C01_016",
                                  "S1701_C01_017","S1701_C01_018",
                                  "S1701_C01_019","S1701_C01_020",
                                  "S1701_C01_021","S1701_C01_022",
                                  "S1701_C01_023","S1701_C01_024",
                                  "S1701_C01_025","S1701_C01_026",
                                  "S1701_C01_027","S1701_C01_028",
                                  "S1701_C01_029","S1701_C01_030",
                                  "S1701_C01_031","S1701_C01_032",
                                  "S1701_C01_033","S1701_C01_034",
                                  "S1701_C01_035","S1701_C01_036",
                                  "S1701_C01_037","S1701_C01_038",
                                  "S1701_C01_039","S1701_C01_040",
                                  "S1701_C01_041","S1701_C01_042",
                                  "S1701_C01_043","S1701_C01_044",
                                  "S1701_C01_045","S1701_C01_058"
)

individual_pov_total_names_21 <- c("Population for whom Poverty Status is Determined", "Pop. Pov. Status under 18",
                                   "Pop. Pov. Status under 5", "Pop. Pov. Status 5-17", "Pop. Pov. Status children of householder under 18",
                                   "Pop. Pov. Status 18-64","Pop. Pov. Status 18-34","Pop. Pov. Status 35-64","Pop. Pov. Status 60+",
                                   "Pop. Pov. Status 65+","Pop. Pov. Status Male","Pop. Pov. Status Female","Pop. Pov. Status White",
                                   "Pop. Pov. Status Black","Pop. Pov. Status Native American","Pop. Pov. Status Asian",
                                   "Pop. Pov. Status Pacific Islander","Pop. Pov. Status Some Other Race","Pop. Pov. Status Two or More Races",
                                   "Pop. Pov. Status Hispanic","Pop. Pov. Status Non-Hispanic","Pop. Pov. Status 25+",
                                   "Pop. Pov. Status Less than HS Degree","Pop. Pov. Status HS Degree","Pop. Pov. Status Some College or Associates",
                                   "Pop. Pov. Status Bachelor's or Higher","Pop. Pov. Status 16+ in Labor Force","Pop. Pov. Status Employed",
                                   "Pop. Pov. Status Employed Male","Pop. Pov. Status Employed Female","Pop. Pov. Status Unemployed",
                                   "Pop. Pov. Status Unemployed Male","Pop. Pov. Status Unemployed Female","Pop. Pov. Status 16+",
                                   "Pop. Pov. Status Worked Full Time Year Round","Pop. Pov. Status Worked Part Time or Part Year",
                                   "Pop. Pov. Status Did Not Work","Pop. Pov. Status below 50% of Poverty Level","Pop. Pov. Status below 125% of Poverty Level",
                                   "Pop. Pov. Status below 150% of Poverty Level","Pop. Pov. Status below 185% of Poverty Level",
                                   "Pop. Pov. Status below 200% of Poverty Level","Pop. Pov. Status below 300% of Poverty Level",
                                   "Pop. Pov. Status below 400% of Poverty Level","Pop. Pov. Status below 500% of Poverty Level",
                                   "Pop. Pov. Status Mean Income Deficit")

length(individual_pov_total_names_21)
length(individual_pov_total_vars_21)

individual_pov_total_below_pov_names_21 <- c("Population for whom Poverty Status is Determined in Poverty", "Pop. Pov. Status under 18 in Poverty",
                                             "Pop. Pov. Status under 5 in Poverty", "Pop. Pov. Status 5-17 in Poverty", "Pop. Pov. Status children of householder under 18 in Poverty",
                                             "Pop. Pov. Status 18-64 in Poverty","Pop. Pov. Status 18-34 in Poverty","Pop. Pov. Status 35-64 in Poverty","Pop. Pov. Status 60+ in Poverty",
                                             "Pop. Pov. Status 65+ in Poverty","Pop. Pov. Status Male in Poverty","Pop. Pov. Status Female in Poverty","Pop. Pov. Status White in Poverty",
                                             "Pop. Pov. Status Black in Poverty","Pop. Pov. Status Native American in Poverty","Pop. Pov. Status Asian in Poverty",
                                             "Pop. Pov. Status Pacific Islander in Poverty","Pop. Pov. Status Some Other Race in Poverty","Pop. Pov. Status Two or More Races in Poverty",
                                             "Pop. Pov. Status Hispanic in Poverty","Pop. Pov. Status Non-Hispanic in Poverty","Pop. Pov. Status 25+ in Poverty",
                                             "Pop. Pov. Status Less than HS Degree in Poverty","Pop. Pov. Status HS Degree in Poverty","Pop. Pov. Status Some College or Associates in Poverty",
                                             "Pop. Pov. Status Bachelor's or Higher in Poverty","Pop. Pov. Status 16+ in Labor Force in Poverty","Pop. Pov. Status Employed in Poverty",
                                             "Pop. Pov. Status Employed Male in Poverty","Pop. Pov. Status Employed Female in Poverty","Pop. Pov. Status Unemployed in Poverty",
                                             "Pop. Pov. Status Unemployed Male in Poverty","Pop. Pov. Status Unemployed Female in Poverty","Pop. Pov. Status 16+ in Poverty",
                                             "Pop. Pov. Status Worked Full Time Year Round in Poverty","Pop. Pov. Status Worked Part Time or Part Year in Poverty",
                                             "Pop. Pov. Status Did Not Work in Poverty","Pop. Pov. Status below 50% of Poverty Level in Poverty","Pop. Pov. Status below 125% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 150% of Poverty Level in Poverty","Pop. Pov. Status below 185% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 200% of Poverty Level in Poverty","Pop. Pov. Status below 300% of Poverty Level in Poverty",
                                             "Pop. Pov. Status below 400% of Poverty Level in Poverty","Pop. Pov. Status below 500% of Poverty Level in Poverty",
                                             "Pop. Pov. Status Mean Income Deficit in Poverty")

individual_pov_total_below_pov_vars_21 <- c("S1701_C02_001", "S1701_C02_002",
                                            "S1701_C02_003","S1701_C02_004",
                                            "S1701_C02_005","S1701_C02_006",
                                            "S1701_C02_007","S1701_C02_008",
                                            "S1701_C02_009","S1701_C02_010",
                                            "S1701_C02_011","S1701_C02_012",
                                            "S1701_C02_013","S1701_C02_014",
                                            "S1701_C02_015","S1701_C02_016",
                                            "S1701_C02_017","S1701_C02_018",
                                            "S1701_C02_019","S1701_C02_020",
                                            "S1701_C02_021","S1701_C02_022",
                                            "S1701_C02_023","S1701_C02_024",
                                            "S1701_C02_025","S1701_C02_026",
                                            "S1701_C02_027","S1701_C02_028",
                                            "S1701_C02_029","S1701_C02_030",
                                            "S1701_C02_031","S1701_C02_032",
                                            "S1701_C02_033","S1701_C02_034",
                                            "S1701_C02_035","S1701_C02_036",
                                            "S1701_C02_037","S1701_C02_038",
                                            "S1701_C02_039","S1701_C02_040",
                                            "S1701_C02_041","S1701_C02_042",
                                            "S1701_C02_043","S1701_C02_044",
                                            "S1701_C02_045","S1701_C02_058"
)

individual_pov_percent_names_21 <- c("Population for whom Poverty Status is Determined in Poverty Percent", "Pop. Pov. Status under 18 in Poverty Percent",
                                     "Pop. Pov. Status under 5 in Poverty Percent", "Pop. Pov. Status 5-17 in Poverty Percent", "Pop. Pov. Status children of householder under 18 in Poverty Percent",
                                     "Pop. Pov. Status 18-64 in Poverty Percent","Pop. Pov. Status 18-34 in Poverty Percent","Pop. Pov. Status 35-64 in Poverty Percent","Pop. Pov. Status 60+ in Poverty Percent",
                                     "Pop. Pov. Status 65+ in Poverty Percent","Pop. Pov. Status Male in Poverty Percent","Pop. Pov. Status Female in Poverty Percent","Pop. Pov. Status White in Poverty Percent",
                                     "Pop. Pov. Status Black in Poverty Percent","Pop. Pov. Status Native American in Poverty Percent","Pop. Pov. Status Asian in Poverty Percent",
                                     "Pop. Pov. Status Pacific Islander in Poverty Percent","Pop. Pov. Status Some Other Race in Poverty Percent","Pop. Pov. Status Two or More Races in Poverty Percent",
                                     "Pop. Pov. Status Hispanic in Poverty Percent","Pop. Pov. Status Non-Hispanic in Poverty Percent","Pop. Pov. Status 25+ in Poverty Percent",
                                     "Pop. Pov. Status Less than HS Degree in Poverty Percent","Pop. Pov. Status HS Degree in Poverty Percent","Pop. Pov. Status Some College or Associates in Poverty Percent",
                                     "Pop. Pov. Status Bachelor's or Higher in Poverty Percent","Pop. Pov. Status 16+ in Labor Force in Poverty Percent","Pop. Pov. Status Employed in Poverty Percent",
                                     "Pop. Pov. Status Employed Male in Poverty Percent","Pop. Pov. Status Employed Female in Poverty Percent","Pop. Pov. Status Unemployed in Poverty Percent",
                                     "Pop. Pov. Status Unemployed Male in Poverty Percent","Pop. Pov. Status Unemployed Female in Poverty Percent","Pop. Pov. Status 16+ in Poverty Percent",
                                     "Pop. Pov. Status Worked Full Time Year Round in Poverty Percent","Pop. Pov. Status Worked Part Time or Part Year in Poverty Percent",
                                     "Pop. Pov. Status Did Not Work in Poverty Percent","Pop. Pov. Status below 50% of Poverty Level in Poverty Percent","Pop. Pov. Status below 125% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 150% of Poverty Level in Poverty Percent","Pop. Pov. Status below 185% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 200% of Poverty Level in Poverty Percent","Pop. Pov. Status below 300% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status below 400% of Poverty Level in Poverty Percent","Pop. Pov. Status below 500% of Poverty Level in Poverty Percent",
                                     "Pop. Pov. Status Mean Income Deficit in Poverty Percent")

individual_pov_percent_vars_21 <- c("S1701_C03_001", "S1701_C03_002",
                                    "S1701_C03_003","S1701_C03_004",
                                    "S1701_C03_005","S1701_C03_006",
                                    "S1701_C03_007","S1701_C03_008",
                                    "S1701_C03_009","S1701_C03_010",
                                    "S1701_C03_011","S1701_C03_012",
                                    "S1701_C03_013","S1701_C03_014",
                                    "S1701_C03_015","S1701_C03_016",
                                    "S1701_C03_017","S1701_C03_018",
                                    "S1701_C03_019","S1701_C03_020",
                                    "S1701_C03_021","S1701_C03_022",
                                    "S1701_C03_023","S1701_C03_024",
                                    "S1701_C03_025","S1701_C03_026",
                                    "S1701_C03_027","S1701_C03_028",
                                    "S1701_C03_029","S1701_C03_030",
                                    "S1701_C03_031","S1701_C03_032",
                                    "S1701_C03_033","S1701_C03_034",
                                    "S1701_C03_035","S1701_C03_036",
                                    "S1701_C03_037","S1701_C03_038",
                                    "S1701_C03_039","S1701_C03_040",
                                    "S1701_C03_041","S1701_C03_042",
                                    "S1701_C03_043","S1701_C03_044",
                                    "S1701_C03_045","S1701_C03_058"
)

#### filter the variables ####

#county
county_individual_poverty_total_22 <- uethda_county_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_total_vars_22)%>%
  cbind(individual_pov_total_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


county_individual_poverty_total_21 <- uethda_county_individual_poverty_2021 %>% 
  filter(variable %in% individual_pov_total_vars_21)%>%
  cbind(individual_pov_total_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_individual_poverty_below_total_22 <- uethda_county_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_total_below_pov_vars_22)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_below_pov_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_below_pov_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_individual_poverty_below_total_22

county_individual_poverty_below_total_21 <- uethda_county_individual_poverty_2021 %>%
  filter(variable %in% individual_pov_total_below_pov_vars_21)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_below_pov_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_below_pov_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_individual_poverty_percent_22 <- uethda_county_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_percent_vars_22)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(NAME, estimate, moe, individual_pov_percent_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_percent_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_individual_poverty_percent_22

county_individual_poverty_percent_21 <- uethda_county_individual_poverty_2021 %>%
  filter(variable %in% individual_pov_percent_vars_21)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(NAME, estimate, moe, individual_pov_percent_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_percent_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_individual_poverty_percent_21

county_individual_poverty_total <- left_join(county_individual_poverty_total_22, county_individual_poverty_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_individual_poverty_below_total <- left_join(county_individual_poverty_below_total_22, county_individual_poverty_below_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_individual_poverty_percent <- left_join(county_individual_poverty_percent_22, county_individual_poverty_percent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


#tract
tract_individual_poverty_total_22 <- uethda_tract_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_total_vars_22)%>%
  cbind(individual_pov_total_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_names_22)%>%
  select(Location, Variable, Estimate, MOE)


tract_individual_poverty_total_21 <- uethda_tract_individual_poverty_2021 %>% 
  filter(variable %in% individual_pov_total_vars_21)%>%
  cbind(individual_pov_total_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_names_22)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_individual_poverty_below_total_22 <- uethda_tract_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_total_below_pov_vars_22)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_below_pov_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_below_pov_names_22)%>%
  select(Location, Variable, Estimate, MOE)

tract_individual_poverty_below_total_21 <- uethda_tract_individual_poverty_2021 %>%
  filter(variable %in% individual_pov_total_below_pov_vars_21)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(NAME, estimate, moe, individual_pov_total_below_pov_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_total_below_pov_names_22)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_individual_poverty_percent_22 <- uethda_tract_individual_poverty_2022 %>%
  filter(variable %in% individual_pov_percent_vars_22)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(NAME, estimate, moe, individual_pov_percent_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_percent_names_22)%>%
  select(Location, Variable, Estimate, MOE)

tract_individual_poverty_percent_21 <- uethda_tract_individual_poverty_2021 %>%
  filter(variable %in% individual_pov_percent_vars_21)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(NAME, estimate, moe, individual_pov_percent_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =individual_pov_percent_names_22)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_individual_poverty_total <- left_join(tract_individual_poverty_total_22, tract_individual_poverty_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_individual_poverty_below_total <- left_join(tract_individual_poverty_below_total_22, tract_individual_poverty_below_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_individual_poverty_percent <- left_join(tract_individual_poverty_percent_22, tract_individual_poverty_percent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#schools
schools_individual_poverty_total_22 <- uethda_schools_individual_poverty_2022 %>%
  filter(Variable %in% individual_pov_total_vars_22)%>%
  cbind(individual_pov_total_names_22)%>%
  select(Location, Estimate, MOE, individual_pov_total_names_22)%>%
  rename("Variable" =individual_pov_total_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


schools_individual_poverty_total_21 <- uethda_schools_individual_poverty_2021 %>% 
  filter(Variable %in% individual_pov_total_vars_21)%>%
  cbind(individual_pov_total_names_22)%>%
  select(Location, Estimate, MOE, individual_pov_total_names_22)%>%
  rename("Variable" =individual_pov_total_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_individual_poverty_below_total_22 <- uethda_schools_individual_poverty_2022 %>%
  filter(Variable %in% individual_pov_total_below_pov_vars_22)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(Location, Estimate, MOE, individual_pov_total_below_pov_names_22)%>%
  rename("Variable" =individual_pov_total_below_pov_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_individual_poverty_below_total_21 <- uethda_schools_individual_poverty_2021 %>%
  filter(Variable %in% individual_pov_total_below_pov_vars_21)%>%
  cbind(individual_pov_total_below_pov_names_22)%>%
  select(Location, Estimate, MOE,individual_pov_total_below_pov_names_22)%>%
  rename("Variable" =individual_pov_total_below_pov_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_individual_poverty_percent_22 <- uethda_schools_individual_poverty_2022 %>%
  filter(Variable %in% individual_pov_percent_vars_22)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(Location, Estimate, MOE,individual_pov_percent_names_22)%>%
  rename("Variable" =individual_pov_percent_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_individual_poverty_percent_21 <- uethda_schools_individual_poverty_2021 %>%
  filter(Variable %in% individual_pov_percent_vars_21)%>%
  cbind(individual_pov_percent_names_22)%>%
  select(Location, Estimate, MOE,individual_pov_percent_names_22)%>%
  rename("Variable" =individual_pov_percent_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_individual_poverty_total <- left_join(schools_individual_poverty_total_22, schools_individual_poverty_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_individual_poverty_below_total <- left_join(schools_individual_poverty_below_total_22, schools_individual_poverty_below_total_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_individual_poverty_percent <- left_join(schools_individual_poverty_percent_22, schools_individual_poverty_percent_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#### 65 ####

county_65_total <- county_individual_poverty_total %>%
  filter(str_detect(Variable, "65"))

county_65_below_pov_total <- county_individual_poverty_below_total %>%
  filter(str_detect(Variable, "65"))

county_65_below_pov_percent <- county_individual_poverty_percent%>%
  filter(str_detect(Variable, "65"))

county_65_poverty <- rbind(county_65_total, county_65_below_pov_total, county_65_below_pov_percent)%>%
  st_drop_geometry()

county_5_below_pov_total <- county_individual_poverty_below_total %>%
  filter(str_detect(Variable, "under 5"))

county_5_below_pov_percent <- county_individual_poverty_percent%>%
  filter(str_detect(Variable, "under 5"))

county_5_pov <- rbind(county_5_below_pov_percent, county_5_below_pov_total) %>%st_drop_geometry()

county_5_pov

#### poverty ####

county_individual_poverty_total 

county_individual_poverty_below_total 

county_individual_poverty_percent

#### pop pov status ####

table_function(county_individual_poverty_total %>%
  filter(Variable == "Population for whom Poverty Status is Determined") %>%
  mutate(`Percent Difference` = round(100*(`2022 Estimate` - `2021 Estimate`)/ `2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(Location, Variable, `2022 Estimate`, `2021 Estimate`, `Percent Difference`, `Significant`)%>%
  st_drop_geometry(), `Population for whom Poverty Status is Determined Change from 2022 to 2021`)


# next is taken from dp03

dp03_poverty_vars <- c("Percent of All People below Poverty Level","Percent of All People below Poverty Level Under 18", "Percent of All People below Poverty Level 18-64",
                       "Percent of All People below Poverty Level 65+ Years")

table_function(county_all_people_below_pov %>%
                 filter(Variable %in% dp03_poverty_vars) %>%
                 mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 select(Location, Variable, `2022 Estimate`, `Percent Difference`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate", "Percent Difference"), names_sep = " "), `2022 Percentage of All People in Poverty and Difference from 2021`)


county_all_people_below_pov


county_all_people_below_pov %>%
  filter(Variable %in% dp03_poverty_vars) %>%
  mutate(`Percent Difference` = round(`2022 Estimate` - `2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = dp03_poverty_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Differenece in Percentage of People in Poverty from 2021 to 2022")

# total in income poverty levels 

tail(county_individual_poverty_total, 10) 

pov_levels_names <- c("Pop. Pov. Status below 50% of Poverty Level",
                      "Pop. Pov. Status below 125% of Poverty Level",
                      "Pop. Pov. Status below 150% of Poverty Level",
                      "Pop. Pov. Status below 185% of Poverty Level",
                      "Pop. Pov. Status below 200% of Poverty Level",
                      "Pop. Pov. Status below 300% of Poverty Level",
                      "Pop. Pov. Status below 400% of Poverty Level",
                      "Pop. Pov. Status below 500% of Poverty Level",
                      "Pop. Pov. Status Mean Income Deficit")

county_individual_poverty_total %>%
  filter(Variable %in% pov_levels_names)%>%
  mutate(Variable = factor(Variable, levels = pov_levels_names))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
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
  ggtitle("Percent Change of Total People in Income Ranges relative to Poverty Line from 2021 to 2022")

table_function(county_individual_poverty_total %>%
                 filter(Variable %in% pov_levels_names)%>%
                 mutate(Variable = factor(Variable, levels = pov_levels_names))%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Total Individuals at Income Levels relative to Poverty Lines`)

county_individual_poverty_total %>%
  filter(Variable %in% pov_levels_names)%>%
  filter(Variable == "Pop. Pov. Status below 50% of Poverty Level")%>%
  summarise(est2022 = sum(`2022 Estimate`), est2021 = sum(`2021 Estimate`),
            moe_2022 = moe_sum(`2022 MOE`, `2022 Estimate`),
            moe_2021 = moe_sum(`2021 MOE`, `2021 Estimate`))%>%
  mutate(Significant = significance(est2022, est2021, moe_2022, moe_2021))%>%
  mutate(`Percent Change` = round(100*((`est2022` - `est2021`)/`est2021`),2))

deep_pov <- county_individual_poverty_total %>%
  filter(Variable %in% pov_levels_names)%>%
  filter(Variable == "Pop. Pov. Status below 50% of Poverty Level")%>%
  st_drop_geometry() %>%
  select(Location,`2022 Estimate`, `2021 Estimate`)%>%
  rename("2022 Deep Poverty" = "2022 Estimate",
         "2021 Deep Poverty" = "2021 Estimate")



total_pop_pov_det <- county_individual_poverty_total %>%
  filter(Variable == "Population for whom Poverty Status is Determined")%>%
  st_drop_geometry() %>%
  select(Location, `2022 Estimate`, `2021 Estimate`) %>%
  rename("2022 Pop. Pov. Det." = "2022 Estimate",
         "2021 Pop. Pov. Det." = "2021 Estimate")

joined_deep_pov <- left_join(deep_pov,total_pop_pov_det, by = "Location")

deep_poverty_percentage <- joined_deep_pov %>%
  mutate(`2022 Deep Poverty %` = round(100*`2022 Deep Poverty` / `2022 Pop. Pov. Det.`,2))%>%
  mutate(`2021 Deep Poverty %` = round(100*`2021 Deep Poverty` / `2021 Pop. Pov. Det.`,2))%>%
  select(Location, `2022 Deep Poverty`, `2022 Deep Poverty %`,
         `2021 Deep Poverty`, `2021 Deep Poverty %`)

table_function(deep_poverty_percentage, `2022 and 2021 Total and Percentage of Measured Population in Deep Poverty`)

# total people below in age groups 

ind_pov_below <- county_individual_poverty_below_total %>%
  filter(str_detect(Variable, "below", negate = TRUE))%>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

ind_pov_below_names <- ind_pov_below$Variable

ind_pov_below_names

county_ind_pov_below_total_tested <- county_individual_poverty_below_total %>%
  filter(Variable %in% ind_pov_below_names)%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry()

county_ind_pov_below_total_tested

county_ind_pov_names_ages <- c("Population for whom Poverty Status is Determined in Poverty", 
                               "Pop. Pov. Status under 5 in Poverty",
                               "Pop. Pov. Status under 18 in Poverty",
                               "Pop. Pov. Status 5-17 in Poverty",
                               "Pop. Pov. Status 18-64 in Poverty",
                               "Pop. Pov. Status 18-34 in Poverty",
                               "Pop. Pov. Status 35-64 in Poverty",
                               "Pop. Pov. Status 60+ in Poverty",
                               "Pop. Pov. Status 65+ in Poverty"
)

county_ind_pov_below_total_tested %>%
  filter(Variable %in% county_ind_pov_names_ages)%>%
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = county_ind_pov_names_ages))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
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
  ggtitle("Percent Change of Total People in Age Groups in Poverty from 2021 to 2022")

table_function(county_ind_pov_below_total_tested %>%
                 filter(Variable %in% county_ind_pov_names_ages)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate"), names_sep = " "), `2022 Total People in Poverty`)


#age group percentages 
county_ind_pov__perc_names_ages <- c("Population for whom Poverty Status is Determined in Poverty Percent", 
                                     "Pop. Pov. Status under 5 in Poverty Percent",
                                     "Pop. Pov. Status under 18 in Poverty Percent",
                                     "Pop. Pov. Status 5-17 in Poverty Percent",
                                     "Pop. Pov. Status 18-64 in Poverty Percent",
                                     "Pop. Pov. Status 18-34 in Poverty Percent",
                                     "Pop. Pov. Status 35-64 in Poverty Percent",
                                     "Pop. Pov. Status 60+ in Poverty Percent",
                                     "Pop. Pov. Status 65+ in Poverty Percent"
)

county_ind_pov_perc_tested <- county_individual_poverty_percent %>%
  filter(Variable %in% county_ind_pov__perc_names_ages)%>%
  mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

county_ind_pov_perc_tested %>%  
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = county_ind_pov__perc_names_ages))%>%
  mutate(`Percent Difference` = round(`Percent Difference`,2))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference of Percentage in Poverty in Age Groups from 2021 to 2022")


table_function(county_ind_pov_perc_tested %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = c("2022 Estimate"), names_sep = " "), `2022 Percentage of People in Poverty in Age Groups`)


# total people below races 

county_ind_pov_below_total_tested 

ind_pov_race_gender <- c("Pop. Pov. Status Male in Poverty",
                         "Pop. Pov. Status Female in Poverty",
                         "Pop. Pov. Status White in Poverty",
                         "Pop. Pov. Status Black in Poverty",
                         "Pop. Pov. Status Native American in Poverty",
                         "Pop. Pov. Status Asian in Poverty",
                         "Pop. Pov. Status Pacific Islander in Poverty",
                         "Pop. Pov. Status Some Other Race in Poverty",
                         "Pop. Pov. Status Two or More Races in Poverty",
                         "Pop. Pov. Status Hispanic in Poverty",
                         "Pop. Pov. Status Non-Hispanic in Poverty")

county_ind_pov_below_total_tested %>%
  filter(Variable %in% ind_pov_race_gender)%>%
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_race_gender))%>%
  filter(`Percent Change` != Inf)%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
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
  ggtitle("Percent Change in Race, Ethnicity and Gender in Poverty from 2021 to 2022")

table_function(county_ind_pov_below_total_tested %>%
                 filter(Variable %in% ind_pov_race_gender)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate"), names_sep = " "), `2022 Total People by Race, Ethnicity, and Gender in Poverty`)

#percent 
ind_pov_perc_race_gender <- c("Pop. Pov. Status Male in Poverty Percent",
                              "Pop. Pov. Status Female in Poverty Percent",
                              "Pop. Pov. Status White in Poverty Percent",
                              "Pop. Pov. Status Black in Poverty Percent",
                              "Pop. Pov. Status Native American in Poverty Percent",
                              "Pop. Pov. Status Asian in Poverty Percent",
                              "Pop. Pov. Status Pacific Islander in Poverty Percent",
                              "Pop. Pov. Status Some Other Race in Poverty Percent",
                              "Pop. Pov. Status Two or More Races in Poverty Percent",
                              "Pop. Pov. Status Hispanic in Poverty Percent",
                              "Pop. Pov. Status Non-Hispanic in Poverty Percent")

county_ind_pov_perc_races_tested <- county_individual_poverty_percent %>%
  filter(Variable %in% ind_pov_perc_race_gender)%>%
  mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

county_ind_pov_perc_races_tested

county_ind_pov_perc_races_tested %>%  
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_perc_race_gender))%>%
  mutate(`Percent Difference` = round(`Percent Difference`,2))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference of Percentage in Poverty by Race, Gender, and Ethnicity from 2021 to 2022")


table_function(county_ind_pov_perc_races_tested %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = c("2022 Estimate"), names_sep = " "), `2022 Percentage of People in Poverty by Race, Gender, and Ethnicity`)


# education and poverty 

ind_pov_edu_names <- c("Pop. Pov. Status 25+ in Poverty",
                       "Pop. Pov. Status Less than HS Degree in Poverty",
                       "Pop. Pov. Status HS Degree in Poverty",
                       "Pop. Pov. Status Some College or Associates in Poverty",
                       "Pop. Pov. Status Bachelor's or Higher in Poverty"
)

table_function(county_ind_pov_below_total_tested %>%
                 filter(Variable %in% ind_pov_edu_names)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate"), names_sep = " "), `2022 Total People by Education Level in Poverty`)


county_ind_pov_below_total_tested %>%
  filter(Variable %in% ind_pov_edu_names)%>%
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_edu_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
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
  ggtitle("Percent Change in 25+ Years in Poverty by Education Level from 2021 to 2022")

# percent 

ind_pov_perc_edu_names <- c("Pop. Pov. Status 25+ in Poverty Percent",
                            "Pop. Pov. Status Less than HS Degree in Poverty Percent",
                            "Pop. Pov. Status HS Degree in Poverty Percent",
                            "Pop. Pov. Status Some College or Associates in Poverty Percent",
                            "Pop. Pov. Status Bachelor's or Higher in Poverty Percent"
)

county_ind_pov_perc_edu_tested <- county_individual_poverty_percent %>%
  filter(Variable %in% ind_pov_perc_edu_names)%>%
  mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

county_ind_pov_perc_edu_tested

county_ind_pov_perc_edu_tested %>%  
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_perc_edu_names))%>%
  mutate(`Percent Difference` = round(`Percent Difference`,2))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference of Percentage in Poverty by Educational Attainment from 2021 to 2022")


table_function(county_ind_pov_perc_edu_tested %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = c("2022 Estimate"), names_sep = " "), `2022 Percentage of People in Poverty by Educational Attainment`)



# employment and poverty 

county_ind_pov_below_total_tested

ind_pov_employment_names <- c("Pop. Pov. Status 21+ in Poverty",
                              "Pop. Pov. Status 21+ in Labor Force in Poverty",
                              "Pop. Pov. Status Employed in Poverty",
                              "Pop. Pov. Status Employed Male in Poverty",
                              "Pop. Pov. Status Employed Female in Poverty",
                              "Pop. Pov. Status Unemployed in Poverty",
                              "Pop. Pov. Status Unemployed Male in Poverty",
                              "Pop. Pov. Status Unemployed Female in Poverty",
                              "Pop. Pov. Status Worked Full Time Year Round in Poverty",
                              "Pop. Pov. Status Worked Part Time or Part Year in Poverty",
                              "Pop. Pov. Status Did Not Work in Poverty")

table_function(county_ind_pov_below_total_tested %>%
                 filter(Variable %in% ind_pov_employment_names)%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate"), names_sep = " "), `2022 Total People by Employment Status in Poverty`)

county_ind_pov_below_total_tested %>%
  filter(Variable %in% ind_pov_employment_names)%>%
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_employment_names))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
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
  ggtitle("Percent Change in 21+ Years in Poverty by Employment Status from 2021 to 2022")

# percentage 

ind_pov_perc_emp_names <- c("Pop. Pov. Status 21+ in Poverty Percent",
                            "Pop. Pov. Status 21+ in Labor Force in Poverty Percent",
                            "Pop. Pov. Status Employed in Poverty Percent",
                            "Pop. Pov. Status Employed Male in Poverty Percent",
                            "Pop. Pov. Status Employed Female in Poverty Percent",
                            "Pop. Pov. Status Unemployed in Poverty Percent",
                            "Pop. Pov. Status Unemployed Male in Poverty Percent",
                            "Pop. Pov. Status Unemployed Female in Poverty Percent",
                            "Pop. Pov. Status Worked Full Time Year Round in Poverty Percent",
                            "Pop. Pov. Status Worked Part Time or Part Year in Poverty Percent",
                            "Pop. Pov. Status Did Not Work in Poverty Percent")

county_ind_pov_perc_emp_tested <- county_individual_poverty_percent %>%
  filter(Variable %in% ind_pov_perc_emp_names)%>%
  mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

county_ind_pov_perc_emp_tested

county_ind_pov_perc_emp_tested %>%  
  mutate(Location = factor(Location, levels = county_location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = ind_pov_perc_emp_names))%>%
  mutate(`Percent Difference` = round(`Percent Difference`,2))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference of Percentage in Poverty by Employment Status from 2021 to 2022")


table_function(county_ind_pov_perc_emp_tested %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = c("2022 Estimate"), names_sep = " "), `2022 Percentage of People in Poverty by Employment Status`)

