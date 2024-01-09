#### S1703 POVERTY CHARACTERISTICS ####

uethda_county_characteristics_poverty_2022

uethda_county_characteristics_poverty_2021

uethda_tract_characteristics_poverty_2022

uethda_tract_characteristics_poverty_2021

uethda_schools_characteristics_poverty_2022

uethda_schools_characteristics_poverty_2021

### varaibles match, pull out c01 = total, c02 = < 50%, c03 = <100%, c04 = <125%

poverty_char_total_names <- c("Total Population for whom Pov. Status is Determined",
                              "Total Male Population for whom Pov. Status is Determined",
                              "Total Female Population for whom Pov. Status is Determined",
                              "Total under 18 Population for whom Pov. Status is Determined",
                              "Total under 18 Population children of HH for whom Pov. Status is Determined",
                              "Total 18-64 Population for whom Pov. Status is Determined",
                              "Total 65+ Populatin for whom Pov. Status is Determined",
                              "Total Population for whom Pov. Status is Determined One Race",
                              "Total Population for whom Pov. Status is Determined White",
                              "Total Population for whom Pov. Status is Determined Black",
                              "Total Population for whom Pov. Status is Determined Native American",
                              "Total Population for whom Pov. Status is Determined Asian",
                              "Total Population for whom Pov. Status is Determined Pacific Islander",
                              "Total Population for whom Pov. Status is Determined Some Other Race",
                              "Total Population for whom Pov. Status is Determined Two or More Races",
                              "Total Population for whom Pov. Status is Determined Hispanic",
                              "Total Population for whom Pov. Status is Determined Non-Hispanic",
                              "Total Population for whom Pov. Status is Determined in Family Households",
                              "Total Population for whom Pov. Status is Determined in Married-Couple Familes",
                              "Total Population for whom Pov. Status is Determined Single Female HH",
                              "Total Population for whom Pov. Status is Determined in Other Living Arrangements",
                              "Total Population for whom Pov. Status is Determined 25+ Years",
                              "Total Population for whom Pov. Status is Determined Less than HS Degree",
                              "Total Population for whom Pov. Status is Determined HS Degree",
                              "Total Population for whom Pov. Status is Determined Some College or Associates",
                              "Total Population for whom Pov. Status is Determined Bachelors Degree or Higher",
                              "Total Population for whom Pov. Status is Determined Native",
                              "Total Population for whom Pov. Status is Determined Foreign Born",
                              "Total Population for whom Pov. Status is Determined Foreign Born Naturalized",
                              "Total Population for whom Pov. Status is Determined with Disability",
                              "Total Population for whom Pov. Status is Determined No Disability",
                              "Total Population for whom Pov. Status is Determined 16-64 Years",
                              "Total Population for whom Pov. Status is Determined Worked Full Time Year Round",
                              "Total Population for whom Pov. Status is Determined Worked less than Full Time Year Round",
                              "Total Population for whom Pov. Status is Determined Did not Work")

poverty_char_50_names <- c("Percent below 50% PL Population for whom Pov. Status is Determined",
                           "Percent below 50% PL Male Population for whom Pov. Status is Determined",
                           "Percent below 50% PL Female Population for whom Pov. Status is Determined",
                           "Percent below 50% PL under 18 Population for whom Pov. Status is Determined",
                           "Percent below 50% PL under 18 Population children of HH for whom Pov. Status is Determined",
                           "Percent below 50% PL 18-64 Population for whom Pov. Status is Determined",
                           "Percent below 50% PL 65+ Populatin for whom Pov. Status is Determined",
                           "Percent below 50% PL Population for whom Pov. Status is Determined One Race",
                           "Percent below 50% PL Population for whom Pov. Status is Determined White",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Black",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Native American",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Asian",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Pacific Islander",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Some Other Race",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Two or More Races",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Hispanic",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Non-Hispanic",
                           "Percent below 50% PL Population for whom Pov. Status is Determined in Family Households",
                           "Percent below 50% PL Population for whom Pov. Status is Determined in Married-Couple Familes",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Single Female HH",
                           "Percent below 50% PL Population for whom Pov. Status is Determined in Other Living Arrangements",
                           "Percent below 50% PL Population for whom Pov. Status is Determined 25+ Years",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Less than HS Degree",
                           "Percent below 50% PL Population for whom Pov. Status is Determined HS Degree",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Some College or Associates",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Bachelors Degree or Higher",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Native",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Foreign Born",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Foreign Born Naturalized",
                           "Percent below 50% PL Population for whom Pov. Status is Determined with Disability",
                           "Percent below 50% PL Population for whom Pov. Status is Determined No Disability",
                           "Percent below 50% PL Population for whom Pov. Status is Determined 16-64 Years",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Worked Full Time Year Round",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Worked less than Full Time Year Round",
                           "Percent below 50% PL Population for whom Pov. Status is Determined Did not Work")

