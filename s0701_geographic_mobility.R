######S0701 - geographic mobility ######
View(uethda_county_mobility)

uethda_tract_mobility

uethda_schools_mobility

View(subject_table_variables_20)

mobility_vars <- c("S0701_C01_001", "S0701_C01_002","S0701_C01_003", "S0701_C01_004", "S0701_C01_005", "S0701_C01_006",
                   "S0701_C01_007","S0701_C01_008","S0701_C01_009","S0701_C01_010",
                   "S0701_C01_011","S0701_C01_012","S0701_C01_013","S0701_C01_015","S0701_C01_016","S0701_C01_017",
                   "S0701_C01_018","S0701_C01_019","S0701_C01_020","S0701_C01_021","S0701_C01_022","S0701_C01_023",
                   "S0701_C01_024","S0701_C01_027","S0701_C01_034","S0701_C01_035","S0701_C01_036","S0701_C01_037",
                   "S0701_C01_038","S0701_C01_040","S0701_C01_041","S0701_C01_042","S0701_C01_043","S0701_C01_044",
                   "S0701_C01_045","S0701_C01_046","S0701_C01_047","S0701_C01_048","S0701_C01_049","S0701_C01_050",
                   "S0701_C01_051","S0701_C01_052","S0701_C01_053","S0701_C01_054","S0701_C01_055",
                   "S0701_C02_001", "S0701_C02_002","S0701_C02_003","S0701_C02_004", "S0701_C02_005", "S0701_C02_006",
                   "S0701_C02_007", "S0701_C02_008","S0701_C02_009","S0701_C02_010",
                   "S0701_C02_011","S0701_C02_012","S0701_C02_013","S0701_C02_015","S0701_C02_016","S0701_C02_017",
                   "S0701_C02_018","S0701_C02_019","S0701_C02_020","S0701_C02_021","S0701_C02_022","S0701_C02_023",
                   "S0701_C02_024","S0701_C02_027","S0701_C02_034","S0701_C02_035","S0701_C02_036","S0701_C02_037",
                   "S0701_C02_038","S0701_C02_040","S0701_C02_041","S0701_C02_042","S0701_C02_043","S0701_C02_044",
                   "S0701_C02_045","S0701_C02_046","S0701_C02_047","S0701_C02_048","S0701_C02_049","S0701_C02_050",
                   "S0701_C02_051","S0701_C02_052","S0701_C02_053","S0701_C02_054","S0701_C02_055",
                   "S0701_C03_001", "S0701_C03_002","S0701_C03_003","S0701_C03_004", "S0701_C03_005", "S0701_C03_006",
                   "S0701_C03_007", "S0701_C03_008","S0701_C03_009","S0701_C03_010",
                   "S0701_C03_011","S0701_C03_012","S0701_C03_013","S0701_C03_015","S0701_C03_016","S0701_C03_017",
                   "S0701_C03_018","S0701_C03_019","S0701_C03_020","S0701_C03_021","S0701_C03_022","S0701_C03_023",
                   "S0701_C03_024","S0701_C03_027","S0701_C03_034","S0701_C03_035","S0701_C03_036","S0701_C03_037",
                   "S0701_C03_038","S0701_C03_040","S0701_C03_041","S0701_C03_042","S0701_C03_043","S0701_C03_044",
                   "S0701_C03_045","S0701_C03_046","S0701_C03_047","S0701_C03_048","S0701_C03_049","S0701_C03_050",
                   "S0701_C03_051","S0701_C03_052","S0701_C03_053","S0701_C03_054","S0701_C03_055",
                   "S0701_C04_001", "S0701_C04_002","S0701_C04_003", "S0701_C04_004", "S0701_C04_005", "S0701_C04_006",
                   "S0701_C04_007", "S0701_C04_008","S0701_C04_009","S0701_C04_010",
                   "S0701_C04_011","S0701_C04_012","S0701_C04_013","S0701_C04_015","S0701_C04_016","S0701_C04_017",
                   "S0701_C04_018","S0701_C04_019","S0701_C04_020","S0701_C04_021","S0701_C04_022","S0701_C04_023",
                   "S0701_C04_024","S0701_C04_027","S0701_C04_034","S0701_C04_035","S0701_C04_036","S0701_C04_037",
                   "S0701_C04_038","S0701_C04_040","S0701_C04_041","S0701_C04_042","S0701_C04_043","S0701_C04_044",
                   "S0701_C04_045","S0701_C04_046","S0701_C04_047","S0701_C04_048","S0701_C04_049","S0701_C04_050",
                   "S0701_C04_051","S0701_C04_052","S0701_C04_053","S0701_C04_054","S0701_C04_055",
                   "S0701_C05_001", "S0701_C05_002","S0701_C05_003","S0701_C05_004", "S0701_C05_005", "S0701_C05_006",
                   "S0701_C05_007", "S0701_C05_008","S0701_C05_009","S0701_C05_010",
                   "S0701_C05_011","S0701_C05_012","S0701_C05_013","S0701_C05_015","S0701_C05_016","S0701_C05_017",
                   "S0701_C05_018","S0701_C05_019","S0701_C05_020","S0701_C05_021","S0701_C05_022","S0701_C05_023",
                   "S0701_C05_024","S0701_C05_027","S0701_C05_034","S0701_C05_035","S0701_C05_036","S0701_C05_037",
                   "S0701_C05_038","S0701_C05_040","S0701_C05_041","S0701_C05_042","S0701_C05_043","S0701_C05_044",
                   "S0701_C05_045","S0701_C05_046","S0701_C05_047","S0701_C05_048","S0701_C05_049","S0701_C05_050",
                   "S0701_C05_051","S0701_C05_052","S0701_C05_053","S0701_C05_054","S0701_C05_055")

filtered_uethda_schools_mobility <- uethda_schools_mobility %>%
  filter(Variable %in% mobility_vars)

filtered_uethda_county_mobility <- uethda_county_mobility %>%
  filter(Variable %in% mobility_vars)

filtered_uethda_tract_mobility <- uethda_tract_mobility %>%
  filter(Variable %in% mobility_vars)

View(filtered_uethda_county_mobility %>%
       filter(str_detect(Location, "Carter")))

