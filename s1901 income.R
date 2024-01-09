#### S1901 INCOME ####
View(subject_table_variables_22)
View(subject_table_variables_21)

uethda_county_income_2022

uethda_county_income_2021

uethda_tract_income_2022

uethda_tract_income_2021

uethda_schools_income_2022

uethda_schools_income_2021

# can just pull these, C01 is households, C02 is Families, C03 is married families, C04 is non-family
# both 16 and 21 match 

hh_income_names <- c("Total Households", "Percent Households <$10,000",
                     "Percent Households $10,000-$14,999", "Percent Households $15,000-$24,999",
                     "Percent Households $25,000-$34,999", "Percent Households $35,000-$49,999",
                     "Percent Households $50,000-$74,999", "Percent Households $75,000-$99,999",
                     "Percent Households $100,000-$149,000", "Percent Households $150,000-$199,999",
                     "Percent Households $200,000+", "Median Household Income", "Mean Household Income",
                     "Percent Household Income in the past 12 month", "placeholder", "placeholder2")

family_income_names <- c("Total Families", "Percent Families <$10,000",
                         "Percent Families $10,000-$14,999", "Percent Families $15,000-$24,999",
                         "Percent Families $25,000-$34,999", "Percent Families $35,000-$49,999",
                         "Percent Families $50,000-$74,999", "Percent Families $75,000-$99,999",
                         "Percent Families $100,000-$149,000", "Percent Families $150,000-$199,999",
                         "Percent Families $200,000+", "Median Family Income", "Mean Family Income",
                         "Placeholder3", "Percent Family Income in the Past 12 Months", "placeholder4")

married_income_names <- c("Total Married Families", "Percent Married Families <$10,000",
                          "Percent Married Families $10,000-$14,999", "Percent Married Families $15,000-$24,999",
                          "Percent Married Families $25,000-$34,999", "Percent Married Families $35,000-$49,999",
                          "Percent Married Families $50,000-$74,999", "Percent Married Families $75,000-$99,999",
                          "Percent Married Families $100,000-$149,000", "Percent Married Families $150,000-$199,999",
                          "Percent Married Families $200,000+", "Median Married Family Income", "Mean Married Family Income",
                          "Placeholder5", "placeholder6", "placeholder7")

non_family_income_names <- c("Total Nonfamily Households", "Percent Nonfamily Households <$10,000",
                             "Percent Nonfamily Households $10,000-$14,999", "Percent Nonfamily Households $15,000-$24,999",
                             "Percent Nonfamily Households $25,000-$34,999", "Percent Nonfamily Households $35,000-$49,999",
                             "Percent Nonfamily Households $50,000-$74,999", "Percent Nonfamily Households $75,000-$99,999",
                             "Percent Nonfamily Households $100,000-$149,000", "Percent Nonfamily Households $150,000-$199,999",
                             "Percent Nonfamily Households $200,000+", "Median Nonfamily Households Income", "Mean Nonfamily Households Income",
                             "Placeholder8", "placeholder9", "Percent Nonfamily Household Income in the Past 12 Months")

