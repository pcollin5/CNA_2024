#### S1903 MEDIAN INCOME ####

View(uethda_county_median_income_2022)

uethda_county_median_income_2021

uethda_tract_median_income_2022

uethda_tract_median_income_2021

full_median_income_2022

full_median_income_2021

uethda_schools_median_income_2022

uethda_schools_median_income_2021

#### join the names ####

county_median_income_2022 <- full_median_income_2022 %>%
  left_join(subject_table_variables_22)


tract_median_income_2022 <- uethda_tract_median_income_2022 %>%
  left_join(subject_table_variables_22)

county_median_income_2021 <- full_median_income_2021 %>%
  left_join(subject_table_variables_21)

tract_median_income_2021 <- uethda_tract_median_income_2021 %>%
  left_join(subject_table_variables_21)


#### pull out the variables ####

median_income_names_22 <- c("Household Median Income", "HH Median Income White",
                            "HH Median Income Black", "HH Median Income Native American",
                            "HH Median Income Asian", "HH Median Income Pacific Islander",
                            "HH Median Income Some Other race", "HH Median Income Two or More Races",
                            "HH Median Income Hispanic", "HH Median Income Non-Hispanic",
                            "HH Median Income 15-24 Year Householder", "HH Median Income 25-44 Year Householder",
                            "HH Median Income 45-64 Year Householder", "HH Median Income 65+ Year Householder",
                            "Family Median Income", "Family Median Income with Children <18", "Family Median Income with No Children"
)

median_income_names_21 <-  c("Household Median Income", "HH Median Income White",
                             "HH Median Income Black", "HH Median Income Native American",
                             "HH Median Income Asian", "HH Median Income Pacific Islander",
                             "HH Median Income Some Other race", "HH Median Income Two or More Races",
                             "HH Median Income Hispanic", "HH Median Income Non-Hispanic",
                             "HH Median Income 15-24 Year Householder", "HH Median Income 25-44 Year Householder",
                             "HH Median Income 45-64 Year Householder", "HH Median Income 65+ Year Householder",
                             "Family Median Income", "Family Median Income with Children <18", "Family Median Income with No Children"
)

median_income_variables_22 <- c("S1903_C03_001", "S1903_C03_002",
                                "S1903_C03_003", "S1903_C03_004",
                                "S1903_C03_005", "S1903_C03_006",
                                "S1903_C03_007", "S1903_C03_008",
                                "S1903_C03_009", "S1903_C03_010",
                                "S1903_C03_011", "S1903_C03_012",
                                "S1903_C03_013", "S1903_C03_014",
                                "S1903_C03_015", "S1903_C03_021",
                                "S1903_C03_017")

median_income_variables_21 <-   c("S1903_C03_001", "S1903_C03_002",
                                  "S1903_C03_003", "S1903_C03_004",
                                  "S1903_C03_005", "S1903_C03_006",
                                  "S1903_C03_007", "S1903_C03_008",
                                  "S1903_C03_009", "S1903_C03_010",
                                  "S1903_C03_011", "S1903_C03_012",
                                  "S1903_C03_013", "S1903_C03_014",
                                  "S1903_C03_015", "S1903_C03_021",
                                  "S1903_C03_017")


#### filter the variables #####

filtered_county_median_income_22 <- county_median_income_2022 %>%
  filter(variable %in% median_income_variables_22)%>%
  cbind(median_income_names_22)%>%
  select(NAME, estimate, moe, median_income_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = median_income_names_22)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)


filtered_county_median_income_21 <-  county_median_income_2021 %>%
  filter(variable %in% median_income_variables_21)%>%
  cbind(median_income_names_21)%>%
  select(NAME, estimate, moe, median_income_names_21)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = median_income_names_21)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE) %>%
  st_drop_geometry()

county_median_income <- left_join(filtered_county_median_income_22, filtered_county_median_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")



# tract 

filtered_tract_median_income_22 <- tract_median_income_2022 %>%
  filter(variable %in% median_income_variables_22)%>%
  cbind(median_income_names_22)%>%
  select(NAME, estimate, moe, median_income_names_22)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = median_income_names_22)%>%
  select(Location, Variable, Estimate, MOE)

filtered_tract_median_income_21 <- tract_median_income_2021 %>%
  filter(variable %in% median_income_variables_21)%>%
  cbind(median_income_names_21)%>%
  select(NAME, estimate, moe, median_income_names_21)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = median_income_names_21)%>%
  select(Location, Variable, Estimate, MOE) %>%
  st_drop_geometry()

tract_median_income <- left_join(filtered_tract_median_income_22, filtered_tract_median_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# schools 

schools_median_income_22 <- uethda_schools_median_income_2022 %>%
  filter(Variable %in% median_income_variables_22)%>%
  cbind(median_income_names_22)%>%
  select(Location, median_income_names_22, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  rename("Variable" = median_income_names_22)

schools_median_income_21 <-  uethda_schools_median_income_2021 %>%
  filter(Variable %in% median_income_variables_21)%>%
  cbind(median_income_names_21)%>%
  select(Location, median_income_names_21, Estimate, MOE)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  rename("Variable" = median_income_names_21) %>%
  st_drop_geometry()

schools_median_income <- left_join(schools_median_income_22, schools_median_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_median_income

#### these data sets are ready ####

county_income <- rbind(county_median_income, county_mean_income)

tract_income <- rbind(tract_median_income, tract_mean_income)

schools_income <- rbind(schools_median_income, schools_mean_income)

View(county_income %>%
       filter(Variable == "Household Median Income"|
                Variable == "Household Mean Income"))

#### county median incomes races #####

median_income_races_vars <- c("Household Median Income", "HH Median Income White",
"HH Median Income Black", "HH Median Income Native American",
"HH Median Income Asian", "HH Median Income Pacific Islander",
"HH Median Income Some Other race", "HH Median Income Two or More Races",
"HH Median Income Hispanic", "HH Median Income Non-Hispanic")

temp_names <- county_median_income %>%
  select(Variable)%>%
  st_drop_geometry()%>%
  unique() %>%
  filter(Variable %in% median_income_races_vars)

income_vars_races <- temp_names$Variable

income_vars_races


county_median_income %>%
  filter(Variable %in% income_vars_races)%>%
  mutate(Variable = factor(Variable, levels = income_vars_races))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_bar(stat = "identity")+
  facet_wrap(~Location, scales = "free_x")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="black")+
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1),color = "black", show.legend = FALSE, size = 3)+
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
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("2022 Household Median Income by Race/Ethnicity")


