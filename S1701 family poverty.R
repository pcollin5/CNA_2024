#### S1702 family poverty ####

View(subject_table_variables_22)

View(subject_table_variables_21) 

uethda_county_family_poverty_2022

uethda_county_family_poverty_2021

uethda_tract_family_poverty_2022

uethda_tract_family_poverty_2021

uethda_schools_family_poverty_2022

uethda_schools_family_poverty_2021

#variables match from 2022 to 2021

family_pov_total_vars <- "C01"

family_pov_perc_below_pov_vars <- "C02"

family_pov_total_names <- c("Total Families", "Total Families with Children under 18",
                            "Total Families with Children under 5",
                            "Total Families with Children under 5 and under 17",
                            "Total Families with Children 5-17",
                            "Total White HH Families",
                            "Total Black HH Families",
                            "Total Native American HH Families",
                            "Total Asian HH Families",
                            "Total Pacific Islander HH Families",
                            "Total some other Race HH Families",
                            "Total Two or More Races HH Families",
                            "Total Hisapnic HH Families",
                            "Total Non-Hispanic HH Families",
                            "Total Families HH Worked",
                            "Total Families HH Worked Full Time Year Round",
                            "Total Families HH 65+",
                            "Total Families SSI and/or Cash Public Assistance",
                            "Total Families Social Security",
                            "Total Families HH Less than HS Grad",
                            "Total Families HH HS Degree",
                            "Total Families HH Some College or Associates",
                            "Total Families HH Bachelors Degree or Higher",
                            "Total Families No Children",
                            "Total Families 1-2 Children",
                            "Total Families 3-4 Children",
                            "Total Families 5+ Children",
                            "Total Families No Children of HH",
                            "Total Families 1-2 Children of HH",
                            "Total Families 3-4 Children of HH",
                            "Total Families 5+ Children of HH",
                            "Total Families 2 People",
                            "Total Families 3-4 People",
                            "Total Families 5-6 People",
                            "Total Families 7+ People",
                            "Total Families No Workers",
                            "Total Families 1 Worker",
                            "Total Families 2 Workers",
                            "Total Families 3+ Workers",
                            "Total Families Mean Income Deficit",
                            "Total Families Home Owners",
                            "Total Families Renters",
                            "Total Families Below 50% of Poverty Level",
                            "Total Families Below 125% of Poverty Level",
                            "Total Families Below 150% of Poverty Level",
                            "Total Families Below 185% of Poverty Level",
                            "Total Families Below 200% of Poverty Level",
                            "Total Families Below 300% of Poverty Level",
                            "Total Families Below 400% of Poverty Level",
                            "Total Families Below 500% of Poverty Level"
)

family_pov_percent_names <- c("Percent Families in Poverty",  "Percent Families with Children under 18 in Poverty", 
                              "Percent Families with Children under 5 in Poverty", 
                              "Percent Families with Children under 5 and under 17 in Poverty", 
                              "Percent Families with Children 5-17 in Poverty", 
                              "Percent White HH Families in Poverty", 
                              "Percent Black HH Families in Poverty", 
                              "Percent Native American HH Families in Poverty", 
                              "Percent Asian HH Families in Poverty", 
                              "Percent Pacific Islander HH Families in Poverty", 
                              "Percent some other Race HH Families in Poverty", 
                              "Percent Two or More Races HH Families in Poverty", 
                              "Percent Hisapnic HH Families in Poverty", 
                              "Percent Non-Hispanic HH Families in Poverty", 
                              "Percent Families HH Worked in Poverty", 
                              "Percent Families HH Worked Full Time Year Round in Poverty", 
                              "Percent Families HH 65+ in Poverty", 
                              "Percent Families SSI and/or Cash Public Assistance in Poverty", 
                              "Percent Families Social Security in Poverty", 
                              "Percent Families HH Less than HS Grad in Poverty", 
                              "Percent Families HH HS Degree in Poverty", 
                              "Percent Families HH Some College or Associates in Poverty", 
                              "Percent Families HH Bachelors Degree or Higher in Poverty", 
                              "Percent Families No Children in Poverty", 
                              "Percent Families 1-2 Children in Poverty", 
                              "Percent Families 3-4 Children in Poverty", 
                              "Percent Families 5+ Children in Poverty", 
                              "Percent Families No Children of HH in Poverty", 
                              "Percent Families 1-2 Children of HH in Poverty", 
                              "Percent Families 3-4 Children of HH in Poverty", 
                              "Percent Families 5+ Children of HH in Poverty", 
                              "Percent Families 2 People in Poverty", 
                              "Percent Families 3-4 People in Poverty", 
                              "Percent Families 5-6 People in Poverty", 
                              "Percent Families 7+ People in Poverty", 
                              "Percent Families No Workers in Poverty", 
                              "Percent Families 1 Worker in Poverty", 
                              "Percent Families 2 Workers in Poverty", 
                              "Percent Families 3+ Workers in Poverty", 
                              "Percent Families Mean Income Deficit in Poverty", 
                              "Percent Families Home Owners in Poverty", 
                              "Percent Families Renters in Poverty", 
                              "Percent Families Below 50% of Poverty Level in Poverty", 
                              "Percent Families Below 125% of Poverty Level in Poverty", 
                              "Percent Families Below 150% of Poverty Level in Poverty", 
                              "Percent Families Below 185% of Poverty Level in Poverty", 
                              "Percent Families Below 200% of Poverty Level in Poverty", 
                              "Percent Families Below 300% of Poverty Level in Poverty", 
                              "Percent Families Below 400% of Poverty Level in Poverty", 
                              "Percent Families Below 500% of Poverty Level in Poverty"
)