poverty_char_100_names <- c("Percent below 100% PL Population for whom Pov. Status is Determined",
                            "Percent below 100% PL Male Population for whom Pov. Status is Determined",
                            "Percent below 100% PL Female Population for whom Pov. Status is Determined",
                            "Percent below 100% PL under 18 Population for whom Pov. Status is Determined",
                            "Percent below 100% PL under 18 Population children of HH for whom Pov. Status is Determined",
                            "Percent below 100% PL 18-64 Population for whom Pov. Status is Determined",
                            "Percent below 100% PL 65+ Populatin for whom Pov. Status is Determined",
                            "Percent below 100% PL Population for whom Pov. Status is Determined One Race",
                            "Percent below 100% PL Population for whom Pov. Status is Determined White",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Black",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Native American",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Asian",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Pacific Islander",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Some Other Race",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Two or More Races",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Hispanic",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Non-Hispanic",
                            "Percent below 100% PL Population for whom Pov. Status is Determined in Family Households",
                            "Percent below 100% PL Population for whom Pov. Status is Determined in Married-Couple Familes",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Single Female HH",
                            "Percent below 100% PL Population for whom Pov. Status is Determined in Other Living Arrangements",
                            "Percent below 100% PL Population for whom Pov. Status is Determined 25+ Years",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Less than HS Degree",
                            "Percent below 100% PL Population for whom Pov. Status is Determined HS Degree",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Some College or Associates",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Bachelors Degree or Higher",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Native",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Foreign Born",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Foreign Born Naturalized",
                            "Percent below 100% PL Population for whom Pov. Status is Determined with Disability",
                            "Percent below 100% PL Population for whom Pov. Status is Determined No Disability",
                            "Percent below 100% PL Population for whom Pov. Status is Determined 16-64 Years",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Worked Full Time Year Round",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Worked less than Full Time Year Round",
                            "Percent below 100% PL Population for whom Pov. Status is Determined Did not Work")

poverty_char_125_names <- c("Percent below 125% PL Population for whom Pov. Status is Determined",
                            "Percent below 125% PL Male Population for whom Pov. Status is Determined",
                            "Percent below 125% PL Female Population for whom Pov. Status is Determined",
                            "Percent below 125% PL under 18 Population for whom Pov. Status is Determined",
                            "Percent below 125% PL under 18 Population children of HH for whom Pov. Status is Determined",
                            "Percent below 125% PL 18-64 Population for whom Pov. Status is Determined",
                            "Percent below 125% PL 65+ Populatin for whom Pov. Status is Determined",
                            "Percent below 125% PL Population for whom Pov. Status is Determined One Race",
                            "Percent below 125% PL Population for whom Pov. Status is Determined White",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Black",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Native American",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Asian",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Pacific Islander",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Some Other Race",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Two or More Races",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Hispanic",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Non-Hispanic",
                            "Percent below 125% PL Population for whom Pov. Status is Determined in Family Households",
                            "Percent below 125% PL Population for whom Pov. Status is Determined in Married-Couple Familes",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Single Female HH",
                            "Percent below 125% PL Population for whom Pov. Status is Determined in Other Living Arrangements",
                            "Percent below 125% PL Population for whom Pov. Status is Determined 25+ Years",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Less than HS Degree",
                            "Percent below 125% PL Population for whom Pov. Status is Determined HS Degree",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Some College or Associates",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Bachelors Degree or Higher",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Native",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Foreign Born",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Foreign Born Naturalized",
                            "Percent below 125% PL Population for whom Pov. Status is Determined with Disability",
                            "Percent below 125% PL Population for whom Pov. Status is Determined No Disability",
                            "Percent below 125% PL Population for whom Pov. Status is Determined 16-64 Years",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Worked Full Time Year Round",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Worked less than Full Time Year Round",
                            "Percent below 125% PL Population for whom Pov. Status is Determined Did not Work")