mobility_names <- c("Total Population over 1 Year", "Total Population 1-4 Years", 
                    "Total Population 5-17 Years", "Total Population 18-24 Years",
                    "Total Population 25-34 Years", "Total Population 35-44 Years", 
                    "Total Population 45-54 Years","Total Population 55-64 Years", 
                    "Total Population 65-74 Years", "Total Population 75+ Years", 
                    "Median Age", "Total Male Population",
                    "Total Female Population", 
                    "Total Population White", "Total Population Black", 
                    "Total Population Native American","Total Population Asian", 
                    "Total Population Pacific Islander","Total Population Some Other Race", "Total Population Two or More Races", 
                    "Total Population Hispanic", "Total Population Non-Hispanic", 
                    "Total Native Citizens", "Total Non-Citizens",
                    "Total Population 25+ Years Less than HS Degree", "Total Population 25+ Years with HS Degree", 
                    "Total Population 25+ Years Some College or Associates Degree", "Total Population 25+ Years Bachelor's Degree", 
                    "Total Population 25+ Years Graduate or Professional Degree", "Total Population 15+ Years Income below $10k", 
                    "Total Population 15+ Years Income $10-14.9k", "Total Population 15+ Years Income $15-24.9K",
                    "Total Population 15+ Years Income $25-34.9k", "Total Population 15+ Years Income $25-49.9k", 
                    "Total Population 15+ Years Income $50-64.9k","Total Population 15+ Years Income $65-74.9k",
                    "Total Population 15+ Years Income $75k or More", "Total Population 15+ Years Median Income",
                    "Total Population 1+ Years for whom Poverty Status is Determined", "Total Population below 100% of Poverty Level", 
                    "Total Population between 100-149% of Poverty Level", "Total Population 150%+ of the Poverty Level", 
                    "Total Population in Housing Units","Total Population in Owner-Occupied Housing Units", 
                    "Total Population in Renter-Occupied Housing Units",
                    "Percent Population over 1 Year Moved within same County", 
                    "Percent Population 1-4 Years Moved within same County", "Percent Population 5-17 Years Moved within same County", 
                    "Percent Population 18-24 Years Moved within same County","Percent Population 25-34 Years Moved within same County", 
                    "Percent Population 35-44 Years Moved within same County", "Percent Population 45-54 Years Moved within same County",
                    "Percent Population 55-64 Years Moved within same County", "Percent Population 65-74 Years Moved within same County", 
                    "Percent Population 75+ Years Moved within same County", "Median Age Moved within same County", 
                    "Percent Male Population Moved within same County","Percent Female Population Moved within same County", 
                    "Percent Population White Moved within same County", "Percent Population Black Moved within same County", 
                    "Percent Population Native American Moved within same County","Percent Population Asian Moved within same County", 
                    "Percent Population Pacific Islander Moved within same County","Percent Population Some Other Race Moved Within same County", "Percent Population Two or More Races Moved within same County", 
                    "Percent Population Hispanic Moved within same County", "Percent Population Non-Hispanic Moved within same County", 
                    "Percent Native Citizens Moved within same County", "Percent Non-Citizens Moved within same County",
                    "Percent Population 25+ Years Less than HS Degree Moved within same County", "Percent Population 25+ Years with HS Degree Moved within same County", 
                    "Percent Population 25+ Years Some College or Associates Degree Moved within same County","Percent Population 25+ Years Bachelor's Degree Moved within same County", 
                    "Percent Population 25+ Years Graduate or Professional Degree Moved within same County", 
                    "Percent Population 15+ Years Income below $10k Moved within same County", 
                    "Percent Population 15+ Years Income $10-14.9k Moved within same County", 
                    "Percent Population 15+ Years Income $15-24.9K Moved within same County",
                    "Percent Population 15+ Years Income $25-34.9k Moved within same County", 
                    "Percent Population 15+ Years Income $25-49.9k Moved within same County", 
                    "Percent Population 15+ Years Income $50-64.9k Moved within same County",
                    "Percent Population 15+ Years Income $65-74.9k Moved within same County",
                    "Percent Population 15+ Years Income $75k or More Moved within same County", 
                    "Percent Population 15+ Years Median Income Moved within same County",
                    "Percent Population 1+ Years for whom Poverty Status is Determined Moved within same County", 
                    "Percent Population below 100% of Poverty Level Moved within same County", 
                    "Percent Population between 100-149% of Poverty Level Moved within same County", 
                    "Percent Population 150%+ of the Poverty Level Moved within same County", 
                    "Percent Population in Housing Units Moved within same County",
                    "Percent Population in Owner-Occupied Housing Units Moved within same County", 
                    "Percent Population in Renter-Occupied Housing Units Moved within same County",
                    "Percent Population over 1 Year Moved from different County, same State", 
                    "Percent Population 1-4 Years Moved from different County, same State", 
                    "Percent Population 5-17 Years Moved from different County, same State", 
                    "Percent Population 18-24 Years Moved from different County, same State",
                    "Percent Population 25-34 Years Moved from different County, same State", 
                    "Percent Population 35-44 Years Moved from different County, same State", 
                    "Percent Population 45-54 Years Moved from different County, same State",
                    "Percent Population 55-64 Years Moved from different County, same State", 
                    "Percent Population 65-74 Years Moved from different County, same State", 
                    "Percent Population 75+ Years Moved from different County, same State", 
                    "Median Age Moved from different County, same State", "Percent Male Population Moved from different County, same State",
                    "Percent Female Population Moved from different County, same State", 
                    "Percent Population White Moved from different County, same State", "Percent Population Black Moved from different County, same State", 
                    "Percent Population Native American Moved from different County, same State",
                    "Percent Population Asian Moved from different County, same State", 
                    "Percent Population Pacific Islander Moved from different County, same State",
                    "Percent Population Some Other Race Moved from different County, same State",
                    "Percent Population Two or More Races Moved from different County, same State", 
                    "Percent Population Hispanic Moved from different County, same State", 
                    "Percent Population Non-Hispanic Moved from different County, same State", 
                    "Percent Native Citizens Moved from different County, same State", 
                    "Percent Non-Citizens Moved from different County, same State",
                    "Percent Population 25+ Years Less than HS Degree Moved from different County, same State", 
                    "Percent Population 25+ Years with HS Degree Moved from different County, same State", 
                    "Percent Population 25+ Years Some College or Associates Degree Moved from different County, same State",
                    "Percent Population 25+ Years Bachelor's Degree Moved from different County, same State", "Percent Population 25+ Years Graduate or Professional Degree Moved from different County, same State", 
                    "Percent Population 15+ Years Income below $10k Moved from different County, same State", "Percent Population 15+ Years Income $10-14.9k Moved from different County, same State", 
                    "Percent Population 15+ Years Income $15-24.9K Moved from different County, same State",
                    "Percent Population 15+ Years Income $25-34.9k Moved from different County, same State", 
                    "Percent Population 15+ Years Income $25-49.9k Moved from different County, same State", 
                    "Percent Population 15+ Years Income $50-64.9k Moved from different County, same State",
                    "Percent Population 15+ Years Income $65-74.9k Moved from different County, same State",
                    "Percent Population 15+ Years Income $75k or More Moved from different County, same State", 
                    "Percent Population 15+ Years Median Income Moved from different County, same State",
                    "Percent Population 1+ Years for whom Poverty Status is Determined Moved from different County, same State", 
                    "Percent Population below 100% of Poverty Level Moved from different County, same State", 
                    "Percent Population between 100-149% of Poverty Level Moved from different County, same State", 
                    "Percent Population 150%+ of the Poverty Level Moved from different County, same State", 
                    "Percent Population in Housing Units Moved from different County, same State",
                    "Percent Population in Owner-Occupied Housing Units Moved from different County, same State", "Percent Population in Renter-Occupied Housing Units Moved from different County, same State",
                    "Percent Population over 1 Year Moved from different State", "Percent Population 1-4 Years Moved from different State", "Percent Population 5-17 Years Moved from different State", "Percent Population 18-24 Years Moved from different State",
                    "Percent Population 25-34 Years Moved from different State", "Percent Population 35-44 Years Moved from different State", "Percent Population 45-54 Years Moved from different State",
                    "Percent Population 55-64 Years Moved from different State", "Percent Population 65-74 Years Moved from different State", "Percent Population 75+ Years Moved from different State", "Median Age Moved from different State", 
                    "Percent Male Population Moved from different State",
                    "Percent Female Population Moved from different State", "Percent Population White Moved from different State", "Percent Population Black Moved from different State", "Percent Population Native American Moved from different State",
                    "Percent Population Asian Moved from different State", "Percent Population Pacific Islander Moved from different State","Percent Population Some Other Race Moved from different State", "Percent Population Two or More Races Moved from different State", 
                    "Percent Population Hispanic Moved from different State", "Percent Population Non-Hispanic Moved from different State", "Percent Native Citizens Moved from different State", "Percent Non-Citizens Moved from different State",
                    "Percent Population 25+ Years Less than HS Degree Moved from different State", "Percent Population 25+ Years with HS Degree Moved from different State", "Percent Population 25+ Years Some College or Associates Degree Moved from different State",
                    "Percent Population 25+ Years Bachelor's Degree Moved from different State", "Percent Population 25+ Years Graduate or Professional Degree Moved from different State", 
                    "Percent Population 15+ Years Income below $10k Moved from different State", "Percent Population 15+ Years Income $10-14.9k Moved from different State", "Percent Population 15+ Years Income $15-24.9K Moved from different State",
                    "Percent Population 15+ Years Income $25-34.9k Moved from different State", "Percent Population 15+ Years Income $25-49.9k Moved from different State", "Percent Population 15+ Years Income $50-64.9k Moved from different State",
                    "Percent Population 15+ Years Income $65-74.9k Moved from different State","Percent Population 15+ Years Income $75k or More Moved from different State", "Percent Population 15+ Years Median Income Moved from different State",
                    "Percent Population 1+ Years for whom Poverty Status is Determined Moved from different State", "Percent Population below 100% of Poverty Level Moved from different State", 
                    "Percent Population between 100-149% of Poverty Level Moved from different State", "Percent Population 150%+ of the Poverty Level Moved from different State", "Percent Population in Housing Units Moved from different State",
                    "Percent Population in Owner-Occupied Housing Units Moved from different State", "Percent Population in Renter-Occupied Housing Units Moved from different State",
                    "Percent Population over 1 Year Moved from abroad", "Percent Population 1-4 Years Moved from abroad", "Percent Population 5-17 Years Moved from abroad", "Percent Population 18-24 Years Moved from abroad",
                    "Percent Population 25-34 Years Moved from abroad", "Percent Population 35-44 Years Moved from abroad", "Percent Population 45-54 Years Moved from abroad",
                    "Percent Population 55-64 Years Moved from abroad", "Percent Population 65-74 Years Moved from abroad", "Percent Population 75+ Years Moved from abroad", "Median Age Moved from abroad", "Percent Male Population Moved from abroad",
                    "Percent Female Population Moved from abroad", "Percent Population White Moved from abroad", "Percent Population Black Moved from abroad", "Percent Population Native American Moved from abroad",
                    "Percent Population Asian Moved from abroad", "Percent Population Pacific Islander Moved from abroad","Percent Population Some Other Race Moved from abroad", "Percent Population Two or More Races Moved from abroad", 
                    "Percent Population Hispanic Moved from abroad", "Percent Population Non-Hispanic Moved from abroad", "Percent Native Citizens Moved from abroad", "Percent Non-Citizens Moved from abroad",
                    "Percent Population 25+ Years Less than HS Degree Moved from abroad", "Percent Population 25+ Years with HS Degree Moved from abroad", "Percent Population 25+ Years Some College or Associates Degree Moved from abroad",
                    "Percent Population 25+ Years Bachelor's Degree Moved from abroad", "Percent Population 25+ Years Graduate or Professional Degree Moved from abroad", 
                    "Percent Population 15+ Years Income below $10k Moved from abroad", "Percent Population 15+ Years Income $10-14.9k Moved from abroad", "Percent Population 15+ Years Income $15-24.9K Moved from abroad",
                    "Percent Population 15+ Years Income $25-34.9k Moved from abroad", "Percent Population 15+ Years Income $25-49.9k Moved from abroad", "Percent Population 15+ Years Income $50-64.9k Moved from abroad",
                    "Percent Population 15+ Years Income $65-74.9k Moved from abroad","Percent Population 15+ Years Income $75k or More Moved from abroad", "Percent Population 15+ Years Median Income Moved from abroad",
                    "Percent Population 1+ Years for whom Poverty Status is Determined Moved from abroad", "Percent Population below 100% of Poverty Level Moved from abroad", 
                    "Percent Population between 100-149% of Poverty Level Moved from abroad", "Percent Population 150%+ of the Poverty Level Moved from abroad", "Percent Population in Housing Units Moved from abroad",
                    "Percent Population in Owner-Occupied Housing Units Moved from abroad", "Percent Population in Renter-Occupied Housing Units Moved from abroad")


