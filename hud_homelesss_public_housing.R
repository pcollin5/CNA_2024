#### public housing and homelessness ####

### import these sheets individually and change name to xYEAR_NAME_OF_SHEET ###
x2023_pit_year <- x2023_pit %>%
  mutate(Year = 2023)%>%
  select(!c(`CoC Category`, `Count Types`))%>%
pivot_longer(-c(`CoC Number`, `CoC Name`, Year), names_to = "Variable", values_to = "Count")

x2022_pit_year <- x2022_pit %>%
  mutate(Year = 2022)%>%
  select(!c(`Count Types`))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`, Year), names_to = "Variable", values_to = "Count")

x2021_pit_year <- x2021_pit %>%
  mutate(Year = 2021)%>%
  select(!c(`Count Types`))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`, Year), names_to = "Variable", values_to = "Count")


x2020_pit_year <- x2020_pit %>%
  mutate(Year = 2020)%>%
  select(!c(`Count Types`))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`, Year), names_to = "Variable", values_to = "Count")


x2019_pit_year <- x2019_pit %>%
  mutate(Year = 2019)%>%
  select(!c(`Count Types`))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`, Year), names_to = "Variable", values_to = "Count")



long_pit_counts <- rbind(x2023_pit_year,x2022_pit_year, x2021_pit_year, x2020_pit_year, x2019_pit_year)

long_pit_counts


#### hic 

x2023_hic_year <- x2023_hic %>%
  mutate(Year = 2023)

x2022_hic_year <- x2022_hic %>%
  mutate(Year = 2022)

x2021_hic_year <- x2021_hic %>%
  mutate(Year = 2021)

x2020_hic_year <- x2020_hic %>%
  mutate(Year = 2020)

x2019_hic_year <- x2019_hic %>%
  mutate(Year = 2019)

hud_coc_beds <- rbind(x2023_hic_year, x2022_hic_year, x2021_hic_year, x2020_hic_year, x2019_hic_year)

# number of beds 
summary(hud_coc_beds)

hud_coc_beds_tn <- hud_coc_beds %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(-`CoC Number`, as.numeric))



hud_coc_beds_tn_named <- hud_coc_beds_tn %>%
  mutate(`CoC Name` = case_when(`CoC Number` == "TN-500" ~ "Chattanooga Southeast",
                                `CoC Number` == "TN-501" ~ "Shelby",
                                `CoC Number` == "TN-502" ~ "Knoxville",
                                `CoC Number` == "TN-503" ~ "Central",
                                `CoC Number` == "TN-504" ~ "Davidson",
                                `CoC Number` == "TN-506" ~ "Upper Cumberland",
                                `CoC Number` == "TN-507" ~ "Jackson",
                                `CoC Number` == "TN-509" ~ "ARCH",
                                `CoC Number` == "TN-510" ~ "Rutherford",
                                `CoC Number` =="TN-512" ~ "Morristown/Blount"))



hud_beds_23 <-hud_coc_beds_tn_named  %>%
  filter(Year == 2023)

hud_beds_22 <- hud_coc_beds_tn_named  %>%
  filter(Year == 2022)


total_beds <- c("Total Year-Round Beds (ES, TH, SH)", "Total Non-DV Year-Round Beds (ES, TH, SH)",
                "Total Year-Round Beds (ES)", "Total Year-Round Beds (SH)", "Total Year-Round Beds (TH)",
                "Total HMIS Year-Round Beds (ES, TH, SH)")

 long_hud_beds_23 <- hud_beds_23 %>%
  pivot_longer(-c(Year, `CoC Number`, `CoC Name`), names_to = "Variable", values_to = "2023 Number")%>%
  select(!Year)

long_hud_beds_22 <- hud_beds_22 %>%
  pivot_longer(-c(Year, `CoC Number`, `CoC Name`), names_to = "Variable", values_to = "2022 Number") %>%
  select(!Year)

joined_coc_beds <- left_join(long_hud_beds_23, long_hud_beds_22, by = c("CoC Number", "CoC Name", "Variable"))

