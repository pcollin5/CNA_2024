#### S2303 WORK STATUS ####

uethda_county_work_status_2022

uethda_county_work_status_2021

uethda_tract_work_status_2021

uethda_tract_work_status_2022

uethda_schools_work_status_2022

uethda_schools_work_status_2021

# work status variables # can pull these out C01 is all total, C02 is percent, 
# C03 is male total #C04 is male percent #C05 is female total #C06 is female percent

work_status_names_total <- c("Total Population 16-64", "Total Population worked 50-52 Weeks",
                             "Total Population worked 48-49 Weeks", "Total Population worked 40-47 Weeks",
                             "Total Population worked 27-39 Weeks","Total Population worked 14-26 Weeks",
                             "Total Population worked 1-13 Weeks", "Total Population Did Not Work",
                             "Total Population Usually Worked 35+ Hours/Week","Total Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                             "Total Population Usually Worked 35+ Hours/Week 48-49 Weeks","Total Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                             "Total Population Usually Worked 35+ Hours/Week 27-39 Weeks","Total Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                             "Total Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Total Population Usually Worked 15-34 Hours/Week",
                             "Total Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Total Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                             "Total Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Total Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                             "Total Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Total Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                             "Total Population Usually Worked 1-14 Hours/Week", "Total Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                             "Total Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Total Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                             "Total Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Total Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                             "Total Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Total Population Usually did not work", "Total Population Mean Usual Hours Worked",
                             "Total Population Median Age of Workers 16-64", "Total Population Worked full-time, year-round")

work_status_names_percent <- c("Percent Population 16-64", "Percent Population worked 50-52 Weeks",
                               "Percent Population worked 48-49 Weeks", "Percent Population worked 40-47 Weeks",
                               "Percent Population worked 27-39 Weeks","Percent Population worked 14-26 Weeks",
                               "Percent Population worked 1-13 Weeks", "Percent Population Did Not Work",
                               "Percent Population Usually Worked 35+ Hours/Week","Percent Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                               "Percent Population Usually Worked 35+ Hours/Week 48-49 Weeks","Percent Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                               "Percent Population Usually Worked 35+ Hours/Week 27-39 Weeks","Percent Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                               "Percent Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Percent Population Usually Worked 15-34 Hours/Week",
                               "Percent Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Percent Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                               "Percent Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Percent Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                               "Percent Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Percent Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                               "Percent Population Usually Worked 1-14 Hours/Week", "Percent Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                               "Percent Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Percent Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                               "Percent Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Percent Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                               "Percent Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Percent Population Usually did not work", "Percent Population Mean Usual Hours Worked",
                               "Percent Population Median Age of Workers 16-64", "Percent Population Worked full-time, year-round")

work_status_names_total_male <- c("Total Male Population 16-64", "Total Male Population worked 50-52 Weeks",
                                  "Total Male Population worked 48-49 Weeks", "Total Male Population worked 40-47 Weeks",
                                  "Total Male Population worked 27-39 Weeks","Total Male Population worked 14-26 Weeks",
                                  "Total Male Population worked 1-13 Weeks", "Total Male Population Did Not Work",
                                  "Total Male Population Usually Worked 35+ Hours/Week","Total Male Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                  "Total Male Population Usually Worked 35+ Hours/Week 48-49 Weeks","Total Male Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                  "Total Male Population Usually Worked 35+ Hours/Week 27-39 Weeks","Total Male Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                                  "Total Male Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Total Male Population Usually Worked 15-34 Hours/Week",
                                  "Total Male Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Total Male Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                                  "Total Male Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Total Male Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                  "Total Male Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Total Male Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                                  "Total Male Population Usually Worked 1-14 Hours/Week", "Total Male Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                                  "Total Male Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Total Male Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                                  "Total Male Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Total Male Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                                  "Total Male Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Total Male Population Usually did not work", "Total Male Population Mean Usual Hours Worked",
                                  "Total Male Population Median Age of Workers 16-64", "Total Male Population Worked full-time, year-round")