length(mobility_vars)

length(mobility_names)

# test to make sure the variable labels are the same from year to year 
test_1 <- filtered_uethda_county_mobility %>%
  filter(Year == "2022")%>%
  filter(str_detect(Location, "Carter"))%>%
  select(Variable, label)%>%
  st_set_geometry(NULL)

test_2 <- filtered_uethda_county_mobility %>%
  filter(Year == "2021")%>%
  filter(str_detect(Location, "Carter"))%>%
  select(Variable, label)%>%
  st_set_geometry(NULL)

test_1 == test_2

View(filtered_uethda_county_mobility %>%
       filter(str_detect(Location, "Carter")))
# they are, hurray  THEY WONT EXACTLY MATCH BECAUSE INFLATION ADJUSTED DOLLARS CHANGE FOR EVERY YEAR

# bind the names and variables together 

named_uethda_county_mobility <- cbind(filtered_uethda_county_mobility, mobility_names)

named_uethda_tract_mobility <- cbind(filtered_uethda_tract_mobility, mobility_names)

named_uethda_school_mobility <- cbind(filtered_uethda_schools_mobility, mobility_names)

uethda_county_mobility_ready <- named_uethda_county_mobility %>%
  select(Location, mobility_names, Estimate, MOE, Year, geometry)%>%
  rename("Variable" = "mobility_names")

uethda_tract_mobility_ready <- named_uethda_tract_mobility %>%
  select(Location, mobility_names, Estimate, MOE, Year, geometry)%>%
  rename("Variable" = "mobility_names")

uethda_school_mobility_ready <- named_uethda_school_mobility%>%
  select(Location, mobility_names, Estimate, MOE, Year, geometry)%>%
  rename("Variable" = "mobility_names")

uethda_county_mobility_ready

uethda_tract_mobility_ready

uethda_school_mobility_ready

#### figure out some shit with this ####

uethda_county_mobility_cleaned <- uethda_county_mobility_ready %>%
  mutate(Location = remove_after_comma_function(Location))

uethda_schools_mobility_cleaned <- uethda_school_mobility_ready %>%
  mutate(Location = remove_after_comma_function(Location))

uethda_tract_mobility_cleaned <- uethda_tract_mobility_ready %>%
  mutate(Location = gsub(';', ",",Location))

uethda_tract_mobility_cleaned

#### within same county ####

within_county_demo_vars <- c("Percent Population over 1 Year Moved within same County","Percent Population 1-4 Years Moved within same County",
                             "Percent Population 5-17 Years Moved within same County",  "Percent Population 65-74 Years Moved within same County",
                             "Percent Population 75+ Years Moved within same County",
                             "Percent Male Population Moved within same County", "Percent Female Population Moved within same County",
                             "Percent Population White Moved within Same County", "Percent Population Black Moved within same County",
                             "Percent Asian Population Moved within Same County", "Percent Population Two or More Races Moved within same County",
                             "Percent Poulation Hispanic Moved within same County","Percent Population Non-Hispanic Moved within Same County",
                             "Percent Native Citizens Moved within same County", "Percent Non-Citizens Moved within same County"
)


median_age_same_county <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Median Age Moved within same County"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable),linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same County")


median_age_same_county

median_income_same_county <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved within same County"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved within same County" ~ "Median Income within Same County",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved within same County")

median_income_same_county


same_county_demo_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the Same County")

same_county_demo_graph

within_county_demo_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)


table_function(within_county_demo_for_table, `Percent of Population Groups that Moved within the Same County in 2022`)