coc_beds_vars <- joined_coc_beds %>%
  filter(Variable %in% total_beds)%>%
  select(Variable)

bed_vars_ordered <- coc_beds_vars$Variable %>%
  unique()

joined_coc_beds %>%
  mutate(Difference = `2023 Number` - `2022 Number`)%>%
  mutate(`Percent Difference` = round(100*(`2023 Number` - `2022 Number`) / `2022 Number`,2)) %>%
  filter(Variable %in% total_beds) %>%
  mutate(Variable = factor(Variable, levels = bed_vars_ordered))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change CoC Beds 2022 to 2023")


joined_coc_beds %>%
  mutate(Difference = `2023 Number` - `2022 Number`)%>%
  mutate(`Percent Difference` = round(100*(`2023 Number` - `2022 Number`) / `2022 Number`,2)) %>%
  filter(Variable %in% total_beds) %>%
  mutate(Variable = factor(Variable, levels = bed_vars_ordered))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Differenece in Number of CoC Beds 2022 to 2023")

table_function(joined_coc_beds %>%
                 filter(`CoC Name` == "ARCH") %>%
                 filter(`2023 Number` > 0)%>%
                 select(!c(1,2))%>%
                 mutate(`2023 Number` = round(`2023 Number`,0))%>%
                 mutate(`2022 Number` = round(`2022 Number`,0)), `ARCH Total Bed Counts (selected for Bed Categories with more than 0)`)

#pit counts

names(hud_pit_count_coc_homeless)

tn_long_pit_counts <- long_pit_counts %>%
  filter(str_detect(`CoC Number`, "TN"))

tn_long_pit_counts

comparison_vars  <- c("Overall Homeless", "Sheltered ES Homeless",
                      "Sheltered TH Homeless", "Sheltered SH Homeless",
                      "Sheltered Total Homeless","Unsheltered Homeless",
                      "Overall Homeless Individuals",
                      "Sheltered Total Homeless Individuals",
                      "Unsheltered Homeless Individuals","Overall Homeless Family Households",
                      "Overall Chronically Homeless","Sheltered Total Chronically Homeless" ,
                      "Unsheltered Chronically Homeless","Overall Homeless Veterans",
                      "Sheltered Total Homeless Veterans", "Unsheltered Homeless Veterans",
                      "Overall Homeless Unaccompanied Youth (Under 25)", 
                      "Sheltered Total Homeless Unaccompanied Youth (Under 25)",
                      "Unsheltered Homeless Unaccompanied Youth (Under 25)"
)


hud_pit_coc_23 <- tn_long_pit_counts %>%
  filter(Year == "2023")%>%
  rename(`2023 Count` = `Count`)%>%
  select(!Year)

hut_pit_coc_22 <- tn_long_pit_counts %>%
  filter(Year == "2022")%>%
  rename(`2022 Count` = `Count`)%>%
  select(!Year)

joined_hud_pit_coc <- left_join(hud_pit_coc_23, hut_pit_coc_22, by = c("CoC Number", "CoC Name", "Variable")) %>%
  mutate(`Difference` = `2023 Count` - `2022 Count`)%>%
  mutate(`Percent Difference` = round(100*(`2023 Count` - `2022 Count`) / `2022 Count`,2))

joined_hud_pit_coc %>%
  filter(Variable %in% comparison_vars) %>%
  mutate(Variable = factor(Variable, levels = comparison_vars))%>%
  filter(str_detect(Variable, "Youth", negate = TRUE))%>%
  filter(str_detect(Variable, "Family", negate = TRUE))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Differenece in Total Number of Homeless 2022 to 2023")

joined_hud_pit_coc %>%
  filter(Variable %in% comparison_vars) %>%
  mutate(Variable = factor(Variable, levels = comparison_vars))%>%
  filter(str_detect(Variable, "Youth", negate = TRUE))%>%
  filter(str_detect(Variable, "Family", negate = TRUE))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in Number of Homeless 2022 to 2023")