work_status_names_percent_male <- c("Percent Male Population 16-64", "Percent Male Population worked 50-52 Weeks",
                                    "Percent Male Population worked 48-49 Weeks", "Percent Male Population worked 40-47 Weeks",
                                    "Percent Male Population worked 27-39 Weeks","Percent Male Population worked 14-26 Weeks",
                                    "Percent Male Population worked 1-13 Weeks", "Percent Male Population Did Not Work",
                                    "Percent Male Population Usually Worked 35+ Hours/Week","Percent Male Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                    "Percent Male Population Usually Worked 35+ Hours/Week 48-49 Weeks","Percent Male Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                    "Percent Male Population Usually Worked 35+ Hours/Week 27-39 Weeks","Percent Male Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                                    "Percent Male Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Percent Male Population Usually Worked 15-34 Hours/Week",
                                    "Percent Male Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Percent Male Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                                    "Percent Male Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Percent Male Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                    "Percent Male Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Percent Male Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                                    "Percent Male Population Usually Worked 1-14 Hours/Week", "Percent Male Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                                    "Percent Male Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Percent Male Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                                    "Percent Male Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Percent Male Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                                    "Percent Male Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Percent Male Population Usually did not work", "Percent Male Population Mean Usual Hours Worked",
                                    "Percent Male Population Median Age of Workers 16-64", "Percent Male Population Worked full-time, year-round")

work_status_names_total_female <- c("Total Female Population 16-64", "Total Female Population worked 50-52 Weeks",
                                    "Total Female Population worked 48-49 Weeks", "Total Female Population worked 40-47 Weeks",
                                    "Total Female Population worked 27-39 Weeks","Total Female Population worked 14-26 Weeks",
                                    "Total Female Population worked 1-13 Weeks", "Total Female Population Did Not Work",
                                    "Total Female Population Usually Worked 35+ Hours/Week","Total Female Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                    "Total Female Population Usually Worked 35+ Hours/Week 48-49 Weeks","Total Female Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                    "Total Female Population Usually Worked 35+ Hours/Week 27-39 Weeks","Total Female Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                                    "Total Female Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Total Female Population Usually Worked 15-34 Hours/Week",
                                    "Total Female Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Total Female Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                                    "Total Female Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Total Female Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                    "Total Female Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Total Female Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                                    "Total Female Population Usually Worked 1-14 Hours/Week", "Total Female Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                                    "Total Female Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Total Female Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                                    "Total Female Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Total Female Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                                    "Total Female Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Total Female Population Usually did not work", "Total Female Population Mean Usual Hours Worked",
                                    "Total Female Population Median Age of Workers 16-64", "Total Female Population Worked full-time, year-round")

work_status_names_percent_female <- c("Percent Female Population 16-64", "Percent Female Population worked 50-52 Weeks",
                                      "Percent Female Population worked 48-49 Weeks", "Percent Female Population worked 40-47 Weeks",
                                      "Percent Female Population worked 27-39 Weeks","Percent Female Population worked 14-26 Weeks",
                                      "Percent Female Population worked 1-13 Weeks", "Percent Female Population Did Not Work",
                                      "Percent Female Population Usually Worked 35+ Hours/Week","Percent Female Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                      "Percent Female Population Usually Worked 35+ Hours/Week 48-49 Weeks","Percent Female Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                      "Percent Female Population Usually Worked 35+ Hours/Week 27-39 Weeks","Percent Female Population Usually Worked 35+ Hours/Week 14-26 Weeks",
                                      "Percent Female Population Usually Worked 35+ Hours/Week 1-13 Weeks", "Percent Female Population Usually Worked 15-34 Hours/Week",
                                      "Percent Female Population Usually Worked 15-34 Hours/Week 50-52 Weeks","Percent Female Population Usually Worked 15-34 Hours/Week 48-49 Weeks",
                                      "Percent Female Population Usually Worked 15-34 Hours/Week 40-47 Weeks","Percent Female Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                      "Percent Female Population Usually Worked 15-34 Hours/Week 14-26 Weeks","Percent Female Population Usually Worked 15-34 Hours/Week 1-13 Weeks",
                                      "Percent Female Population Usually Worked 1-14 Hours/Week", "Percent Female Population Usually Worked 1-14 Hours/Week 50-52 Weeks",
                                      "Percent Female Population Usually Worked 1-14 Hours/Week 48-49 Weeks","Percent Female Population Usually Worked 1-14 Hours/Week 40-47 Weeks",
                                      "Percent Female Population Usually Worked 1-14 Hours/Week 27-39 Weeks","Percent Female Population Usually Worked 1-14 Hours/Week 14-26 Weeks",
                                      "Percent Female Population Usually Worked 1-14 Hours/Week 1-13 Weeks","Percent Female Population Usually did not work", "Percent Female Population Mean Usual Hours Worked",
                                      "Percent Female Population Median Age of Workers 16-64", "Percent Female Population Worked full-time, year-round")