within_county_edu_vars <- c("Percent Population 25+ Years Less than HS Degree Moved within same County",
                            "Percent Population 25+ Years with HS Degree Moved within same County",
                            "Percent Population 25+ Years Some College or Associates Degree Moved within Same County",
                            "Percent Population 25+ Years Bachelor's Degree Moved within same County", 
                            "Percent Population 25+ Years Graduate or Professional Degree Moved within same County"
                            
)

education_same_county_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the Same County")

education_same_county_graph

within_county_education_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(within_county_education_table, `Percent Educational Attainment Levels that Moved within the Same County in 2022`)


within_county_poverty_renter_vars <- c("Percent Population below 100% of Poverty Level Moved within same County", 
                                       "Percent Population between 100-149% of Poverty Level Moved within same County", 
                                       "Percent Population 150%+ of the Poverty Level Moved within same County", 
                                       "Percent Population in Owner-Occupied Housing Units Moved within same County", 
                                       "Percent Population in Renter-Occupied Housing Units Moved within same County",
                                       "Percent Population 15+ Years Income below $10k Moved within same County",
                                       "Percent Population 15+ Years Income $75k or More Moved within same County")
renter_pov_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the Same County")


renter_pov_graph 

renter_pov_same_county_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(renter_pov_same_county_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same County in 2022`)

#### within state ####

median_age_different_county <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different County, same State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same State, different County")

median_age_different_county

median_income_same_state <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State" ~ "Median Income different county, same State",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved from Different County, same State")

median_income_same_state



within_state_demo_vars <- c("Percent Population over 1 Year Moved from different County, same State","Percent Population 1-4 Years Moved from different County, same State",
                            "Percent Population 5-17 Years Moved from different County, same State",  "Percent Population 65-74 Years Moved from different County, same State",
                            "Percent Population 75+ Years Moved from different County, same State",
                            "Percent Male Population Moved from different County, same State", "Percent Female Population Moved from different County, same State",
                            "Percent Population Black Moved from different County, same State",
                            "Percent Asian Population Moved from different County, same State", "Percent Population Two or More Races Moved from different County, same State",
                            "Percent Poulation Hispanic Moved from different County, same State","Percent Population Non-Hispanic Moved from different County, same State",
                            "Percent Native Citizens Moved from different County, same State", "Percent Non-Citizens Moved from different County, same State"
)

within_state_demo_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the same State, Different County")


within_state_demo_graph

within_state_demo_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(within_state_demo_for_table, `Percent of Population Groups that Moved within the same State, Different County in 2022`)


within_state_edu_vars <- c("Percent Population 25+ Years Less than HS Degree Moved from different County, same State",
                           "Percent Population 25+ Years with HS Degree Moved from different County, same State",
                           "Percent Population 25+ Years Some College or Associates Degree Moved from different County, same State",
                           "Percent Population 25+ Years Bachelor's Degree Moved from different County, same State", 
                           "Percent Population 25+ Years Graduate or Professional Degree Moved from different County, same State"
)

within_state_edu_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the same State, Different County")

within_state_edu_graph

within_state_edu_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(within_state_edu_for_table, `Percent of Educational Attainment Levels that Moved within the same State, Different County in 2022`)


within_state_poverty_renter_vars <- c("Percent Population below 100% of Poverty Level Moved from different County, same State", 
                                      "Percent Population between 100-149% of Poverty Level Moved from different County, same State", 
                                      "Percent Population 150%+ of the Poverty Level Moved from different County, same State", 
                                      "Percent Population in Owner-Occupied Housing Units Moved from different County, same State", 
                                      "Percent Population in Renter-Occupied Housing Units Moved from different County, same State",
                                      "Percent Population 15+ Years Income below $10k Moved from different County, same State",
                                      "Percent Population 15+ Years Income $75k or More Moved from different County, same State")

pov_renter_within_state_graph <-uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County")

pov_renter_within_state_graph

pov_renter_within_state_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(pov_renter_within_state_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County in 2022`)


#### different state ####

median_age_different_state <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved from Different State")

median_age_different_state

median_income_different_state <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved from different State"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved from different State" ~ "Median Income different State",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved from Different State")

median_income_different_state

diff_state_demo_vars <- c("Percent Population over 1 Year Moved from different State","Percent Population 1-4 Years Moved from different State",
                          "Percent Population 5-17 Years Moved from different State",  "Percent Population 65-74 Years Moved from different State",
                          "Percent Population 75+ Years Moved from different State",
                          "Percent Male Population Moved from different State", "Percent Female Population Moved from different State",
                          "Percent Population Black Moved from different State",
                          "Percent Asian Population Moved from different State", "Percent Population Two or More Races Moved from different State",
                          "Percent Poulation Hispanic Moved from different State","Percent Population Non-Hispanic Moved from different State",
                          "Percent Native Citizens Moved from different State", "Percent Non-Citizens Moved from different State"
)

diff_state_demo_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved from Different State")

diff_state_demo_graph


diff_state_demo_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(diff_state_demo_for_table, `Percent of Population Groups that Moved from Different State in 2022`)


diff_state_edu_vars <- c("Percent Population 25+ Years Less than HS Degree Moved from different State",
                         "Percent Population 25+ Years with HS Degree Moved from different State",
                         "Percent Population 25+ Years Some College or Associates Degree Moved from different State",
                         "Percent Population 25+ Years Bachelor's Degree Moved from different State", 
                         "Percent Population 25+ Years Graduate or Professional Degree Moved from different State")

diff_state_edu_graph <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved from Different State")

diff_state_edu_graph

diff_state_edu_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(diff_state_edu_for_table, `Percent of Educational Attainment Levels that Moved from Different State in 2022`)


diff_state_pov_renter_vars  <- c("Percent Population below 100% of Poverty Level Moved from different State", 
                                 "Percent Population between 100-149% of Poverty Level Moved from different State", 
                                 "Percent Population 150%+ of the Poverty Level Moved from different State", 
                                 "Percent Population in Owner-Occupied Housing Units Moved from different State", 
                                 "Percent Population in Renter-Occupied Housing Units Moved from different State",
                                 "Percent Population 15+ Years Income below $10k Moved from different State",
                                 "Percent Population 15+ Years Income $75k or More Moved from different State")


pov_renter_diff_state_graph <-uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_pov_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved from Different State")

pov_renter_diff_state_graph