# county
county_pov_char_22 <- uethda_county_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(NAME, estimate, moe, poverty_char_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_pov_char_21 <- uethda_county_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(NAME, estimate, moe, poverty_char_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_pov_char <- left_join(county_pov_char_22, county_pov_char_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_pov_char_50_22 <- uethda_county_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(NAME, estimate, moe, poverty_char_50_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_50_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_pov_char_50_21 <- uethda_county_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(NAME, estimate, moe, poverty_char_50_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_50_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_pov_char_50 <- left_join(county_pov_char_50_22, county_pov_char_50_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_pov_char_100_22 <- uethda_county_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(NAME, estimate, moe, poverty_char_100_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_100_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_pov_char_100_21 <- uethda_county_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(NAME, estimate, moe, poverty_char_100_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_100_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_pov_char_100 <- left_join(county_pov_char_100_22, county_pov_char_100_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_pov_char_125_22 <- uethda_county_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(NAME, estimate, moe, poverty_char_125_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_125_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_pov_char_125_21 <- uethda_county_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(NAME, estimate, moe, poverty_char_125_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_125_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_pov_char_125 <- left_join(county_pov_char_125_22, county_pov_char_125_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# tract
tract_pov_char_22 <- uethda_tract_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(NAME, estimate, moe, poverty_char_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_total_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_pov_char_21 <- uethda_tract_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(NAME, estimate, moe, poverty_char_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_total_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_pov_char <- left_join(tract_pov_char_22, tract_pov_char_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_pov_char_50_22 <- uethda_tract_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(NAME, estimate, moe, poverty_char_50_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_50_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_pov_char_50_21 <- uethda_tract_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(NAME, estimate, moe, poverty_char_50_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_50_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_pov_char_50 <- left_join(tract_pov_char_50_22, tract_pov_char_50_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_pov_char_100_22 <- uethda_tract_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(NAME, estimate, moe, poverty_char_100_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_100_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_pov_char_100_21 <- uethda_tract_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(NAME, estimate, moe, poverty_char_100_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_100_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_pov_char_100 <- left_join(tract_pov_char_100_22, tract_pov_char_100_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_pov_char_125_22 <- uethda_tract_characteristics_poverty_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(NAME, estimate, moe, poverty_char_125_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_125_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_pov_char_125_21 <- uethda_tract_characteristics_poverty_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(NAME, estimate, moe, poverty_char_125_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =poverty_char_125_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_pov_char_125 <- left_join(tract_pov_char_125_22, tract_pov_char_125_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# schools
schools_pov_char_22 <- uethda_schools_characteristics_poverty_2022 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(Location, Estimate, MOE, poverty_char_total_names)%>%
  rename("Variable" =poverty_char_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_pov_char_21 <- uethda_schools_characteristics_poverty_2021 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(poverty_char_total_names)%>%
  select(Location, Estimate, MOE, poverty_char_total_names)%>%
  rename("Variable" =poverty_char_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_pov_char <- left_join(schools_pov_char_22, schools_pov_char_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_pov_char_50_22 <- uethda_schools_characteristics_poverty_2022 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(Location, Estimate, MOE, poverty_char_50_names)%>%
  rename("Variable" =poverty_char_50_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_pov_char_50_21 <- uethda_schools_characteristics_poverty_2021 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(poverty_char_50_names)%>%
  select(Location, Estimate, MOE, poverty_char_50_names)%>%
  rename("Variable" =poverty_char_50_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_pov_char_50 <- left_join(schools_pov_char_50_22, schools_pov_char_50_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_pov_char_100_22 <- uethda_schools_characteristics_poverty_2022 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(Location, Estimate, MOE, poverty_char_100_names)%>%
  rename("Variable" =poverty_char_100_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_pov_char_100_21 <- uethda_schools_characteristics_poverty_2021 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(poverty_char_100_names)%>%
  select(Location, Estimate, MOE, poverty_char_100_names)%>%
  rename("Variable" =poverty_char_100_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_pov_char_100 <- left_join(schools_pov_char_100_22, schools_pov_char_100_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_pov_char_125_22 <- uethda_schools_characteristics_poverty_2022 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(Location, Estimate, MOE, poverty_char_125_names)%>%
  rename("Variable" =poverty_char_125_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_pov_char_125_21 <- uethda_schools_characteristics_poverty_2021 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(poverty_char_125_names)%>%
  select(Location, Estimate, MOE, poverty_char_125_names)%>%
  rename("Variable" =poverty_char_125_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_pov_char_125 <- left_join(schools_pov_char_125_22, schools_pov_char_125_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


schools_pov_char_125

county_pov_char_100 