joined_hud_pit_coc %>%
  filter(Variable %in% comparison_vars) %>%
  filter(str_detect(Variable, "Youth", negate = TRUE))%>%
  filter(str_detect(Variable, "Family", negate = TRUE))%>%
  mutate(Variable = factor(Variable, levels = comparison_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `2023 Count`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`)+
  geom_label(aes(group = Variable,label = `2023 Count`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Total Count of Homeless Individuals in 2023")

table_function(joined_hud_pit_coc %>%
                 filter(!is.na(`Percent Difference`))
                 filter(`CoC Name` == "Appalachian Regional CoC"))

youth_comparison_vars <- c("Overall Homeless Unaccompanied Youth (Under 25)",
                           "Sheltered Total Homeless Unaccompanied Youth (Under 25)",
                           "Unsheltered Homeless Unaccompanied Youth (Under 25)",
                           "Overall Homeless Unaccompanied Youth Under 18",
                           "Sheltered Total Homeless Unaccompanied Youth Under 18",
                           "Unsheltered Homeless Unaccompanied Youth Under 18",
                           "Overall Homeless Parenting Youth (Under 25)",
                           "Sheltered Total Homeless Parenting Youth (Under 25)",
                           "Unsheltered Homeless Parenting Youth (Under 25)")

joined_hud_pit_coc %>%
  filter(Variable %in% youth_comparison_vars) %>%
  mutate(Variable = factor(Variable, levels = youth_comparison_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Differenece in Total Number of Homeless Youths 2022 to 2023")

joined_hud_pit_coc %>%
  filter(Variable %in% youth_comparison_vars) %>%
  mutate(Variable = factor(Variable, levels = youth_comparison_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`, scales = "free_x")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in Number of Homeless Youth 2022 to 2023")


joined_hud_pit_coc %>%
  filter(Variable %in% youth_comparison_vars) %>%
  mutate(Variable = factor(Variable, levels = youth_comparison_vars))%>%
  ggplot(aes( y = fct_rev(Variable), x = `2023 Count`, fill = `CoC Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`CoC Name`)+
  geom_label(aes(group = Variable,label = `2023 Count`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Total Count of Homeless Youth in 2023")

table_function(joined_hud_pit_coc %>%
                 filter(`CoC Name` == "Appalachian Regional CoC") %>%
                 filter(str_detect(Variable, "Overall"))%>%
                 select(Variable, `2023 Count`, `2022 Count`), `ARCH Point in Time Counts for 2023 and 2022`)

#### get timeline to back to 2019 ####


tn_long_pit_counts %>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")%>%
  ggplot(aes(x = Year, y = Count, group = Variable, color = Variable))+
  geom_line()+
  facet_wrap(~`CoC Name`, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Set1")+
  geom_dl(aes(label=Variable),method=list("last.points"))+
  labs(y = " ", x = " ")+
  xlim(c(2019, 2025))+
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
  ggtitle("TN CoC Total Counts of Homeless and Chronically Homeless from 2019-2023")


tn_long_pit_counts %>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")%>%
  ggplot(aes(x = Year, y = Count, group = Variable, color = Variable))+
  geom_line()+
  facet_wrap(~`CoC Name`)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Set1")+
  geom_dl(aes(label=Variable),method=list("last.points"))+
  labs(y = " ", x = " ")+
  xlim(c(2019, 2025))+
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
  ggtitle("TN CoC Total Counts of Homeless and Chronically Homeless from 2019-2023")




#### state pit data set ####

### importing these

x2023_state_pit_year <- x2023_state_pit %>%
  mutate(Year = 2023)%>%
  select(!c(`Number of CoCs`))%>%
  pivot_longer(-c(State,Year), names_to = "Variable", values_to = "Count")

x2022_pit_state

x2022_state_pit_year <- x2022_pit_state %>%
  mutate(Year = 2022)%>%
  select(!c(`Number of CoCs`))%>%
  pivot_longer(-c(State,Year), names_to = "Variable", values_to = "Count")

x2021_state_pit_year <- x2021_state_pit %>%
  mutate(Year = 2021)%>%
  select(!c(`Number of CoCs`))%>%
  pivot_longer(-c(State,Year), names_to = "Variable", values_to = "Count")

x2020_state_pit_year <- x2020_state_pit %>%
  mutate(Year = 2020)%>%
  select(!c(`Number of CoCs`))%>%
  pivot_longer(-c(State,Year), names_to = "Variable", values_to = "Count")

x2019_state_pit_year <- x2019_state_pit %>%
  mutate(Year = 2019)%>%
  select(!c(`Number of CoCs`))%>%
  pivot_longer(-c(State,Year), names_to = "Variable", values_to = "Count")


long_full_state_pit <- rbind(x2023_state_pit_year, x2022_state_pit_year, x2021_state_pit_year, x2020_state_pit_year, x2019_state_pit_year)

options(scipen = 999)

long_full_state_pit %>%
  filter(State == "TN"|
           State == "Total"|
           State == "KY"|
           State == "GA"|
           State == "VA"|
           State == "NC"|
           State == "SC")%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")%>%
  mutate(State = factor(State, levels = c("Total", "TN", "GA", "KY", "VA", "NC", "SC")))%>%
  ggplot(aes(x = Year, y = Count, group = Variable, color = Variable))+
  geom_line()+
  facet_wrap(~State, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Set1")+
  geom_dl(aes(label=Variable),method=list("last.points"))+
  labs(y = " ", x = " ")+
  xlim(c(2019, 2025))+
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
  ggtitle("TN and Relavent Total Counts of Homeless and Chronically Homeless from 2019-2023")


###### 

state_pit_counts %>%
  select(!`Number of CoCs`)%>%
  pivot_longer(-c("Year", "State"), names_to = "Variable", values_to = "Count")%>%
  mutate(State = factor(State, levels = c("USA", "TN", "GA", "KY", "VA", "NC", "SC")))%>%
  ggplot(aes(x = Year, y = Count, group = Variable, color = Variable))+
  geom_line()+
  facet_wrap(~State, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Set1")+
  geom_dl(aes(label=Variable),method=list("last.points"))+
  labs(y = " ", x = " ")+
  xlim(c(2007, 2025))+
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
  ggtitle("TN and Relavent Total Counts of Homeless and Chronically Homeless from 2007-2023")


#### coc pit counts #####

coc_2023 <- X2023 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  select(!`CoC Category`)%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2023)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2023

X2021

coc_2021 <- X2021 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2021)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2021

coc_2020 <- X2020 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2020)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2020

coc_2019 <- X2019 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2019)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2019

coc_2018 <- X2018 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2018)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2018

coc_2017 <- X2017 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2017)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2017

coc_2022 <- X2022 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2022)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2022

coc_2015 <- X2015 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2015)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2015

coc_2014 <- X2014 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2014)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2014

coc_2013 <- X2013 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2013)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2013

coc_2012 <- X2012 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2012)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless"|
           Variable == "Sheltered Total Chronically Homeless"|
           Variable == "Unsheltered Chronically Homeless")

coc_2012

coc_2011 <- X2011 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2011)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless Individuals"|
           Variable == "Sheltered Total Chronically Homeless Individuals"|
           Variable == "Unsheltered Chronically Homeless Individuals")%>%
  mutate(Variable = str_remove_all(Variable, " Individuals"))

coc_2011

coc_2010 <- X2010 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2010)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless Individuals"|
           Variable == "Sheltered Total Chronically Homeless Individuals"|
           Variable == "Unsheltered Chronically Homeless Individuals")%>%
  mutate(Variable = str_remove_all(Variable, " Individuals"))

coc_2010

coc_2009 <- X2009 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2009)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless Individuals"|
           Variable == "Sheltered Total Chronically Homeless Individuals"|
           Variable == "Unsheltered Chronically Homeless Individuals")%>%
  mutate(Variable = str_remove_all(Variable, " Individuals"))

coc_2009

coc_2008 <- X2008 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2008)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless Individuals"|
           Variable == "Sheltered Total Chronically Homeless Individuals"|
           Variable == "Unsheltered Chronically Homeless Individuals")%>%
  mutate(Variable = str_remove_all(Variable, " Individuals"))

coc_2008

coc_2007 <- X2007 %>%
  filter(str_detect(`CoC Number`, "TN"))%>%
  mutate(across(.cols = -c(`CoC Number`, `CoC Name`), .fns = as.numeric))%>%
  pivot_longer(-c(`CoC Number`, `CoC Name`), names_to = "Variable", values_to = "Count")%>%
  mutate(Year = 2007)%>%
  mutate(Variable = remove_after_comma_function(Variable))%>%
  filter(Variable == "Overall Homeless"|
           Variable == "Sheltered Total Homeless"|
           Variable == "Unsheltered Homeless"|
           Variable == "Overall Chronically Homeless Individuals"|
           Variable == "Sheltered Total Chronically Homeless Individuals"|
           Variable == "Unsheltered Chronically Homeless Individuals")%>%
  mutate(Variable = str_remove_all(Variable, " Individuals"))

coc_2007

coc_2007_2023 <- rbind(coc_2023, coc_2021, coc_2020, coc_2019, coc_2018, coc_2017, coc_2022, coc_2015, coc_2014, coc_2013, coc_2012, coc_2011, coc_2010, coc_2009, coc_2008, coc_2007)

coc_2007_2023 %>%
  ggplot(aes(x = Year, y = Count, group = Variable, color = Variable))+
  geom_line()+
  facet_wrap(~`CoC Name`, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Set1")+
  geom_dl(aes(label=Variable),method=list("last.points"))+
  labs(y = " ", x = " ")+
  xlim(c(2007, 2025))+
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
  ggtitle("TN CoC Total Counts of Homeless and Chronically Homeless from 2007-2023")

#### public housing ####

#picture

hud_picture_2023 <- hudPicture2023_502928

names(hud_picture)

hud_picture <- hud_picture_2023 %>%
  mutate(Year = 2023)


uethda_counties <- c("Carter County", "Greene County", "Hancock County", "Johnson County", "Sullivan County", "Unicoi County", "Washington County")

picture_vars <- c("Year", "Name", "Subsidized units available",
                  "% Occupied", "% moved in past year",
                  "Number of people per unit",
                  "Number of people: total",
                  "Average Family Expenditure per month ($$)",
                  "Average HUD Expenditure per month ($$)",
                  "Household income per year",
                  "% Households where wages are major source of income",
                  "% Households where welfare is major source of income",
                  "% Households with other major sources of income",
                  "% of local median (Household income)",
                  "% very low income",
                  "% extremely low income",
                  "% 2+ adults with children",
                  "% 1 adult with children",
                  "% with disability, among all persons in households",
                  "% 62 or more (Head or spouse)",
                  "% Minority",
                  "Average months on waiting list",
                  "Average months since moved in",
                  "% with utility allowance", 
                  "Average utility allowance $$",
                  "% Overhoused",
                  "% in poverty (Census tract)",
                  "% minority (Census tract)",
                  "% single family owners (Census tract)")

table_function(hud_picture %>%
                 select(picture_vars)%>%
                 filter(Name %in% uethda_counties)%>%
                 mutate(across(.cols = -c(Year, Name), .fns = as.numeric)) %>%
                 filter(Year == 2023)%>%
                 select(!Year), `2023 HUD Public Housing Picture`)


hud_picture_23 <- hud_picture %>%
  select(picture_vars)%>%
  filter(Name %in% uethda_counties)%>%
  mutate(across(.cols = -c(Year, Name), .fns = as.numeric)) %>%
  pivot_longer(-c(Year, Name), names_to = "Variable", values_to = "2023 Value")%>%
  filter(Year == 2023)%>%
  select(!Year)

hud_picture_23

hud_picture_22 <- hud_picture_2022 %>%
  select(picture_vars)%>%
  mutate(across(.cols = -c(Year, Name), .fns = as.numeric)) %>%
  pivot_longer(-c(Year, Name), names_to = "Variable", values_to = "2022 Value")%>%
  filter(Year == 2022)%>%
  select(!Year)

hud_picture_22

hud_picture_23

joined_hud_picture <- left_join(hud_picture_23, hud_picture_22, by = c("Name", "Variable"))

percents_hud_picture<- joined_hud_picture %>%
  filter(str_detect(Variable, "%"))%>%
  select(Variable)%>%
  unique()

percents_hud_levels <- percents_hud_picture$Variable

totals_hud_picture<- joined_hud_picture %>%
  filter(str_detect(Variable, "%",negate = TRUE))%>%
  select(Variable)%>%
  unique()

totals_hud_levels <- totals_hud_picture$Variable


joined_hud_picture

joined_hud_picture %>%
  filter(str_detect(Variable, "%"))%>%
  mutate(`Percent Difference` = `2023 Value` - `2022 Value`)%>%
  mutate(Variable = factor(Variable, levels = percents_hud_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Name`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in HUD Public Housing Measures 2022 to 2023")


joined_hud_picture %>%
  filter(str_detect(Variable, "%", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*(`2023 Value` - `2022 Value`) / `2022 Value`,2))%>%
  mutate(Variable = factor(Variable, levels = totals_hud_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = `Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Name`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change in HUD Public Housing Measures 2022 to 2023")


#county


#### have to delete the extra columns at the end, and sumlevel and subprogram from beginning ######

names(hud_county)

View(hud_county)

hud_county <- hud_county %>%
  filter(str_detect(states, "TN"))%>%
  filter(Location %in% uethda_counties)

names(hud_county_22)

names(hud_county) <- names(hud_county_22)

hud_county_vars <- c("Year", "Location", "Program Label", 
                     "Subsidized Units Available","% Occupied",
                     "Total Number of People",
                     "People Per Units","Average Household Contribution per Month",
                     "Average HUD Contribution per Month",
                     "HH Income per Year","% of HH Wages Majority of Income",
                     "% HH Welfare Majority of Income","% HH Other Majority of Income",
                     "HH % of Median Income","HH < 50% Median Income",
                     "HH % < 30% Median Income", "% HH 2 Adults with Children",
                     "% HH 1 Adult with Children","% HH with Disability",
                     "% HH Minority","% HH Hoh 62+ Years",
                     "Average Months on Waiting List",
                     "Average Months since Move In",
                     "% HH with Utility Allowance",
                     "Average Utility Allowance",
                     "% More Bedrooms than People",
                     "% Population in Census Tract in Poverty",
                     "% Population in Census Tract Minority",
                     "% HH Owner Occupants of Single Family Detached Homes")




table_function(hud_county %>%
                 filter(str_detect(states, "TN"))%>%
                 select(hud_county_vars)%>%
                 filter(Location %in% uethda_counties)%>%
                 mutate(across(.cols = -c(Year, Location, `Program Label`), .fns = as.numeric)) %>%
                 filter(Year ==  as.Date("2023-12-31"))%>%
                 arrange(Location)%>%
                 select(!Year), `2023 HUD Public Housing by Program`)


hud_county_23 <- hud_county %>%
  select(hud_county_vars)%>%
  mutate(across(.cols = -c(Year, Location, `Program Label`), .fns = as.numeric)) %>%
  pivot_longer(-c(Year, Location, `Program Label`), names_to = "Variable", values_to = "2023 Value")%>%
  filter(Year == as.Date("2023-12-31"))%>%
  select(!Year)%>%
  filter(str_detect(`Program Label`, "Summary", negate = TRUE))

hud_county_23

hud_county_22 <- hud_county_22 %>%
  select(hud_county_vars)%>%
  mutate(across(.cols = -c(Year, Location, `Program Label`), .fns = as.numeric)) %>%
  pivot_longer(-c(Year, Location, `Program Label`), names_to = "Variable", values_to = "2022 Value")%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  filter(Year == 2022)%>%
  select(!Year)%>%
  filter(str_detect(`Program Label`, "Summary", negate = TRUE))

hud_county_22

joined_hud_county <- left_join(hud_county_23, hud_county_22, by = c("Location", "Variable", "Program Label"))

joined_hud_county

percents_hud_county<- joined_hud_county %>%
  filter(str_detect(Variable, "%"))%>%
  select(Variable)%>%
  unique()

percents_hud_county_levels <- percents_hud_county$Variable

totals_hud_county<- joined_hud_county %>%
  filter(str_detect(Variable, "%",negate = TRUE))%>%
  select(Variable)%>%
  unique()

totals_hud_county_levels <- totals_hud_county$Variable


joined_hud_county %>%
  filter(str_detect(Variable, "%"))%>%
  filter(str_detect(`Program Label`, "Section 8"))%>%
  mutate(`Percent Difference` = `2023 Value` - `2022 Value`)%>%
  mutate(Variable = factor(Variable, levels = percents_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in HUD Section 8 Measures 2022 to 2023")


joined_hud_county %>%
  filter(str_detect(Variable, "%", negate = TRUE))%>%
  filter(str_detect(`Program Label`, "Section 8"))%>%
  mutate(`Percent Change` = round(100*(`2023 Value` - `2022 Value`) / `2022 Value`,2))%>%
  mutate(Variable = factor(Variable, levels = totals_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change in HUD Section 8 Measures 2022 to 2023")

joined_hud_county %>%
  filter(str_detect(Variable, "%"))%>%
  filter(str_detect(`Program Label`, "Section 8"))%>%
  mutate(`Percent Difference` = `2023 Value` - `2022 Value`)%>%
  mutate(Variable = factor(Variable, levels = percents_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in HUD Section 8 Measures 2022 to 2023")


joined_hud_county %>%
  filter(str_detect(Variable, "%", negate = TRUE))%>%
  filter(str_detect(`Program Label`, "Section 8"))%>%
  mutate(`Percent Change` = round(100*(`2023 Value` - `2022 Value`) / `2022 Value`,2))%>%
  mutate(Variable = factor(Variable, levels = totals_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change in HUD Section 8 Measures 2022 to 2023")

joined_hud_county %>%
  filter(str_detect(Variable, "%"))%>%
  filter(str_detect(`Program Label`, "Public Housing"))%>%
  mutate(`Percent Difference` = `2023 Value` - `2022 Value`)%>%
  mutate(Variable = factor(Variable, levels = percents_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in HUD Public Housing Measures 2022 to 2023")


joined_hud_county %>%
  filter(str_detect(Variable, "%", negate = TRUE))%>%
  filter(str_detect(`Program Label`, "Public Housing"))%>%
  mutate(`Percent Change` = round(100*(`2023 Value` - `2022 Value`) / `2022 Value`,2))%>%
  mutate(Variable = factor(Variable, levels = totals_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change in HUD Public Housing Measures 2022 to 2023")

joined_hud_county %>%
  filter(str_detect(Variable, "%"))%>%
  filter(str_detect(`Program Label`, "Housing Choice Vouchers"))%>%
  mutate(`Percent Difference` = `2023 Value` - `2022 Value`)%>%
  mutate(Variable = factor(Variable, levels = percents_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Difference`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Difference`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Differenece in HUD Housing Choice Vouchers Measures 2022 to 2023")


joined_hud_county %>%
  filter(str_detect(Variable, "%", negate = TRUE))%>%
  filter(str_detect(`Program Label`, "Housing Choice Vouchers"))%>%
  mutate(`Percent Change` = round(100*(`2023 Value` - `2022 Value`) / `2022 Value`,2))%>%
  mutate(Variable = factor(Variable, levels = totals_hud_county_levels))%>%
  ggplot(aes( y = fct_rev(Variable), x = `Percent Change`, fill = `Location`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`Location`, scales = "free_x")+
  scale_fill_brewer(palette = "Pastel1")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
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
  ggtitle("Percent Change in HUD Housing Choice Vouchers Measures 2022 to 2023")