pov_renter_diff_state_for_table <- uethda_county_mobility_cleaned %>%
  filter(Variable %in% diff_state_pov_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(pov_renter_diff_state_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved from Different State in 2022`)


#### home owners different state vs same state diff county vs same county ####

county_in_state_owners <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population in Owner-Occupied Housing Units Moved within same County"|
           Variable == "Percent Population in Owner-Occupied Housing Units Moved from different County, same State")%>%
  group_by(Location, Year)%>%
  summarise(`In-State Estimate` = sum(Estimate),
         `In-State MOE` = sum(MOE, Estimate))%>%
  st_drop_geometry()

county_out_of_state_owners <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population in Owner-Occupied Housing Units Moved from different State"|
           Variable == "Percent Population in Owner-Occupied Housing Units Moved from abroad")%>%
  group_by(Location, Year)%>%
  summarise(`Out-of-State Estimate` = sum(Estimate),
         `Out-of-State MOE` = sum(MOE, Estimate))%>%
  st_drop_geometry()

joined_owners <- left_join(county_in_state_owners, county_out_of_state_owners, by = c("Location", "Year"))

long_joined_owners <- joined_owners %>%
  pivot_longer(-c(Location, Year), names_to = c("Variable", "Measure"), values_to = c("Estimate"), names_sep = " ")

long_joined_owners %>%
  filter(Measure != "MOE")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent Owner Occupied Housing Units that Moved")


county_in_state_75  <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Income $75k or More Moved within same County"|
           Variable == "Percent Population 15+ Years Income $75k or More Moved from different County, same State")%>%
  group_by(Location, Year)%>%
  summarise(`In-State Estimate` = sum(Estimate),
            `In-State MOE` = sum(MOE, Estimate))%>%
  st_drop_geometry()

county_out_of_state_75 <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Income $75k or More Moved from different State"|
           Variable == "Percent Population 15+ Years Income $75k or More Moved from abroad")%>%
  group_by(Location, Year)%>%
  summarise(`Out-of-State Estimate` = sum(Estimate),
            `Out-of-State MOE` = sum(MOE, Estimate))%>%
  st_drop_geometry()

joined_75k <- left_join(county_in_state_75, county_out_of_state_75, by = c("Location", "Year"))

long_joined_75k <- joined_75k %>%
  pivot_longer(-c(Location, Year), names_to = c("Variable", "Measure"), values_to = c("Estimate"), names_sep = " ")

long_joined_75k %>%
  filter(Measure != "MOE")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population that makes 75k+ that moved")


##### school districts #####

schools_median_age_same_county_graph <- uethda_schools_mobility_cleaned%>%
  filter(Variable == "Median Age Moved within same County"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable),linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same County in School Districts")

schools_median_age_same_county_graph


schools_median_income_same_county <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved within same County"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved within same County" ~ "Median Income within Same County",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved within same County in School Districts")

schools_median_income_same_county

schools_same_county_demo_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_county_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the Same County School Districts")

schools_same_county_demo_graph 

schools_within_county_demo_for_table <- uethda_schools_mobility_cleaned%>%
  filter(Variable %in% within_county_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_within_county_demo_for_table, `Percent of Population Groups that Moved within the Same County in 2022 in School Districts`)

schools_education_same_county_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the Same County School Districts")

schools_education_same_county_graph

schools_within_county_education_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_within_county_education_table, `Percent Educational Attainment Levels that Moved within the Same County in 2022 in School Districts`)

schools_rents_pov_graph_within_same_county <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the Same County in School Districts")

schools_rents_pov_graph_within_same_county

schools_renter_pov_same_county_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_renter_pov_same_county_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same County in 2022 in School Districts`)

#### within state school districts ####
schools_median_age_different_county <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different County, same State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same State, different County in School Districts")

schools_median_age_different_county

schools_median_income_same_state <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State" ~ "Median Income different county, same State",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved from Different County, same State in School Districts")

schools_median_income_same_state

schools_within_state_demo_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the same State, Different County in School Districts")

schools_within_state_demo_graph

schools_within_state_demo_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_within_state_demo_for_table, `Percent of Population Groups that Moved within the same State, Different County in 2022 in School Districts`)

schools_within_state_edu_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the same State, Different County in School Districts")

schools_within_state_edu_graph

schools_within_state_edu_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_within_state_edu_for_table, `Percent of Educational Attainment Levels that Moved within the same State, Different County in 2022 in School Districts`)

schools_pov_renter_within_state_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County in School Districts")

schools_pov_renter_within_state_graph

schools_pov_renter_within_state_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})


table_function(schools_pov_renter_within_state_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County in 2022 in School Districts`)

#### different state ####

schools_median_age_different_state <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved from Different State in School Districts")

schools_median_age_different_state



schools_median_income_different_state <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved from different State"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved from different State" ~ "Median Income different State",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved from Different State in School Districts")

schools_median_income_different_state

schools_diff_state_demo_vars <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved from Different State in School Districts")

schools_diff_state_demo_vars

schools_diff_state_demo_for_table <-uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_diff_state_demo_for_table, `Percent of Population Groups that Moved from Different State in 2022 in School Districts`)

schools_different_state_edu_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved from Different State in School Districts")

schools_different_state_edu_graph

schools_diff_state_edu_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(schools_diff_state_edu_for_table,`Percent of Educational Attainment Levels that Moved from Different State in 2022 in School Districts`) 


schools_pov_renter_diff_state_graph <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_pov_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved from Different State in School Districts")

schools_pov_renter_diff_state_graph

schools_pov_renter_diff_state_for_table <- uethda_schools_mobility_cleaned %>%
  filter(Variable %in% diff_state_pov_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})


table_function(schools_pov_renter_diff_state_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved from Different State in 2022 in School Districts`)

##### census tracts #####

tract_median_age_same_county_graph <- uethda_tract_mobility_cleaned%>%
  filter(Variable == "Median Age Moved within same County"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable),linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same County in School Districts")

uethda_tract_mobility_cleaned%>%
  filter(Variable == "Median Age Moved within same County"|
           Variable == "Median Age")


tract_median_income_same_county <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved within same County"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved within same County" ~ "Median Income within Same County",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved within same County in School Districts")

uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved within same County"|
           Variable == "Total Population 15+ Years Median Income")

tract_median_income_same_county

tract_same_county_demo_graph <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_county_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the Same County School Districts")

tract_same_county_demo_graph 

tract_within_county_demo_for_table <- uethda_tract_mobility_cleaned%>%
  filter(Variable %in% within_county_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(tract_within_county_demo_for_table, `Percent of Population Groups that Moved within the Same County in 2022 in School Districts`)

tract_education_same_county_graph <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the Same County School Districts")

tract_education_same_county_graph

tract_within_county_education_table <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_county_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(tract_within_county_education_table, `Percent Educational Attainment Levels that Moved within the Same County in 2022 in School Districts`)

tract_rents_pov_graph_within_same_county <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location,scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the Same County in School Districts")

tract_rents_pov_graph_within_same_county

tract_renter_pov_same_county_for_table <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_county_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(tract_renter_pov_same_county_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same County in 2022 in School Districts`)

#### within state school districts ####
tract_median_age_different_county <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different County, same State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved within same State, different County in School Districts")

tract_median_age_different_county

tract_median_income_same_state <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State"|
           Variable == "Total Population 15+ Years Median Income")%>%
  mutate(Label = case_when(Variable == "Percent Population 15+ Years Median Income Moved from different County, same State" ~ "Median Income different county, same State",
                           Variable == "Total Population 15+ Years Median Income" ~ "Median Income"))%>%
  ggplot(aes(x = Year, y = Estimate, group = Label))+
  geom_line(aes(color = Label), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Income of Citizens 15 Years+ who Moved from Different County, same State in School Districts")

tract_median_income_same_state

tract_within_state_demo_graph <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Population Groups that Moved within the same State, Different County in School Districts")

tract_within_state_demo_graph

tract_within_state_demo_for_table <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_demo_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(tract_within_state_demo_for_table, `Percent of Population Groups that Moved within the same State, Different County in 2022 in School Districts`)

tract_within_state_edu_graph <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Educational Attainment Levels that Moved within the same State, Different County in School Districts")

tract_within_state_edu_graph

tract_within_state_edu_for_table <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_edu_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})

table_function(tract_within_state_edu_for_table, `Percent of Educational Attainment Levels that Moved within the same State, Different County in 2022 in School Districts`)

tract_pov_renter_within_state_graph <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County in School Districts")

tract_pov_renter_within_state_graph

tract_pov_renter_within_state_for_table <- uethda_tract_mobility_cleaned %>%
  filter(Variable %in% within_state_poverty_renter_vars)%>%
  st_set_geometry(NULL)%>%
  filter(Year == 2022)%>%
  select(Location, Variable, Estimate)%>%
  pivot_wider(names_from = Variable, values_from = Estimate, values_fn = {min})


table_function(tract_pov_renter_within_state_for_table, `Percent of Poverty, Renters, and 75k+ Income that Moved within the same State, Different County in 2022 in School Districts`)

#### different state ####

tract_geometries <- uethda_tract_mobility_cleaned %>%
  filter(Year == 2022)%>%
  select(Location, geometry)%>%
  unique()

tract_geometries

tract_geometries_2019 <- uethda_tract_mobility_cleaned %>%
  filter(Year == 2019)%>%
  select(Location, geometry)%>%
  unique()

tract_median_age_different_state <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different State"|
           Variable == "Median Age")%>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  geom_errorbar(aes(y=Estimate, ymin=Estimate - `MOE`, ymax = Estimate + MOE), width=0.2, linewidth=1, color="blue")+
  geom_label(aes(label = Estimate), position = position_dodge(width = 1),fill = "white", angle = 90, show.legend = FALSE, size = 3)+
  facet_wrap(~Location, scales = "free_y")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "BrBG")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age of Citizens who Moved from Different State in School Districts")

#### sum up from 2020 to 2022 ####

tract_mobility_different_state_median_age <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Median Age Moved from different State")%>%
  filter(Year == 2022)

tract_geometries

tract_map_function(tract_mobility_different_state_median_age, tract_mobility_different_state_median_age, Estimate, "Median Age moved from Different State")

tract_mobility_percent_of_pop_different_state <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year == 2022)

tract_mobility_percent_of_pop_different_state_2020 <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year >= 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2020-2022 Estimate` = sum(Estimate),
            `2020-2022 MOE` = moe_sum(MOE, Estimate))%>%
  left_join(tract_geometries, by = "Location")%>%
  st_as_sf()

tract_mobility_percent_of_pop_different_state_2020  

tract_mobility_percent_of_pop_different_state_pre2020 <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year < 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2017-2019 Estimate` = sum(Estimate),
            `2017-2019 MOE` = moe_sum(MOE, Estimate))%>%
  left_join(tract_geometries_2019, by = "Location")%>%
  st_as_sf()

tract_mobility_percent_of_pop_different_state_2020_no_geo <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year >= 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2020-2022 Estimate` = sum(Estimate),
            `2020-2022 MOE` = moe_sum(MOE, Estimate))