county_hh_income_22 <- uethda_county_income_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(NAME, estimate, moe, hh_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =hh_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_hh_income_21 <- uethda_county_income_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(NAME, estimate, moe, hh_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =hh_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_hh_income <- left_join(county_hh_income_22, county_hh_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_family_income_22 <- uethda_county_income_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(NAME, estimate, moe, family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_family_income_21 <- uethda_county_income_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(NAME, estimate, moe, family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_family_income <- left_join(county_family_income_22, county_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_married_income_22 <- uethda_county_income_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(NAME, estimate, moe, married_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = married_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_married_income_21 <- uethda_county_income_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(NAME, estimate, moe, married_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = married_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_married_income <- left_join(county_married_income_22, county_married_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

county_non_family_income_22 <- uethda_county_income_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(NAME, estimate, moe, non_family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = non_family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

county_non_family_income_21 <- uethda_county_income_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(NAME, estimate, moe, non_family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = non_family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

county_non_family_income <- left_join(county_non_family_income_22, county_non_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

#tract 
tract_hh_income_22 <- uethda_tract_income_2022 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(NAME, estimate, moe, hh_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =hh_income_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_hh_income_21 <- uethda_tract_income_2021 %>%
  filter(str_detect(variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(NAME, estimate, moe, hh_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" =hh_income_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_hh_income <- left_join(tract_hh_income_22, tract_hh_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_family_income_22 <- uethda_tract_income_2022 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(NAME, estimate, moe, family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = family_income_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_family_income_21 <- uethda_tract_income_2021 %>%
  filter(str_detect(variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(NAME, estimate, moe, family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = family_income_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_family_income <- left_join(tract_family_income_22, tract_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_married_income_22 <- uethda_tract_income_2022 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(NAME, estimate, moe, married_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = married_income_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_married_income_21 <- uethda_tract_income_2021 %>%
  filter(str_detect(variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(NAME, estimate, moe, married_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = married_income_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_married_income <- left_join(tract_married_income_22, tract_married_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

tract_non_family_income_22 <- uethda_tract_income_2022 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(NAME, estimate, moe, non_family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = non_family_income_names)%>%
  select(Location, Variable, Estimate, MOE)

tract_non_family_income_21 <- uethda_tract_income_2021 %>%
  filter(str_detect(variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(NAME, estimate, moe, non_family_income_names)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = non_family_income_names)%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

tract_non_family_income <- left_join(tract_non_family_income_22, tract_non_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

# schools 
schools_hh_income_22 <- uethda_schools_income_2022 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(Location, Estimate, MOE, hh_income_names)%>%
  rename("Variable" = hh_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_hh_income_21 <- uethda_schools_income_2021 %>%
  filter(str_detect(Variable, "C01"))%>%
  cbind(hh_income_names)%>%
  select(Location, Estimate, MOE, hh_income_names)%>%
  rename("Variable" = hh_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_hh_income <- left_join(schools_hh_income_22, schools_hh_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_family_income_22 <- uethda_schools_income_2022 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(Location, Estimate, MOE, family_income_names)%>%
  rename("Variable" = family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_family_income_21 <- uethda_schools_income_2021 %>%
  filter(str_detect(Variable, "C02"))%>%
  cbind(family_income_names)%>%
  select(Location, Estimate, MOE, family_income_names)%>%
  rename("Variable" = family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_family_income <- left_join(schools_family_income_22, schools_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_married_income_22 <- uethda_schools_income_2022 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(Location, Estimate, MOE, married_income_names)%>%
  rename("Variable" = married_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_married_income_21 <- uethda_schools_income_2021 %>%
  filter(str_detect(Variable, "C03"))%>%
  cbind(married_income_names)%>%
  select(Location, Estimate, MOE, married_income_names)%>%
  rename("Variable" = married_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_married_income <- left_join(schools_married_income_22, schools_married_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_non_family_income_22 <- uethda_schools_income_2022 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(Location, Estimate, MOE, non_family_income_names)%>%
  rename("Variable" = non_family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)

schools_non_family_income_21 <- uethda_schools_income_2021 %>%
  filter(str_detect(Variable, "C04"))%>%
  cbind(non_family_income_names)%>%
  select(Location, Estimate, MOE, non_family_income_names)%>%
  rename("Variable" = non_family_income_names)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  select(Location, Variable, Estimate, MOE)%>%
  st_drop_geometry()

schools_non_family_income <- left_join(schools_non_family_income_22, schools_non_family_income_21, by = c("Location", "Variable"))%>%
  rename("2022 Estimate" = "Estimate.x", "2022 MOE" = "MOE.x", "2021 Estimate" = "Estimate.y", "2021 MOE" = "MOE.y")

schools_hh_income

schools_non_family_income

#### these data sets are ready ####
#### INFLATION WAS 12.9% FROM 2021 to 2022 ####
#### INFLATION WAS 25.35% FROM 2021 to 2023 ####


#### hh income ####
test_hh <- county_hh_income %>%
  filter(Variable != "Median HH Income")%>%
  filter(Variable != "Mean HH Income")%>%
  filter(Location == "Carter County")

hh_income_vars <- test_hh$Variable

hh_income_vars

View(county_hh_income)

county_hh_income %>%
  filter(Variable != "Median Household Income")%>%
  filter(Variable != "Mean Household Income")%>%
  filter(Variable != "Total Households")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>%
  mutate(Variable = factor(Variable, levels = hh_income_vars))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_bar(stat = "identity")+
  facet_wrap(~Location, scales = "free_x")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="black")+
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
  ggtitle("2022 Household Income Distribution")

infl_adj_county_hh_mean_median_incomes <- county_hh_income %>%
  filter(Variable == "Mean Household Income"|
           Variable == "Median Household Income")%>%
  mutate(`Inflation Adj 2021 Estimate` = 1.078 * `2021 Estimate`)%>%
  mutate(`Inflation Adj 2021 MOE` = 1.078 * `2021 MOE`)%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `Inflation Adj 2021 Estimate`)/`Inflation Adj 2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `Inflation Adj 2021 Estimate`, `2022 MOE`, `Inflation Adj 2021 MOE`, clevel = 0.95))

infl_adj_county_hh_mean_median_incomes%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes( y = Variable, x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Spectral")+
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
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  ggtitle("Percent Changes in Household Mean and Median Incomes from 2021 to 2022", subtitle = "*2021 has been adjusted for 7.8% inflation to 2022")


table_function(county_hh_income %>%
                 filter(Variable != "Percent Median Household Income")%>%
                 filter(Variable != "Percent Mean Household Income")%>%
                 filter(Variable != "placeholder")%>%
                 filter(Variable != "placeholder2")%>%
                 filter(Variable != "Percent Household Income in the past 12 month")%>%
                 select(Location, Variable, `2022 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = "Variable", values_from = `2022 Estimate`), `2022 Percent of Households in Income Brackets`)

infl_adj_county_hh_mean_median_incomes %>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(y = Variable, x = `2022 Estimate`, fill = Location))+
  geom_bar(stat = "identity")+
  facet_wrap(~Location)+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="black")+
  geom_label(aes(group = Variable,label = `2022 Estimate`), position = position_dodge(width = 1), vjust = 2, color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("2022 Mean and Median Incomes")

infl_adj_county_hh_mean_median_incomes

table_function(infl_adj_county_hh_mean_median_incomes %>%
                 select(Location, Variable, `2022 Estimate`, `Inflation Adj 2021 Estimate`)%>%
                 st_drop_geometry()%>%
                 pivot_wider(names_from = Variable, values_from = c(`2022 Estimate`, `Inflation Adj 2021 Estimate`), names_sep = " ")%>%
                 mutate(`2022 Mean/Median` = round(`2022 Estimate Mean Household Income`/`2022 Estimate Median Household Income`,2))%>%
                 mutate(`2021 Inf Adj Mean/Median` = round(`Inflation Adj 2021 Estimate Mean Household Income` / `Inflation Adj 2021 Estimate Median Household Income`,2))%>%
                 mutate(`Percent Change` = round(100*(`2022 Mean/Median` - `2021 Inf Adj Mean/Median`) / `2021 Inf Adj Mean/Median`,2)), `Household Incomes and Change in Mean/Median Ratio from 2021 to 2022`)


#### non-family income ####
hh_income_percent_vars <- county_hh_income %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`)%>%
  filter(Variable != "Percent Median Household Income")%>%
  filter(Variable != "Percent Mean Household Income")%>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
  filter(Variable != "placeholder")%>%
  filter(Variable != "placeholder2")%>%
  filter(Variable != "Percent Household Income in the past 12 month")%>%
  select(`Variable`)%>%
  unique()

hh_income_percent_vars_levels <- hh_income_percent_vars$Variable

hh_income_percent_vars_levels


county_hh_mean_median <- county_hh_income %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`, `2021 Estimate`, `2021 MOE`)%>%
  filter(Variable == "Median Household Income"|
           Variable == "Mean Household Income")%>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
  st_drop_geometry()

county_hh_mean_median

nf_income_vars <- county_non_family_income %>%
  filter(Variable != "Total Nonfamily Households")%>%
  filter(Variable != "Percent Nonfamily Household Income in the Past 12 Months")%>%
  filter(str_detect(Variable, "placeholder", negate = TRUE))%>%
  filter(str_detect(Variable, "Placeholder", negate = TRUE))%>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`)%>%
  filter(Variable != "Median Nonfamily Households Income")%>%
  filter(Variable != "Mean Nonfamily Households Income")%>%
  st_drop_geometry()%>%
  select(Variable)%>%
  unique()

nf_income_vars_levels <- nf_income_vars$Variable

county_nf_income_mean_median <- county_non_family_income %>%
  select(Location, Variable, `2022 Estimate`, `2022 MOE`, `2021 Estimate`, `2021 MOE`)%>%
  filter(Variable == "Median Nonfamily Households Income"|
           Variable == "Mean Nonfamily Households Income")%>%
  st_drop_geometry()%>%
  as_tibble()

county_nf_income_mean_median



family_vs_nf_mean_median <- rbind(county_hh_mean_median, county_nf_income_mean_median)

family_vs_nf_mean_median %>%
  mutate(`Inf Adj 2021 Estimate` = `2021 Estimate` * 1.078)%>%
  mutate(`Inf Adj 2021 MOE` = `2021 MOE` * 1.078) %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `Inf Adj 2021 Estimate`) / `Inf Adj 2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `Inf Adj 2021 Estimate`, `2022 MOE`, `Inf Adj 2021 MOE`, clevel = 0.95))%>%
  ggplot(aes( y = Variable, x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Accent")+
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
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  ggtitle("Percent Changes in Nonfamily vs All Households Mean and Median Incomes from 2021 to 2022", subtitle = "*2021 has been adjusted for 12.9% inflation to 2022")

num_workers <- c("Total Families No Workers", "Total Families 1 Worker", "Total Families 2 Workers", "Total Families 3+ Workers")

county_family_poverty_total %>%
  filter(Variable %in% num_workers)%>%
  st_drop_geometry()%>%
  as_tibble()%>%
  group_by(Location, Variable)%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Variable = factor(Variable, levels = num_workers))%>%
  ggplot(aes( y = Variable, x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
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
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  ggtitle("Percent Changes in Number of Workers in Families from 2021 to 2022")

# 
#### INFLATION WAS 7.8% FROM 2021to 2022 ####