#county 
county_total_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(NAME, estimate, moe, work_status_names_total)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_total_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(NAME, estimate, moe, work_status_names_total)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_total_pop_work_status <- left_join(county_total_pop_work_status_22, county_total_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_total_pop_work_status

county_percent_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(NAME, estimate, moe, work_status_names_percent)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_percent_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(NAME, estimate, moe, work_status_names_percent)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_percent_pop_work_status <- left_join(county_percent_pop_work_status_22, county_percent_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_percent_pop_work_status

county_total_male_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(NAME, estimate, moe, work_status_names_total_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_total_male_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(NAME, estimate, moe, work_status_names_total_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_total_male_pop_work_status <- left_join(county_total_male_pop_work_status_22, county_total_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_percent_male_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(NAME, estimate, moe, work_status_names_percent_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_percent_male_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(NAME, estimate, moe, work_status_names_percent_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_percent_male_pop_work_status <- left_join(county_percent_male_pop_work_status_22, county_percent_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_total_female_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(NAME, estimate, moe, work_status_names_total_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_total_female_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(NAME, estimate, moe, work_status_names_total_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_total_female_pop_work_status <- left_join(county_total_female_pop_work_status_22, county_total_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_percent_female_pop_work_status_22 <- uethda_county_work_status_2022 %>%
  filter(str_detect(variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(NAME, estimate, moe, work_status_names_percent_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_percent_female_pop_work_status_21 <- uethda_county_work_status_2021 %>%
  filter(str_detect(variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(NAME, estimate, moe, work_status_names_percent_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_percent_female_pop_work_status <- left_join(county_percent_female_pop_work_status_22, county_percent_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_percent_female_pop_work_status

#tract 
tract_total_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(NAME, estimate, moe, work_status_names_total)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total)%>%
  select(Location, Variable, Estimate, MOE)

tract_total_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(NAME, estimate, moe, work_status_names_total)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()



tract_percent_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(NAME, estimate, moe, work_status_names_percent)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent)%>%
  select(Location, Variable, Estimate, MOE)

tract_percent_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(NAME, estimate, moe, work_status_names_percent)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_total_male_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(NAME, estimate, moe, work_status_names_total_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_male)%>%
  select(Location, Variable, Estimate, MOE)

tract_total_male_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(NAME, estimate, moe, work_status_names_total_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_male)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_percent_male_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(NAME, estimate, moe, work_status_names_percent_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_male)%>%
  select(Location, Variable, Estimate, MOE)

tract_percent_male_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(NAME, estimate, moe, work_status_names_percent_male)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_male)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_total_female_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(NAME, estimate, moe, work_status_names_total_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_female)%>%
  select(Location, Variable, Estimate, MOE)

tract_total_female_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(NAME, estimate, moe, work_status_names_total_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_total_female)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_percent_female_pop_work_status_22 <- uethda_tract_work_status_2022 %>%
  filter(str_detect(variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(NAME, estimate, moe, work_status_names_percent_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_female)%>%
  select(Location, Variable, Estimate, MOE)

tract_percent_female_pop_work_status_21 <- uethda_tract_work_status_2021 %>%
  filter(str_detect(variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(NAME, estimate, moe, work_status_names_percent_female)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = work_status_names_percent_female)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_total_pop_work_status <- left_join(tract_total_pop_work_status_22, tract_total_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_percent_pop_work_status <- left_join(tract_percent_pop_work_status_22, tract_percent_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_total_male_pop_work_status <- left_join(tract_total_male_pop_work_status_22, tract_total_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_percent_male_pop_work_status <- left_join(tract_percent_male_pop_work_status_22, tract_percent_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_total_female_pop_work_status <- left_join(tract_total_female_pop_work_status_22, tract_total_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_percent_female_pop_work_status <- left_join(tract_percent_female_pop_work_status_22, tract_percent_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


#schools 
schools_total_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(Location, Estimate, MOE, work_status_names_total)%>%
  rename("Variable" = work_status_names_total)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_total_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(work_status_names_total) %>%
  select(Location, Estimate, MOE, work_status_names_total)%>%
  rename("Variable" = work_status_names_total)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_percent_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(Location, Estimate, MOE,work_status_names_percent)%>%
  rename("Variable" = work_status_names_percent)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_percent_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(work_status_names_percent) %>%
  select(Location, Estimate, MOE,work_status_names_percent)%>%
  rename("Variable" = work_status_names_percent)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_total_male_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(Location, Estimate, MOE,work_status_names_total_male)%>%
  rename("Variable" = work_status_names_total_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_total_male_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(work_status_names_total_male) %>%
  select(Location, Estimate, MOE, work_status_names_total_male)%>%
  rename("Variable" = work_status_names_total_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()


schools_percent_male_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(Location, Estimate, MOE,work_status_names_percent_male)%>%
  rename("Variable" = work_status_names_percent_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_percent_male_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(work_status_names_percent_male) %>%
  select(Location, Estimate, MOE,work_status_names_percent_male)%>%
  rename("Variable" = work_status_names_percent_male)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_total_female_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(Location, Estimate, MOE,work_status_names_total_female)%>%
  rename("Variable" = work_status_names_total_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_total_female_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C05"))%>%
  cbind(work_status_names_total_female) %>%
  select(Location, Estimate, MOE,work_status_names_total_female)%>%
  rename("Variable" = work_status_names_total_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_percent_female_pop_work_status_22 <- uethda_schools_work_status_2022 %>%
  filter(str_detect(Variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(Location, Estimate, MOE,work_status_names_percent_female)%>%
  rename("Variable" = work_status_names_percent_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_percent_female_pop_work_status_21 <- uethda_schools_work_status_2021 %>%
  filter(str_detect(Variable, "C06"))%>%
  cbind(work_status_names_percent_female) %>%
  select(Location, Estimate, MOE,work_status_names_percent_female)%>%
  rename("Variable" = work_status_names_percent_female)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_total_pop_work_status <- left_join(schools_total_pop_work_status_22, schools_total_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


schools_percent_pop_work_status <- left_join(schools_percent_pop_work_status_22, schools_percent_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


schools_total_male_pop_work_status <- left_join(schools_total_male_pop_work_status_22, schools_total_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


schools_percent_male_pop_work_status <- left_join(schools_percent_male_pop_work_status_22, schools_percent_male_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


schools_total_female_pop_work_status <- left_join(schools_total_female_pop_work_status_22, schools_total_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_percent_female_pop_work_status <- left_join(schools_percent_female_pop_work_status_22, schools_percent_female_pop_work_status_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_percent_female_pop_work_status

tract_percent_female_pop_work_status

##### county work status #####
# total
county_total_pop_work_status 

total_work_stats <- county_total_pop_work_status%>%
  select(Variable)%>%
  unique()

total_work_status_factor <- total_work_stats$Variable %>%
  unique()

total_work_status_factor

total_work_status_vars <- c("Total Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                            "Total Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                            "Total Population Usually Worked 35+ Hours/Week 27-39 Weeks",
                            "Total Population Usually Worked 15-34 Hours/Week 50-52 Weeks",
                            "Total Population Usually Worked 15-34 Hours/Week 40-47 Weeks",
                            "Total Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                            "Total Population Usually did not work",
                            "Total Population Mean Usual Hours Worked",
                            "Total Population Median Age of Workers 21-64",
                            "Total Population Worked full-time, year-round"
)


table_function(county_total_pop_work_status%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 filter(Variable %in% total_work_status_vars)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Work Status`)



county_total_pop_work_status%>%
  filter(Variable %in% total_work_status_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = total_work_status_factor))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white",  show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Change in Total Population Hours Worked from 2021 to 2022")


percent_work_status_vars <- c("Percent Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                              "Percent Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                              "Percent Population Usually Worked 35+ Hours/Week 27-39 Weeks",
                              "Percent Population Usually Worked 15-34 Hours/Week 50-52 Weeks",
                              "Percent Population Usually Worked 15-34 Hours/Week 40-47 Weeks",
                              "Percent Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                              "Percent Population Usually did not work",
                              "Percent Population Worked full-time, year-round"
)


county_total_work_status_to_join <- county_total_pop_work_status %>%
  filter(Variable %in% total_work_status_vars)

county_percent_work_status_to_join <- county_percent_pop_work_status %>%
  filter(Variable %in% percent_work_status_vars)

joined_county_work_status <- rbind(county_total_work_status_to_join, county_percent_work_status_to_join)

table_function(joined_county_work_status %>%
                 st_drop_geometry()%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = `2022 Estimate`), `2022 Work Status and Hours Worked`)

county_total_pop_work_status%>%
  filter(Variable %in% total_work_status_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = total_work_status_factor))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
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
  ggtitle("Percent Change in Total Population Hours Worked from 2021 to 2022")



# gender
total_male_work_status_vars <- c("Total Male Population Mean Usual Hours Worked",
                                 "Total Male Population Median Age of Workers 16-64",
                                 "Total Male Population Worked full-time, year-round")

total_female_work_status_vars <- c("Total Female Population Mean Usual Hours Worked",
                                   "Total Female Population Median Age of Workers 16-64",
                                   "Total Female Population Worked full-time, year-round")


percent_Female_work_status_vars <- c("Percent Female Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                     "Percent Female Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                     "Percent Female Population Usually Worked 35+ Hours/Week 27-39 Weeks",
                                     "Percent Female Population Usually Worked 15-34 Hours/Week 50-52 Weeks",
                                     "Percent Female Population Usually Worked 15-34 Hours/Week 40-47 Weeks",
                                     "Percent Female Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                     "Percent Female Population Usually did not work",
                                     "Percent Female Population Worked full-time, year-round"
)



percent_Male_work_status_vars <- c("Percent Male Population Usually Worked 35+ Hours/Week 50-52 Weeks",
                                   "Percent Male Population Usually Worked 35+ Hours/Week 40-47 Weeks",
                                   "Percent Male Population Usually Worked 35+ Hours/Week 27-39 Weeks",
                                   "Percent Male Population Usually Worked 15-34 Hours/Week 50-52 Weeks",
                                   "Percent Male Population Usually Worked 15-34 Hours/Week 40-47 Weeks",
                                   "Percent Male Population Usually Worked 15-34 Hours/Week 27-39 Weeks",
                                   "Percent Male Population Usually did not work",
                                   "Percent Male Population Worked full-time, year-round"
)


county_total_male_work_status_to_join <- county_total_male_pop_work_status %>%
  filter(Variable %in% total_male_work_status_vars)

county_total_female_work_status_to_join <- county_total_female_pop_work_status %>%
  filter(Variable %in% total_female_work_status_vars)

county_percent_female_work_status_to_join <- county_percent_female_pop_work_status %>%
  filter(Variable %in% percent_Female_work_status_vars)

county_percent_male_work_status_to_join <- county_percent_male_pop_work_status %>%
  filter(Variable %in% percent_Male_work_status_vars)

joined_gended_work_status <- rbind(county_total_male_work_status_to_join, 
                                   county_total_female_work_status_to_join,
                                   county_percent_male_work_status_to_join,
                                   county_percent_female_work_status_to_join)

table_function(joined_gended_work_status %>%
                 st_drop_geometry()%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = "Variable", values_from = "2022 Estimate"), `2022 Male and Female Work Status and Hours Worked`)

gender_work_status <- joined_gended_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

gender_work_status_vars <- gender_work_status$Variable


joined_gended_work_status %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Change in Male and Female Work Status and Hours Worked from 2021 to 2022")


#### kingsport ####

kpt_total_work_status <- schools_total_pop_work_status %>%
  filter(str_detect(Location, "Kingsport"))

kpt_percent_work_status <- schools_percent_pop_work_status%>%
  filter(str_detect(Location, "Kingsport"))

kpt_male_total_work_status <- schools_total_male_pop_work_status%>%
  filter(str_detect(Location, "Kingsport"))

kpt_male_percent_work_status <- schools_percent_male_pop_work_status%>%
  filter(str_detect(Location, "Kingsport"))

kpt_female_total_work_status <- schools_total_female_pop_work_status%>%
  filter(str_detect(Location, "Kingsport"))

kpt_female_percent_work_status <- schools_percent_female_pop_work_status%>%
  filter(str_detect(Location, "Kingsport"))

kpt_total_work_status %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = total_work_status_factor))%>%
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
  ggtitle("Percent Change in KPT Total Population Hours Worked from 2021 to 2022")

table_function(kpt_total_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Total Population Work Status`)

percent_work_status <- kpt_percent_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

percent_work_status_vars <- percent_work_status$Variable


kpt_percent_work_status %>%
  filter(Variable != "Percent Population 21-64")%>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = percent_work_status_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference in Percentage of KPT Population Hours Worked from 2021 to 2022")

table_function(kpt_percent_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Percent Population Work Status`)

kpt_male_total_work_status

male_work_status <- kpt_male_total_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

male_work_status_vars <- male_work_status$Variable

percent_male_work_status <- kpt_male_percent_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

percent_male_work_status_vars <- percent_male_work_status$Variable

kpt_male_total_work_status %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = male_work_status_vars))%>%
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
  ggtitle("Percent Change in KPT Male Population Hours Worked from 2021 to 2022")

table_function(kpt_male_total_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Total Male Population Work Status`)


kpt_male_percent_work_status %>%
  filter(Variable != "Percent Male Population 21-64")%>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = percent_male_work_status_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference in Percentage of KPT Male Population Hours Worked from 2021 to 2022")

table_function(kpt_male_percent_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Percent Male Population Work Status`)

female_work_status <- kpt_female_total_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

female_work_status_vars <- female_work_status$Variable

percent_female_work_status <- kpt_female_percent_work_status %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique()

percent_female_work_status_vars <- percent_female_work_status$Variable

kpt_female_total_work_status %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = female_work_status_vars))%>%
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
  ggtitle("Percent Change in KPT Female Population Hours Worked from 2021 to 2022")

table_function(kpt_female_total_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Total female Population Work Status`)


kpt_female_percent_work_status %>%
  filter(Variable != "Percent Female Population 21-64")%>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = percent_female_work_status_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Difference in Percentage of KPT Female Population Hours Worked from 2021 to 2022")

table_function(kpt_female_percent_work_status%>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`),`KPT Percent female Population Work Status`)