#### filter the variables ####

#county
county_family_total_poverty_22  <-uethda_county_family_poverty_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(NAME, estimate, moe, family_pov_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_family_total_poverty_21 <- uethda_county_family_poverty_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(NAME, estimate, moe, family_pov_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_family_poverty_total <- left_join(county_family_total_poverty_22, county_family_total_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


county_family_percent_poverty_22  <-uethda_county_family_poverty_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(NAME, estimate, moe, family_pov_percent_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_percent_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_family_percent_poverty_21 <- uethda_county_family_poverty_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(NAME, estimate, moe, family_pov_percent_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_percent_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_family_poverty_percent <- left_join(county_family_percent_poverty_22, county_family_percent_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#tract
tract_family_total_poverty_22  <-uethda_tract_family_poverty_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(NAME, estimate, moe, family_pov_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_total_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_family_total_poverty_21 <- uethda_tract_family_poverty_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(NAME, estimate, moe, family_pov_total_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_total_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_family_poverty_total <- left_join(tract_family_total_poverty_22, tract_family_total_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")


tract_family_percent_poverty_22  <-uethda_tract_family_poverty_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(NAME, estimate, moe, family_pov_percent_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_percent_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_family_percent_poverty_21 <- uethda_tract_family_poverty_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(NAME, estimate, moe, family_pov_percent_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =family_pov_percent_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_family_poverty_percent <- left_join(tract_family_percent_poverty_22, tract_family_percent_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# schools
schools_family_total_poverty_22  <-uethda_schools_family_poverty_2022 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(Location, Estimate, MOE, family_pov_total_names)%>%
  rename("Variable" =family_pov_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_family_total_poverty_21  <-uethda_schools_family_poverty_2021 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(family_pov_total_names)%>%
  select(Location, Estimate, MOE, family_pov_total_names)%>%
  rename("Variable" =family_pov_total_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_family_poverty_total <- left_join(schools_family_total_poverty_22, schools_family_total_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_family_percent_poverty_22  <-uethda_schools_family_poverty_2022 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(Location, Estimate, MOE, family_pov_percent_names)%>%
  rename("Variable" =family_pov_percent_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_family_percent_poverty_21  <-uethda_schools_family_poverty_2021 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(family_pov_percent_names)%>%
  select(Location, Estimate, MOE, family_pov_percent_names)%>%
  rename("Variable" =family_pov_percent_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_family_poverty_percent <- left_join(schools_family_percent_poverty_22, schools_family_percent_poverty_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_family_poverty_percent


#### county family poverty ####

county_family_poverty_percent

dp03_family_poverty_vars <- c("Percent of All Families below Poverty Level", "Percent of All Families below Poverty Level with Children under 18", 
                              "Percent of All Families below Poverty Level with Children under 5 Only", "Percent of All Families below Poverty Level Female Householder, No Spouse, Children under 18",
                              "Percent of All Families below Poverty Level Female Householder, No Spouse, Children under 5 Only")
# from dp03

table_function(county_fams_below_pov %>%
                 filter(Variable %in% dp03_family_poverty_vars) %>%
                 mutate(`Percent Difference` = `2022 Estimate` - `2021 Estimate`)%>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 select(Location, Variable, `2022 Estimate`, `Percent Difference`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate", "Percent Difference"), names_sep = " "), `2022 Percentage of All Families in Poverty and Difference from 2021`)

county_fams_below_pov %>%
  filter(Variable %in% dp03_family_poverty_vars) %>%
  mutate(`Percent Difference` = round(`2022 Estimate` - `2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = dp03_family_poverty_vars))%>%
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
  ggtitle("Percent Difference in Percentage of Families in Poverty from 2021 to 2022")

####
county_family_poverty_total

View(county_family_poverty_percent %>%
       filter(Location == "Carter County"))

# child number size

child_number_pov_vars <- c("Percent Families No Children in Poverty", 
                           "Percent Families 1-2 Children in Poverty", 
                           "Percent Families 3-4 Children in Poverty", 
                           "Percent Families 5+ Children in Poverty")

county_family_poverty_percent %>%
  filter(Variable %in% child_number_pov_vars)%>%
  mutate(Variable = factor(Variable, levels = child_number_pov_vars))%>%
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
  ggtitle("Percent Difference in Poverty Percentage by Number of Children from 2021 to 2022")

table_function(county_family_poverty_percent %>%
                 filter(Variable %in% child_number_pov_vars)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Poverty Percentage by Number of Children`)




# family size 

family_members_pov_vars <- c("Percent Families 2 People in Poverty", 
                             "Percent Families 3-4 People in Poverty", 
                             "Percent Families 5-6 People in Poverty", 
                             "Percent Families 7+ People in Poverty")

county_family_poverty_percent %>%
  filter(Variable %in% family_members_pov_vars)%>%
  mutate(Variable = factor(Variable, levels = family_members_pov_vars))%>%
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
  ggtitle("Percent Difference in Poverty Percentage for Family Sizes from 2021 to 2022")

table_function(county_family_poverty_percent %>%
                 filter(Variable %in% family_members_pov_vars)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Poverty Percentage by Family Size`)


# number of workers 

workers_family_pov_vars <- c("Percent Families No Workers in Poverty", 
                             "Percent Families 1 Worker in Poverty", 
                             "Percent Families 2 Workers in Poverty", 
                             "Percent Families 3+ Workers in Poverty",
                             "Percent Families HH Worked Full Time Year Round in Poverty",
                             "Percent Families HH Worked in Poverty")

county_family_poverty_percent %>%
  filter(Variable %in% workers_family_pov_vars)%>%
  mutate(Variable = factor(Variable, levels = workers_family_pov_vars))%>%
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
  ggtitle("Percent Difference in Poverty Percentage by Number of Workers from 2021 to 2022")

table_function(county_family_poverty_percent %>%
                 filter(Variable %in% workers_family_pov_vars)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Poverty Percentage by Number of Workers`)



# other 

other_family_pov_vars <- c("Percent Families Home Owners in Poverty", 
                           "Percent Families Renters in Poverty",
                           "Percent Families HH 65+ in Poverty", 
                           "Percent Families SSI and/or Cash Public Assistance in Poverty", 
                           "Percent Families Social Security in Poverty", 
                           "Percent Families HH Less than HS Grad in Poverty", 
                           "Percent Families HH HS Degree in Poverty", 
                           "Percent Families HH Some College or Associates in Poverty", 
                           "Percent Families HH Bachelors Degree or Higher in Poverty")

county_family_poverty_percent %>%
  filter(Variable %in% other_family_pov_vars)%>%
  mutate(Variable = factor(Variable, levels = other_family_pov_vars))%>%
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
  ggtitle("Percent Difference in Poverty Percentage by Home Ownership, Education, and other Factors from 2021 to 2022")

table_function(county_family_poverty_percent %>%
                 filter(Variable %in% other_family_pov_vars)%>%
                 mutate(`Percent Difference` = round(100*((`2022 Estimate` - `2021 Estimate`)),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
                 st_drop_geometry() %>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = `2022 Estimate`), `2022 Poverty Percentage by Home Ownership, Education, and other Factors`)
