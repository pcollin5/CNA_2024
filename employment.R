#### S2301 geographic employment ####

uethda_county_employment_2022

uethda_county_employment_2021

uethda_tract_employment_2022

uethda_tract_employment_2021

uethda_schools_employment_2022

uethda_schools_employment_2021


#### join the names together ####

joined_county_employement_22 <- uethda_county_employment_2022 %>%
  left_join(subject_table_variables_22, by = "variable")

joinde_county_employment_21 <- uethda_county_employment_2021 %>%
  left_join(subject_table_variables_21, by = "variable")

joinde_county_employment_21

joined_tract_employment_22 <- uethda_tract_employment_2022 %>%
  left_join(subject_table_variables_22, by = "variable")

joined_tract_employment_21 <- uethda_tract_employment_2021 %>%
  left_join(subject_table_variables_21, by = "variable")

joined_schools_employment_22 <- uethda_schools_employment_2022%>%
  left_join(subject_table_variables_22, by = c("Variable" = "variable"))



joined_schools_employment_21 <-  uethda_schools_employment_2021 %>%
  left_join(subject_table_variables_21, by = c("Variable" = "variable"))


##### filter variables #####

labor_force_vars <- c("") # can pull the whole table C02

unemployment_vars <- c("") # can pull the whole table C04

employ_pop_ratio_vars <- c("") # can pull the whole table C03

labor_force_names <- c("Labor Force Part. Rate All 16+", "Labor Force Part. Rate 16-19",
                       "Labor Force Part. Rate 20-24","Labor Force Part. Rate 25-29",
                       "Labor Force Part. Rate 30-34","Labor Force Part. Rate 35-44",
                       "Labor Force Part. Rate 45-54","Labor Force Part. Rate 55-59",
                       "Labor Force Part. Rate 60-64","Labor Force Part. Rate 65-74",
                       "Labor Force Part. Rate 75+",
                       "Labor Force Part. Rate White","Labor Force Part. Rate Black",
                       "Labor Force Part. Rate Native American","Labor Force Part. Rate Asian",
                       "Labor Force Part. Rate Pacific Islander","Labor Force Part. Rate Some Other Race",
                       "Labor Force Part. Rate Two or More Races","Labor Force Part. Rate Hispanic",
                       "Labor Force Part. Rate Non-Hispanic","Labor Force Part. Rate 20-64",
                       "Labor Force Part. Rate 20-64 Male","Labor Force Part. Rate Female",
                       "Labor Force Part. Rate Female with Children under 18",
                       "Labor Force Part. Rate Female with Children under 6 Only",
                       "Labor Force Part. Rate with Children under 6 and 6-17",
                       "Labor Force Part. Rate with Children 6-17 Only",
                       "Labor Force Part. Rate Below Poverty Level",
                       "Labor Force Part. Rate Above Poverty Level",
                       "Labor Force Part. Rate with Disability",
                       "Labor Force Part. Rate 25-64 Years",
                       "Labor Force Part. Rate Less than HS Degree",
                       "Labor Force Part. Rate HS Degree",
                       "Labor Force Part. Rate Some College or Associates",
                       "Labor Force Part. Rate Bachelors or Higher")


unemployment_names <- c("Unemployment Rate All 16+", "Unemployment Rate 16-19",
                        "Unemployment Rate 20-24","Unemployment Rate 25-29",
                        "Unemployment Rate 30-34","Unemployment Rate 35-44",
                        "Unemployment Rate 45-54","Unemployment Rate 55-59",
                        "Unemployment Rate 60-64","Unemployment Rate 65-74",
                        "Unemployment Rate 75+",
                        "Unemployment Rate White","Unemployment Rate Black",
                        "Unemployment Rate Native American","Unemployment Rate Asian",
                        "Unemployment Rate Pacific Islander","Unemployment Rate Some Other Race",
                        "Unemployment Rate Two or More Races","Unemployment Rate Hispanic",
                        "Unemployment Rate Non-Hispanic","Unemployment Rate 20-64",
                        "Unemployment Rate 20-64 Male","Unemployment Rate Female",
                        "Unemployment Rate Female with Children under 18",
                        "Unemployment Rate Female with Children under 6 Only",
                        "Unemployment Rate with Children under 6 and 6-17",
                        "Unemployment Rate with Children 6-17 Only",
                        "Unemployment Rate Below Poverty Level",
                        "Unemployment Rate Above Poverty Level",
                        "Unemployment Rate with Disability",
                        "Unemployment Rate 25-64 Years",
                        "Unemployment Rate Less than HS Degree",
                        "Unemployment Rate HS Degree",
                        "Unemployment Rate Some College or Associates",
                        "Unemployment Rate Bachelors or Higher")

