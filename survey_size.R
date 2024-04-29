survey_for_table <- total_pop_for_table %>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
  mutate(`UETHDA Total` = sum(`2022 ACS Estimate`))%>%
  mutate(Proportion = `2022 ACS Estimate` / `UETHDA Total`)%>%
  #384 sample size 95% confidence, 5% margin of error
  mutate(`Surveys Needed`  = round(384*Proportion,0))%>%
  select(Location, `2022 ACS Estimate`, Proportion, `Surveys Needed`)

table_function(survey_for_table, `Survey's Needed for Stratified Sample`)

total_pop_for_table %>%
filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
mutate(`UETHDA Total` = sum(`2022 ACS Estimate`))

# bristol population = 27,705
# KPT population = 56,150

27705 / 56150


27705 / 83855


118 * 0.4931405

118 * 0.3303917 