tract_mobility_percent_of_pop_different_state_pre2020_no_geo <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year < 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2017-2019 Estimate` = sum(Estimate),
            `2017-2019 MOE` = moe_sum(MOE, Estimate))


joined_percent_of_pop_different_state <- left_join(tract_mobility_percent_of_pop_different_state_2020_no_geo, tract_mobility_percent_of_pop_different_state_pre2020_no_geo, by = "Location")%>%
  group_by(Location)%>%
  mutate(`Difference Since Pandemic` = round(`2020-2022 Estimate` - `2017-2019 Estimate`,2))%>%
  left_join(tract_geometries, by = "Location")%>%
  st_as_sf()

View(joined_percent_of_pop_different_state)

tract_map_function(joined_percent_of_pop_different_state, joined_percent_of_pop_different_state, `Difference Since Pandemic`, "Percent of Population who Moved from out of TN from 2020-2022 vs 2017-2019")

county_mobility_percent_of_pop_different_state_2020 <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year >= 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2020-2022 Estimate` = sum(Estimate),
            `2020-2022 MOE` = moe_sum(MOE, Estimate))

county_mobility_percent_of_pop_different_state_2020

county_mobility_percent_of_pop_different_state_pre2020 <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year < 2020)%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(`2017-2019 Estimate` = sum(Estimate),
            `2017-2019 MOE` = moe_sum(MOE, Estimate))

table_function(left_join(county_mobility_percent_of_pop_different_state_pre2020, county_mobility_percent_of_pop_different_state_2020, by = "Location") %>%
  mutate(Difference = round(`2020-2022 Estimate` - `2017-2019 Estimate`,2)), `Difference in Percent of Population Moving from Out of State from 2020-2022 to 2017-2019`)

uethda_tract_mobility_cleaned %>%
  filter(str_detect(Location, "607"))

view(tract_mobility_percent_of_pop_different_state_2020)

tract_map_function(tract_mobility_percent_of_pop_different_state, tract_mobility_percent_of_pop_different_state, Estimate, "Percent of Population who moved from Different State")

tract_map_function(tract_mobility_percent_of_pop_different_state_2020, tract_mobility_percent_of_pop_different_state_2020, `2020-2022 Estimate`, "Percent of Population who moved from Different State since 2020")