employ_pop_ratio_names <- c("Employment/Population Ratio All 16+", "Employment/Population Ratio 16-19",
                            "Employment/Population Ratio 20-24","Employment/Population Ratio 25-29",
                            "Employment/Population Ratio 30-34","Employment/Population Ratio 35-44",
                            "Employment/Population Ratio 45-54","Employment/Population Ratio 55-59",
                            "Employment/Population Ratio 60-64","Employment/Population Ratio 65-74",
                            "Employment/Population Ratio 75+",
                            "Employment/Population Ratio White","Employment/Population Ratio Black",
                            "Employment/Population Ratio Native American","Employment/Population Ratio Asian",
                            "Employment/Population Ratio Pacific Islander","Employment/Population Ratio Some Other Race",
                            "Employment/Population Ratio Two or More Races","Employment/Population Ratio Hispanic",
                            "Employment/Population Ratio Non-Hispanic","Employment/Population Ratio 20-64",
                            "Employment/Population Ratio 20-64 Male","Employment/Population Ratio Female",
                            "Employment/Population Ratio Female with Children under 18",
                            "Employment/Population Ratio Female with Children under 6 Only",
                            "Employment/Population Ratio with Children under 6 and 6-17",
                            "Employment/Population Ratio with Children 6-17 Only",
                            "Employment/Population Ratio Below Poverty Level",
                            "Employment/Population Ratio Above Poverty Level",
                            "Employment/Population Ratio with Disability",
                            "Employment/Population Ratio 25-64 Years",
                            "Employment/Population Ratio Less than HS Degree",
                            "Employment/Population Ratio HS Degree",
                            "Employment/Population Ratio Some College or Associates",
                            "Employment/Population Ratio Bachelors or Higher")

#### filter the variables and set up the data sets ####

#labor force 

