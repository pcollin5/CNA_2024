View(FMR2024_final_revised)

names(FY23_FMRs_revised)

tn_fmr_24 <- FMR2024_final_revised %>%
  filter(stusps == "TN")%>%
  mutate(Year = 2024)%>%
  select(countyname, fmr_0, fmr_1, fmr_2, fmr_3, fmr_4, Year) %>%
  rename("Location" = countyname,
         "Studio" = fmr_0,
         "1 Bedroom" = fmr_1,
         "2 Bedroom" = fmr_2,
         "3 Bedroom" = fmr_3,
         "4 Bedroom" = fmr_4)%>%
  arrange(-`2 Bedroom`)

  


tn_fmr_23 <- FY23_FMRs_revised %>%
  filter(state_alpha == "TN")%>%
  mutate(Year = 2023)%>%
  select(countyname, fmr_0, fmr_1, fmr_2, fmr_3, fmr_4, Year) %>%
  rename("Location" = countyname,
         "Studio" = fmr_0,
         "1 Bedroom" = fmr_1,
         "2 Bedroom" = fmr_2,
         "3 Bedroom" = fmr_3,
         "4 Bedroom" = fmr_4)%>%
  arrange(-`2 Bedroom`)

rbind(tn_fmr_24, tn_fmr_23)%>%
  pivot_longer(-c(Location,Year),  names_to = "Variable", values_to = "Rent")%>%
  mutate(Year = factor(Year, levels = c("2023", "2024")))%>%
  mutate(Variable = factor(Variable, levels = c("Studio", "1 Bedroom", "2 Bedroom", "3 Bedroom", "4 Bedroom")))%>%
  ggplot(aes(x = Rent, fill = Year, group = Year))+
  geom_histogram()+
  facet_wrap(~Variable)+
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
  ggtitle("TN County FMR in 2023 and 2024")


tn_median_mean_rent <- rbind(tn_fmr_24, tn_fmr_23) %>%
  group_by(Year)%>%
  summarise(across(Studio:`4 Bedroom`, list(median = median, mean = mean)))

table_function(tn_median_mean_rent %>%
  pivot_longer(-Year, names_to = "Bedrooms", values_to = "Rent")%>%
  mutate(Bedrooms = gsub("_", " ", Bedrooms))%>%
  mutate(Rent = round(Rent, 2))%>%  
  pivot_wider(names_from = "Bedrooms", values_from = "Rent"), `TN County Median and Mean Rents for 2023 and 2024`)
 
inf_adjusted_fmr_23_mean_median_rent <- tn_fmr_23 %>%
  mutate(across(Studio:`4 Bedroom`, ~ .x*1.025))%>%
  rbind(tn_fmr_24)%>%
  group_by(Year)%>%
  summarise(across(Studio:`4 Bedroom`, list(median = median, mean = mean)))

table_function(inf_adjusted_fmr_23_mean_median_rent %>%
                 pivot_longer(-Year, names_to = "Bedrooms", values_to = "Rent")%>%
                 mutate(Bedrooms = gsub("_", " ", Bedrooms))%>%
                 mutate(Rent = round(Rent, 2))%>%  
                 pivot_wider(names_from = "Bedrooms", values_from = "Rent"), `Inflation Adjusted TN County Median and Mean Rents for 2023 and 2024`)

uethda_fmr_23 <- fmr_23 %>%
  pivot_longer(-c(Location, Year), names_to = "Bedrooms", values_to = "2023 Rent")%>%
  mutate(`2023 Inf Adj Rent` = round(1.025 * `2023 Rent`,2))

uethda_fmr_24 <- fmr_24 %>%
  pivot_longer(-c(Location, Year), names_to = "Bedrooms", values_to = "2024 Rent")

joined_fmr <- left_join(uethda_fmr_24 %>%
                          select(!Year), 
                        uethda_fmr_23 %>%
                          select(!Year), by = c("Location", "Bedrooms"))

fmr_change <- joined_fmr %>%
  mutate(`Percent Change Total` = round(100*(`2024 Rent` - `2023 Rent`)/`2023 Rent`,2))%>%
  mutate(`Percent Change Inf Adj` = round(100*(`2024 Rent` - `2023 Inf Adj Rent`) / `2023 Inf Adj Rent`,2))

table_function(fmr_change, `2024 to 2023 UETHDA Counties Fair Market Rent`)

table_function(fmr_change %>%
                 select(Location, Bedrooms, `2024 Rent`)%>%
                 pivot_wider(names_from = Bedrooms, values_from = "2024 Rent"), `2024 Fair Market Rent`)

fmr_change %>%
  select(Location, Bedrooms, `Percent Change Total`, `Percent Change Inf Adj`)%>%
  pivot_longer(-c(Location, Bedrooms), names_to = "Change", values_to = "Value")%>%
  mutate(Location = factor(Location, levels = c("Tennessee", "Carter County",
                                                "Greene County", "Hancock County",
                                                "Hawkins County", "Johnson County",
                                                "Sullivan County", "Unicoi County", 
                                                "Washington County")))%>%
  mutate(Size = factor(Bedrooms, levels = c("Studio", "1 Bedroom",
                                        "2 Bedroom", "3 Bedroom",
                                        "4 Bedroom")))%>%
  ggplot(aes( y = fct_rev(Bedrooms), x = Value, fill = Change))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Bedrooms,label = Value), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  theme(axis.text.y = element_text(size = rel(1.5)))+
  theme(axis.text.y = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())+
  ggtitle("Percent Change in Fair Market Rent from 2023 to 2024")