tract_map_function(tract_mobility_percent_of_pop_different_state_pre2020, tract_mobility_percent_of_pop_different_state_pre2020, `Estimate, "Percent of Population who moved from Different State 2017-2019")



uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population 1-4 Years Moved from different State")

tract_mobility_median_income <- uethda_tract_mobility_cleaned %>%
  filter(str_detect(Variable, "different State"))%>%
  filter(str_detect(Variable, "Median Income"))%>%
  filter(Year == 2022)

tract_map_function(tract_mobility_median_income, tract_mobility_median_income, Estimate, "Median Income who moved from Different State")

tract_mobility_75k <- uethda_tract_mobility_cleaned %>%
  filter(Variable == "Percent Population 15+ Years Income $75k or More Moved from different State")%>%
  filter(Year == 2022)

tract_map_function(tract_mobility_75k, tract_mobility_75k, Estimate, "Percent of Population who moved from Different state over 75k Income")

#### look at home buyers who moved ####

tract_home_owner_different_state <- uethda_tract_mobility_cleaned %>%
  filter(Year == 2022)%>%
  filter(Variable == "Percent Population in Owner-Occupied Housing Units Moved from different State")

tract_map_function(tract_home_owner_different_state, tract_home_owner_different_state, Estimate, "Percent of Out of State Movers in Owner-Occupied Housing Units")

tract_2020_home_owner_outside_tn <- uethda_tract_mobility_cleaned %>%
  st_drop_geometry()%>%
  filter(Year >= 2020)%>%
  group_by(Location)%>%
  filter(Variable == "Percent Population in Owner-Occupied Housing Units Moved from different State"|
           Variable == "Percent Population in Owner-Occupied Housing Units Moved from abroad")%>%
  summarise(`Outside TN Estimate` = sum(Estimate),
           `Outside TN MOE` = moe_sum(MOE, Estimate))

tract_home_owner_2020_inside_tn <- uethda_tract_mobility_cleaned %>%
  st_drop_geometry()%>%
  filter(Year >= 2020)%>%
  filter(str_detect(Variable, "Owner"))%>%
  filter(Variable != "Percent Population in Owner-Occupied Housing Units Moved from different State")%>%
  filter(Variable != "Percent Population in Owner-Occupied Housing Units Moved from abroad")%>%
  filter(Variable != "Total Population in Owner-Occupied Housing Units")%>%
  group_by(Location)%>%
  summarise(`Inside TN Estimate` = sum(Estimate),
            `Inside TN MOE` = moe_sum(MOE, Estimate))
  

joined_tract_2020_home_owners <- left_join(tract_home_owner_2020_inside_tn, tract_2020_home_owner_outside_tn, by = c("Location"))%>%
  left_join(tract_geometries, by = "Location")%>%
  st_as_sf()

joined_tract_2020_home_owners_difference <- joined_tract_2020_home_owners %>%
  group_by(Location)%>%
  mutate(`Difference` = round(`Inside TN Estimate` - `Outside TN Estimate`,2))
  
tract_map_function(joined_tract_2020_home_owners_difference, joined_tract_2020_home_owners_difference, `Difference`, "Difference in % of Home Owners who moved from Inside TN vs Outside TN")


tract_map_function(joined_tract_2020_home_owners, joined_tract_2020_home_owners, `Outside TN Estimate`, "Percent of Owner Occupied Housing Units who moved from Out of State Since 2020")

tract_map_function(joined_tract_2020_home_owners, joined_tract_2020_home_owners, `Inside TN Estimate`, "Percent of Owner Occupied Housing Units who moved from inside TN Since 2020")


#### pull aged 1-4 moved from different state, different county ####
schools_moved_1_4_years <- uethda_schools_mobility_cleaned %>%
  filter(Variable == "Percent Population 1-4 Years Moved within same County"|
           Variable == "Percent Population 1-4 Years Moved from different County, same State"|
           Variable == "Percent Population 1-4 Years Moved from different State")

county_moved_1_4_years <- uethda_county_mobility_cleaned %>%
  filter(Variable == "Percent Population 1-4 Years Moved within same County"|
           Variable == "Percent Population 1-4 Years Moved from different County, same State"|
           Variable == "Percent Population 1-4 Years Moved from different State")%>%
  st_drop_geometry()

county_moved_1_4_years

county_under_5

tract_moved_1_4_years <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population 1-4 Years Moved within same County"|
           Variable == "Percent Population 1-4 Years Moved from different County, same State"|
           Variable == "Percent Population 1-4 Years Moved from different State")%>%
  mutate(`Total Percent Moved` = sum(Estimate),
         `MOE Total Percent Moved` = moe_sum(MOE, Estimate))




schools_moved_birth_pop_under_5 <- rbind(schools_under_5, schools_moved_1_4_years, schools_total_births_yearly)

tract_moved_birth_pop_under_5 <- rbind(tract_under_5, tract_moved_1_4_years, tract_total_births_yearly)

county_moved_birth_pop_under_5 <- rbind(county_under_5, county_moved_1_4_years, county_total_births_yearly)


county_moved_birth_pop_under_5_ready <- county_moved_pop_under_5 %>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")

county_moved_u5_line_graph <- county_moved_1_4_years %>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent Population under 5 that had Moved within Last Year")

county_moved_u5_line_graph

schools_moved_u5_line_graph <- schools_moved_1_4_years %>%
  ggplot(aes(x = Year, y = Estimate, group = Variable))+
  geom_line(aes(color = Variable), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_color_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Percent Population under 5 that had Moved within with Last Year in School Districts")

schools_moved_u5_line_graph

tract_moved_birth_pop_under_5 %>%
  filter(Variable == "Total Population Under 5 Years") %>%
  filter(Year == 2021)%>%
  arrange(-Estimate)

tract_same_county_u5 <- tract_moved_birth_pop_under_5 %>%
  filter(str_detect(Variable, "same County"))

mean_within_county_u5_tract <- tract_moved_birth_pop_under_5 %>%
  filter(str_detect(Variable, "same County")) %>%
  group_by(Location)%>%
  mutate(`Average` = round(mean(Estimate),2),
         `Mean MOE` = moe_sum(MOE, Estimate) / 5 )%>%
  arrange(-Average)

hist(mean_within_county_u5_tract$Average)

summary(mean_within_county_u5_tract$Average)
###   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
###   0.00    2.26    9.30   11.71   16.75   58.60       7 




mapview(mean_within_county_u5_tract, zcol = "Average")

top_25_mean_within_county_u5_tract <- mean_within_county_u5_tract %>%
  filter(Average >= 16.70)

tract_map_function(geometries, top_25_mean_within_county_u5_tract, `Average`, "Average Percent of Under 5 Population that moved within the County from 2017-2021 (Top Quartile)")

same_county_2021_u5 <- tract_moved_birth_pop_under_5 %>%
  filter(str_detect(Variable, "same County")) %>%
  filter(Year == 2021)%>%
  arrange(-Estimate)

hist(same_county_2021_u5$Estimate)

summary(same_county_2021_u5$Estimate)


##   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
##  0.00    0.00    1.75   10.61   16.65   66.70       1 


mapview(same_county_2021_u5, zcol = "Estimate")

tract_map_function(geometries, same_county_2021_u5, `Estimate`, "2021 Percent of Population under 5 that moved within the same County")

top_25_2021_u5_same_county <- same_county_2021_u5 %>%
  filter(Estimate >= 16.6)

tract_map_function(geometries, top_25_2021_u5_same_county, `Estimate`, "2021 Top 25% of tracts in Percent of Population under 5 that moved within the same County")


top_25_mean_within_county_u5_tract

### repeat u5 for diff county, diff state 

#"Percent Population 1-4 Years Moved within same County"

#"Percent Population over 1 Year Moved from different County, same State"

#"Percent Population over 1 Year Moved from different State"

bottom_25_mean_u5 <- mean_within_county_u5_tract %>%
  filter(Average <= 2.3)%>%
  mutate(Average = round(Average, 2))

tract_map_function(geometries, bottom_25_mean_u5, `Average`, "Average Percent of Under 5 Population that moved within the same County from 2017-2021 (Bottom Quartile")


diff_county_2021_u5 <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different County, same State")%>%
  filter(Year == 2021)

tract_map_function_green(geometries, diff_county_2021_u5, `Estimate`, "2021 Percent of Under 5 Population that moved from different County in TN")


average_u5_diff_county <-uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different County, same State")%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(Average = mean(Estimate), 
            `Average MOE` = moe_sum(MOE, Estimate)/5)%>%
  arrange(-Average)

hist(average_u5_diff_county$Average)

quantile(average_u5_diff_county$Average)

##       0%       25%       50%       75%      100% 
##0.000000  1.295000  2.400000  4.823333 30.300000

top_u5_diff_county <- average_u5_diff_county %>%
  filter(Average >= 4.8)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

bottom_u5_diff_county <- average_u5_diff_county %>%
  filter(Average >= 1.3)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_green(geometries, top_u5_diff_county, `Average`, "Top 25% Average Percent of Tracts for Under 5 Population that moved from different County in TN from 2017-2021")

tract_map_function_green(geometries, bottom_u5_diff_county, `Average`, "Bottom 25% Average Percent of Tracts for Under 5 Population that moved from different County in TN from 2017-2021")

# diff state 

diff_state_2021_u5 <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year == 2021)

tract_map_function_blues(geometries, diff_state_2021_u5, `Estimate`, "2021 Percent of Under 5 Population that moved from a different State")


average_u5_diff_state <-uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(Average = mean(Estimate), 
            `Average MOE` = moe_sum(MOE, Estimate)/5)%>%
  arrange(-Average)

quantile(average_u5_diff_state$Average)

##    0%    25%    50%    75%   100% 
##0.0000 1.2575 2.1700 3.6200 9.5800 

top_diff_state_u5 <- average_u5_diff_state %>%
  filter(Average >= 3.6)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()


bottom_diff_state_u5 <- average_u5_diff_state %>%
  filter(Average >= 1.3)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_blues(geometries, top_diff_state_u5, `Average`, "Top 25% Average Tracts where the Under 5 Population has moved from a different State 2017-2021")

tract_map_function_blues(geometries, bottom_diff_state_u5, `Average`, "Bottom 25% Average Tracts where the Under 5 Population has moved from a different State 2017-2021")


#### tracts ####"Percent Population over 1 Year Moved from different County, same State""Percent Population over 1 Year Moved from different State"

total_same_county_2021 <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved within same County")%>%
  filter(Year == 2021)%>%
  arrange(-Estimate)

total_same_county_2021

tract_map_function_blues(geometries, total_same_county_2021, `Estimate`, "2021 Percent of Population over 1 that moved within the same County")

mean_within_county <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved within same County")%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(Average = mean(Estimate), 
            `Average MOE` = moe_sum(MOE, Estimate)/5)%>%
  arrange(-Average)


quantile(mean_within_county$Average)
##    0%    25%    50%    75%   100% 
##  0.000  4.275  6.850  9.605 24.480 

top_mean_within_county <- mean_within_county %>%
  filter(Average >= 9.6)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_blues(geometries,top_mean_within_county, `Average`, "Top 25% Average Tracts where the population has moved within the County from 2017-2021")

mapview(top_mean_within_county, zcol = "Average")

bottom_mean_within_county <- mean_within_county %>%
  filter(Average <= 4.3)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_blues(geometries, bottom_mean_within_county, `Average`, "Bottom 25% Average Tracts where the population has moved within the County from 2017-2021")

total_same_county_2020

tract_map_function_green(geometries, total_same_county_2020, `Estimate`, "2020 Percent of Population over 1 that moved within the same County")

total_diff_county_2021 <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different County, same State")%>%
  filter(Year == 2021)%>%
  arrange(-Estimate)

total_diff_county_2021

tract_map_function_green(geometries, total_diff_county_2021, `Estimate`, "2021 Percent of Population over 1 that moved from a different County in TN")


mean_diff_county <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different County, same State")%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(Average = mean(Estimate), 
            `Average MOE` = moe_sum(MOE, Estimate)/5)%>%
  arrange(-Average)

tract_map_function_green(geometries, mean_diff_county, `Average`, "")

hist(mean_diff_county$Average)

quantile(mean_diff_county$Average)

##       0%       25%       50%       75%      100% 
## 0.000000  1.295000  2.400000  4.823333 30.300000 

top_diff_county <- mean_diff_county %>%
  filter(Average >= 4.8)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

bottom_diff_county <- mean_diff_county %>%
  filter(Average <= 1.3)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_green(geometries, top_diff_county, `Average`, "Top 25% Average Tracts where the population has moved from different County in TN from 2017-2021")

tract_map_function_green(geometries, bottom_diff_county, `Average`, "Bottom 25% Average Tracts where the population has moved from different County in TN from 2017-2021")

diff_state_2021 <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  filter(Year == 2021)%>%
  arrange(-Estimate)

tract_map_function(geometries, diff_state_2021, `Estimate`, "Percent of Population that moved from different state in 2021")


mean_other_state <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved from different State")%>%
  st_drop_geometry()%>%
  group_by(Location)%>%
  summarise(Average = mean(Estimate), 
            `Average MOE` = moe_sum(MOE, Estimate)/5)%>%
  arrange(-Average)

hist(mean_other_state$Average)

quantile(mean_other_state$Average)

##    0%    25%    50%    75%   100% 
## 0.0000 1.2575 2.1700 3.6200 9.5800

top_other_state <- mean_other_state %>%
  filter(Average >= 3.6)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function(geometries, top_other_state, `Average`, "Top 25% Average Tracts where the population has moved from different State from 2017-2021")

bottom_other_state <- mean_other_state %>%
  filter(Average <= 1.3)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function(geometries, bottom_other_state, `Average`, "Bottom 25% Average Tracts where the population has moved from different State from 2017-2021")

#### sum up all movement ####

#u5
#Percent Population 1-4 Years Moved within same County
#Percent Population 1-4 Years Moved from different County, same State
#Percent Population 1-4 Years Moved from different State
#Percent Population 1-4 Years Moved from abroad 
u5_total_percent_moved_by_year <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population 1-4 Years Moved within same County"|
           Variable == "Percent Population 1-4 Years Moved from different County, same State"|
           Variable == "Percent Population 1-4 Years Moved from different State"|
           Variable == "Percent Population 1-4 Years Moved from abroad")%>%
  group_by(Location, Year)%>%
  summarise(`Total % Moved` = sum(Estimate),
            `Total % MOE Moved` = moe_sum(MOE, Estimate))%>%
  arrange(-`Total % Moved`)


u5_total_percent_moved_by_year

average_u5_total_moved <- u5_total_percent_moved_by_year %>%
  select(!Year)%>%
  st_drop_geometry()%>%
  summarise(Average = mean(`Total % Moved`),
            `Average MOE` = moe_sum(`Total % MOE Moved`, `Total % Moved`) / 5)%>%
  arrange(-Average)

quantile(average_u5_total_moved$Average, na.rm = TRUE)

##      0%      25%      50%      75%     100% 
##0.00000  5.65000 17.72333 27.45500 63.12000 

top_average_u5_total_moved <- average_u5_total_moved%>%
  filter(Average >= 27)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()



bottom_average_u5_total_moved <- average_u5_total_moved %>%
  filter(Average <= 5.7)%>%
  mutate(Average = round(Average,2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function(geometries, top_average_u5_total_moved, `Average`, "Top 25% Average in total percent of under 5 Population that moved from 2017-2021")

tract_map_function(geometries, bottom_average_u5_total_moved, `Average`, "Bottom 25% Average in total percent of under 5 Population that moved from 2017-2021")

top_u5_tracts <- top_average_u5_total_moved$Location %>%
  unique()

u5_total_top_percent_moved_graph <- u5_total_percent_moved_by_year %>%
  filter(Location %in% top_u5_tracts)%>%
  ggplot(aes(x = Year, y = `Total % Moved`, group = Location))+
  geom_line(aes(color = Location), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Top 25% Percent Population under 5 that had Moved by Year")



# total 

#Percent Population over 1 Year Moved within same County
#Percent Population over 1 Year Moved from different County, same State
#Percent Population over 1 Year Moved from different State      
#Percent Population over 1 Year Moved from abroad
total_percent_moved_by_year <- uethda_tract_mobility_ready %>%
  filter(Variable == "Percent Population over 1 Year Moved within same County"|
           Variable == "Percent Population over 1 Year Moved from different County, same State"|
           Variable == "Percent Population over 1 Year Moved from different State"|
           Variable == "Percent Population over 1 Year Moved from abroad")%>%
  group_by(Location, Year)%>%
  summarise(`Total % Moved` = sum(Estimate),
            `Total % MOE Moved` = moe_sum(MOE, Estimate))

average_total_percent_moved <- total_percent_moved_by_year %>%
  select(!Year)%>%
  st_drop_geometry()%>%
  summarise(Average = mean(`Total % Moved`),
            `Average MOE` = moe_sum(`Total % MOE Moved`, `Total % Moved`) / 5)%>%
  arrange(-Average)

quantile(average_total_percent_moved$Average)

##    0%    25%    50%    75%   100% 
##1.050  8.725 13.100 17.150 47.100 

top_average_total_moved <- average_total_percent_moved %>%
  filter(Average >= 17.15)%>%
  mutate(Average = round(Average, 2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()



bottom_average_total_moved <- average_total_percent_moved %>%
  filter(Average <= 8.725)%>%
  mutate(Average = round(Average,2))%>%
  left_join(geometries, by = "Location")%>%
  st_as_sf()

tract_map_function_blues(geometries, top_average_total_moved, `Average`, "Top 25% Average in total percent of Population that moved from 2017-2021")

tract_map_function_blues(geometries, bottom_average_total_moved, `Average`, "Bottom 25% Average in total percent of Population that moved from 2017-2021")

top_total_tracts<- top_average_total_moved$Location %>%
  unique()

top_percent_moved_total_graph <- total_percent_moved_by_year %>%
  filter(Location %in% top_total_tracts)%>%
  ggplot(aes(x = Year, y = `Total % Moved`, group = Location))+
  geom_line(aes(color = Location), linewidth = 2)+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1.5)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Top 25% Percent Population that had Moved by Year")

top_percent_moved_total_graph

mapview(top_average_total_moved, zcol = "Average")
