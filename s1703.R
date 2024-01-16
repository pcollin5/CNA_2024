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

#### deep poverty characteristics ####

schools_pov_char_50

county_pov_char_50%>%
  filter(Location == "Unicoi County")

poverty_char_50_names_1 <- poverty_char_50_names[1:7]

poverty_char_50_names_2 <- poverty_char_50_names[8:17]

poverty_char_50_names_3 <- poverty_char_50_names[18:26]

poverty_char_50_names_4 <- poverty_char_50_names[27:35]

county_pov_char_50 %>%
  filter(Variable %in% poverty_char_50_names_1)%>%
  mutate(Variable = factor(Variable, levels = poverty_char_50_names_1))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
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
  ggtitle("Percent Difference in Deep Poverty by Demographics from 2021 to 2022")

table_function(county_pov_char_50 %>%
                 filter(Variable %in% poverty_char_50_names_1)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Deep Poverty Demographics`)


county_pov_char_50 %>%
  filter(Variable %in% poverty_char_50_names_2)%>%
  mutate(Variable = factor(Variable, levels = poverty_char_50_names_2))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
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
  ggtitle("Percent Difference in Deep Poverty by Race/Ethnicity from 2021 to 2022")

table_function(county_pov_char_50 %>%
                 filter(Variable %in% poverty_char_50_names_2)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Deep Poverty Race/Ethnicity`)

county_pov_char_50 %>%
  filter(Variable %in% poverty_char_50_names_3)%>%
  mutate(Variable = factor(Variable, levels = poverty_char_50_names_3))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
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
  ggtitle("Percent Difference in Deep Poverty by Education and Household Type from 2021 to 2022")

table_function(county_pov_char_50 %>%
                 filter(Variable %in% poverty_char_50_names_3)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Deep Poverty Education and Household Type`)


county_pov_char_50 %>%
  filter(Variable %in% poverty_char_50_names_4)%>%
  mutate(Variable = factor(Variable, levels = poverty_char_50_names_4))%>%
  mutate(`Percent Difference` = round(((`2022 Estimate` - `2021 Estimate`)),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_drop_geometry() %>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
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
  ggtitle("Percent Difference in Deep Poverty by Other Characteristics from 2021 to 2022")

table_function(county_pov_char_50 %>%
                 filter(Variable %in% poverty_char_50_names_4)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Deep Poverty Other Characteristics`)