filtered_labor_force_22 <- joined_county_employement_22 %>%
  filter(str_detect(variable, "C02")) %>%
  select(NAME, estimate, moe)%>%
  cbind(labor_force_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "labor_force_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))

filtered_labor_force_21 <- joinde_county_employment_21 %>%
  filter(str_detect(variable, "C02")) %>%
  select(NAME, estimate, moe)%>%
  cbind(labor_force_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "labor_force_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

filtered_tract_labor_force_22 <- joined_tract_employment_22 %>%
  filter(str_detect(variable, "C02")) %>%
  select(NAME, estimate, moe)%>%
  cbind(labor_force_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "labor_force_names")%>%
  select(Location, Variable, Estimate, MOE)

filtered_tract_labor_force_21 <- joined_tract_employment_21 %>%
  filter(str_detect(variable, "C02")) %>%
  select(NAME, estimate, moe)%>%
  cbind(labor_force_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "labor_force_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

filtered_schools_labor_force_22  <- uethda_schools_employment_2022 %>%
  filter(str_detect(Variable, "C02"))%>%
  select(Location,Estimate, MOE)%>%
  cbind(labor_force_names)%>%
  rename("Variable" = labor_force_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))


filtered_schools_labor_force_21 <- uethda_schools_employment_2021 %>%
  filter(str_detect(Variable, "C02"))%>%
  select(Location, Estimate, MOE)%>%
  cbind(labor_force_names)%>%
  rename("Variable" = labor_force_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

# unemployement

filtered_unemployment_22 <- joined_county_employement_22 %>%
  filter(str_detect(variable, "C04")) %>%
  select(NAME, estimate, moe)%>%
  cbind(unemployment_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "unemployment_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))

filtered_unemployment_21 <- joinde_county_employment_21 %>%
  filter(str_detect(variable, "C04")) %>%
  select(NAME, estimate, moe)%>%
  cbind(unemployment_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "unemployment_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location)) %>%
  st_drop_geometry()

filtered_tract_unemployment_22 <- joined_tract_employment_22 %>%
  filter(str_detect(variable, "C04")) %>%
  select(NAME, estimate, moe)%>%
  cbind(unemployment_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "unemployment_names")%>%
  select(Location, Variable, Estimate, MOE)

filtered_tract_unemployment_21 <- joined_tract_employment_21 %>%
  filter(str_detect(variable, "C04")) %>%
  select(NAME, estimate, moe)%>%
  cbind(unemployment_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "unemployment_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

filtered_schools_unemployment_22 <- uethda_schools_employment_2022 %>%
  filter(str_detect(Variable, "C04"))%>%
  select(Location, Estimate, MOE)%>%
  cbind(unemployment_names)%>%
  rename("Variable" = unemployment_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))

filtered_schools_unemployment_21 <- uethda_schools_employment_2021 %>%
  filter(str_detect(Variable, "C04"))%>%
  select(Location, Estimate, MOE)%>%
  cbind(unemployment_names)%>%
  rename("Variable" = unemployment_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

# employed_pop_ratio

filtered_employ_pop_ratio_22 <- joined_county_employement_22 %>%
  filter(str_detect(variable, "C03")) %>%
  select(NAME, estimate, moe)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "employ_pop_ratio_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))

filtered_employ_pop_ratio_21 <- joinde_county_employment_21 %>%
  filter(str_detect(variable, "C03")) %>%
  select(NAME, estimate, moe)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "employ_pop_ratio_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

filtered_tract_employ_pop_ratio_22 <- joined_tract_employment_22 %>%
  filter(str_detect(variable, "C03")) %>%
  select(NAME, estimate, moe)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "employ_pop_ratio_names")%>%
  select(Location, Variable, Estimate, MOE)

filtered_tract_employ_pop_ratio_21 <- joined_tract_employment_21 %>%
  filter(str_detect(variable, "C03")) %>%
  select(NAME, estimate, moe)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "employ_pop_ratio_names")%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

filtered_schools_employ_pop_ratio_22 <- uethda_schools_employment_2022 %>%
  filter(str_detect(Variable, "C03"))%>%
  select(Location, Estimate, MOE)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Variable" = employ_pop_ratio_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))

filtered_schools_employ_pop_ratio_21 <- uethda_schools_employment_2021 %>%
  filter(str_detect(Variable, "C03"))%>%
  select(Location, Estimate, MOE)%>%
  cbind(employ_pop_ratio_names)%>%
  rename("Variable" = employ_pop_ratio_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  st_drop_geometry()

#### now join the years together for comparison ####

#labor force
joined_county_labor_force <- left_join(filtered_labor_force_22, filtered_labor_force_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_tract_labor_force <- left_join(filtered_tract_labor_force_22, filtered_tract_labor_force_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_schools_labor_force <- left_join(filtered_schools_labor_force_22, filtered_schools_labor_force_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


# unemployment 

joined_county_unemployment <- left_join(filtered_unemployment_22, filtered_unemployment_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_tract_unemployment <- left_join(filtered_tract_unemployment_22, filtered_tract_unemployment_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_schools_unemployment <- left_join(filtered_schools_unemployment_22, filtered_schools_unemployment_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# employment_pop_ratio 

joined_county_employ_pop_ratio <- left_join(filtered_employ_pop_ratio_22, filtered_employ_pop_ratio_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_tract_employ_pop_ratio <- left_join(filtered_tract_employ_pop_ratio_22, filtered_tract_employ_pop_ratio_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

joined_schools_employ_pop_ratio <- left_join(filtered_schools_employ_pop_ratio_22, filtered_schools_employ_pop_ratio_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#### these data sets are ready ####

joined_county_employ_pop_ratio

joined_schools_employ_pop_ratio

joined_tract_employ_pop_ratio

joined_county_unemployment

joined_tract_unemployment

joined_schools_unemployment

joined_county_labor_force

joined_tract_labor_force

### schools ####

kpt_labor_force <- joined_schools_labor_force %>%
  filter(str_detect(Location, "Kingsport"))

kpt_unemployment <- joined_schools_unemployment %>%
  filter(str_detect(Location, "Kingsport"))

kpt_employ_pop <- joined_schools_employ_pop_ratio%>%
  filter(str_detect(Location, "Kingsport"))

kpt_labor_force%>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
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
  ggtitle("Kingsport City School District Percent Difference in Labor Force Participation Rate 2021 to 2022")

table_function(kpt_labor_force %>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`), `Kingsport Labor Force Participation Rates`)


kpt_unemployment %>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
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
  ggtitle("Kingsport City School District Percent Difference in Unemployment Rates 2021 to 2022")

table_function(kpt_unemployment %>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`), `Kingsport Unemployment Rates`)


kpt_employ_pop %>%
  mutate(`Percent Difference` = round((`2022 Estimate` - `2021 Estimate`),2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
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
  ggtitle("Kingsport City School District Percent Difference in Employment to Population Percentage 2021 to 2022")

table_function(kpt_employ_pop %>%
                 st_drop_geometry()%>%
                 select(Variable, `2022 Estimate`, `2021 Estimate`), `Kingsport Employment to Population Percentage`)
