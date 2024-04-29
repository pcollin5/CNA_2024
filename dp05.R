#### dp 05 #####

Full_dp_2022

Full_dp_2022 %>%
  filter(str_detect(variable, "DP05"))


#### pull variables from 2022 ####

dp_05_vars_22 <- c("DP05_0001", "DP05_0001P", 
                   "DP05_0002", "DP05_0002P", 
                   "DP05_0003","DP05_0003P", 
                   "DP05_0005", "DP05_0005P",
                   "DP05_0006", "DP05_0006P",
                   "DP05_0007", "DP05_0007P",
                   "DP05_0008", "DP05_0008P",
                   "DP05_0009", "DP05_0009P",
                   "DP05_0010", "DP05_0010P",
                   "DP05_0011", "DP05_0011P",
                   "DP05_0012", "DP05_0012P",
                   "DP05_0013", "DP05_0013P",
                   "DP05_0014", "DP05_0014P",
                   "DP05_0015", "DP05_0015P",
                   "DP05_0016", "DP05_0016P",
                   "DP05_0017", "DP05_0017P",
                   "DP05_0018", "DP05_0018P",
                   "DP05_0021", "DP05_0021P",
                   "DP05_0022", "DP05_0022P",
                   "DP05_0023", "DP05_0023P",
                   "DP05_0024", "DP05_0024P",
                   "DP05_0026", "DP05_0026P",
                   "DP05_0027", "DP05_0027P",
                   "DP05_0030", "DP05_0030P",
                   "DP05_0031", "DP05_0031P",
                   "DP05_0037", "DP05_0037P",
                   "DP05_0038", "DP05_0038P",
                   "DP05_0039", "DP05_0039P",
                   "DP05_0044", "DP05_0044P",
                   "DP05_0052", "DP05_0052P",
                   "DP05_0057", "DP05_0057P",
                   "DP05_0058", "DP05_0058P",
                   "DP05_0073", "DP05_0073P",
                   "DP05_0078", "DP05_0078P",
                   "DP05_0089", "DP05_0089P"
                   )  

length(dp_05_vars_22)


dp_05_vars_21 <- c("DP05_0001", "DP05_0001P", 
                   "DP05_0002", "DP05_0002P", 
                   "DP05_0003","DP05_0003P", 
                   "DP05_0005", "DP05_0005P",
                   "DP05_0006", "DP05_0006P",
                   "DP05_0007", "DP05_0007P",
                   "DP05_0008", "DP05_0008P",
                   "DP05_0009", "DP05_0009P",
                   "DP05_0010", "DP05_0010P",
                   "DP05_0011", "DP05_0011P",
                   "DP05_0012", "DP05_0012P",
                   "DP05_0013", "DP05_0013P",
                   "DP05_0014", "DP05_0014P",
                   "DP05_0015", "DP05_0015P",
                   "DP05_0016", "DP05_0016P",
                   "DP05_0017", "DP05_0017P",
                   "DP05_0018", "DP05_0018P",
                   "DP05_0021", "DP05_0021P",
                   "DP05_0022", "DP05_0022P",
                   "DP05_0023", "DP05_0023P",
                   "DP05_0024", "DP05_0024P",
                   "DP05_0026", "DP05_0026P",
                   "DP05_0027", "DP05_0027P",
                   "DP05_0030", "DP05_0030P",
                   "DP05_0031", "DP05_0031P",
                   "DP05_0037", "DP05_0037P",
                   "DP05_0038", "DP05_0038P",
                   "DP05_0039", "DP05_0039P",
                   "DP05_0044", "DP05_0044P",
                   "DP05_0052", "DP05_0052P",
                   "DP05_0057", "DP05_0057P",
                   "DP05_0058", "DP05_0058P",
                   "DP05_0071", "DP05_0071P",
                   "DP05_0076", "DP05_0076P",
                   "DP05_0087", "DP05_0087P"
                   ) 


dp05_main_22 <- Full_dp_2022 %>%
  filter(variable %in% dp_05_vars_22)

dp05_tract_22 <- dp_2022 %>%
  filter(variable %in% dp_05_vars_22)

dp05_sd_22 <- uethda_schools_2022 %>%
  filter(variable %in% dp_05_vars_22)

dp_05_names <- c("Total Population", "Total Population Percent", 
                 "Total Male Population", "Percent Male Population",
                 "Total Female Population","Percent Female Population", 
                 "Total Population Under 5 Years", "Percent Population Under 5 Years",
                 "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                 "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                 "Total Population 15-19 Years", "Percent Population 15-19 Years",
                 "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                 "Total Population 25-34 Years", "Percent Population 25-34 Years",
                 "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                 "Total Population 45-54 Years", "Percent Population 45-54 Years",
                 "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                 "Total Population 60-64 Years", "Percent Population 60-64 Years",
                 "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                 "Total Population 75-84 Years", "Percent Population 75-84 Years",
                 "Total Population 85+ Years", "Percent Population 85+ Years", 
                 "Median Age", "Percent Median Age", 
                 "Total Population 18+ Years", "Percent Population 18+ Years", 
                 "Total Population 21+ Years","Percent Population 21+ Years", 
                 "Total Population 62+ Years", "Percent Population 62+ Years", 
                 "Total Population 65+ Years", "Percent Population 65+ Years",
                 "Total Male Population 18+ Years", "Percent Male Population 18+ Years", 
                 "Total Female Population 18+ Years", "Percent Female Population 18+ Years",
                 "Total Male Population 65+ Years", "Percent Male Population 65+ Years", 
                 "Total Female Population 65+ Years", "Percent Female Population 65+ Years",
                 "Total Population White", "Percent Population White", 
                 "Total Population Black", "Percent Population Black", 
                 "Total Population Native American", "Percent Population Native American", 
                 "Total Population Asian", "Percent Population Asian", 
                 "Total Population Pacific Islander", "Percent Population Pacific Islander",
                 "Total Population Some Other Race", "Percent Population Some Other Race", 
                 "Total Population Two or More Races", "Percent Population Two or More Races",
                 "Total Population Hispanic", "Percent Population Hispanic", 
                 "Total Population Non-Hispanic", "Percent Population Non-Hispanic", 
                 "Total Voting Population","Percent Voting Population" 
                 )

length(dp_05_names)

named_dp05_main_22 <- cbind(dp05_main_22, dp_05_names)

named_dp05_tract_22 <- cbind(dp05_tract_22, dp_05_names)

named_dp05_school_22 <- cbind(dp05_sd_22, dp_05_names)

# add years column 

named_dp05_main_22_year <- named_dp05_main_22 %>%
  mutate(Year = 2022)

named_dp05_tract_22_year <- named_dp05_tract_22 %>%
  mutate(Year = 2022)

named_dp05_school_22_year <- named_dp05_school_22 %>%
  mutate(Year = 2022)

trimmed_dp05_main_22 <- named_dp05_main_22_year %>%
  select(2,4,5,8,9)

trimmed_dp05_tract_22 <- named_dp05_tract_22_year %>%
  select(2,4,5,8,10,9)

trimmed_dp05_sd_22 <- named_dp05_school_22_year %>%
  select(2,4,5,6,8,7)

names(trimmed_dp05_main_22)  <- c("Location", "2022 Estimate", "2022 MOE", "Variable", "Year")

names(trimmed_dp05_tract_22) <- c("Location", "2022 Estimate", "2022 MOE", "Variable", "Year", "geometry")

names(trimmed_dp05_sd_22) <- c("Location", "2022 Estimate", "2022 MOE", "Variable", "Year", "geometry")

#### pull variables from 2021 ####


dp05_main_21 <- Full_dp_2021 %>%
  filter(variable %in% dp_05_vars_21)

View(dp05_main_21)
View(dp05_main_22)

dp05_tract_21 <- dp_2021 %>%
  filter(variable %in% dp_05_vars_21)

dp05_sd_21 <- uethda_schools_2021 %>%
  filter(variable %in% dp_05_vars_21)

named_dp05_main_21 <- cbind(dp05_main_21, dp_05_names)

named_dp05_tract_21 <- cbind(dp05_tract_21, dp_05_names)

named_dp05_school_21 <- cbind(dp05_sd_21, dp_05_names)


# add year column 

named_dp05_main_21_year <- named_dp05_main_21 %>%
  mutate(Year = 2021)

named_dp05_tract_21_year <- named_dp05_tract_21 %>%
  mutate(Year = 2021)

named_dp05_school_21_year <- named_dp05_school_21 %>%
  mutate(Year = 2021)

names(named_dp05_school_21_year)

named_dp05_tract_21_year

named_dp05_main_21_year

trimmed_dp05_main_21 <- named_dp05_main_21_year %>%
  select(2,4,5,8,9)

trimmed_dp05_tract_21 <- named_dp05_tract_21_year %>%
  select(2,4,5,8,10,9)

trimmed_dp05_sd_21 <- named_dp05_school_21_year %>%
  select(2,4,5,6,8,7)

names(trimmed_dp05_main_21)  <- c("Location", "2021 Estimate", "2021 MOE", "Variable", "Year")

names(trimmed_dp05_tract_21) <- c("Location", "2021 Estimate", "2021 MOE", "Variable", "Year", "geometry")

names(trimmed_dp05_sd_21) <- c("Location", "2021 Estimate", "2021 MOE", "Variable", "Year", "geometry")

#### HAVE TO REPLACE SEMICOLON WITH COMMA FOR 2022 DATA ^^^^^^^^^^^^^^^^^^^^ ######################

trimmed_dp05_tract_22_cleaned <- trimmed_dp05_tract_22 %>%
  mutate(Location = str_replace_all(Location, ";", ","))


##### combine 2022 and 2021 together #####

trimmed_dp05_main_22

county_dp05_2122 <- left_join(trimmed_dp05_main_22 %>%
                                select(!Year), trimmed_dp05_main_21%>%
                                select(!Year), by = c("Location", "Variable"))

county_dp05_2122

tract_dp05_2122 <- left_join(trimmed_dp05_tract_22_cleaned %>%
                               select(!Year)%>%
                             st_drop_geometry(), trimmed_dp05_tract_21%>%
                               select(!Year)%>%
                             st_drop_geometry(), by = c("Location", "Variable"))

tract_dp05_2122

schools_dp05_2122 <- left_join(trimmed_dp05_sd_22 %>%
                                 select(!Year)%>%
                                 st_drop_geometry(), trimmed_dp05_sd_21%>%
                                 select(!Year)%>%
                                 st_drop_geometry(), by = c("Location", "Variable"))

schools_dp05_2122

#### start the tables ####

county_dp05_2122_cleaned <- county_dp05_2122 %>%
  mutate(Location = remove_after_comma_function(Location))


schools_dp05_2122_cleaned <- schools_dp05_2122 %>%
  mutate(Location = remove_after_comma_function(Location))

schools_dp05_2122_cleaned

tract_dp05_2122_cleaned <- tract_dp05_2122

tract_dp05_2122_cleaned


## total pop 

total_pop_for_table <- county_dp05_2122_cleaned %>%
  filter(Variable == "Total Population") %>%
  select(Location, `2022 Estimate`, `2022 MOE`,`2021 Estimate`,`2021 MOE`,Variable)%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  select(!c(Variable, `2022 MOE`, `2021 MOE`))

total_population_table <- table_function(total_pop_for_table, `Total Population`)

total_population_table

population_significance_tract  <- tract_dp05_2122 %>%
  filter(Variable == "Total Population")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Significance = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(!c(Variable, `2022 MOE`, `2021 MOE`))%>%
  filter(Significance == TRUE)%>%
  select(!Significance)

census_tract_pop_change_table <- table_function(population_significance_tract, `UETHDA Census Tracts that Population Statistically Significantly Changed`)

census_tract_pop_change_table

trimmed_dp05_tract_22


geometries <- trimmed_dp05_tract_22 %>%
  select(Location,geometry)%>%
  reframe(Location, geometry)%>%
  mutate(Location = str_replace_all(Location, ";", ","))%>%
  unique()

geometries <- st_as_sf(geometries)

geometries

dim(geometries)

trimmed_dp05_sd_22

school_geometries <- trimmed_dp05_sd_22 %>%
  select(Location,geometry)%>%
  reframe(Location, geometry)%>%
  mutate(Location = remove_after_comma_function(Location))%>%
  unique()

school_geometries <- st_as_sf(school_geometries)

school_geometries

dim(geometries)

schools_pop_for_table <- schools_dp05_2122_cleaned %>%
  filter(Variable == "Total Population") %>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Significance = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(!c(Variable, `2022 MOE`, `2021 MOE`))



schools_pop_table <- table_function(schools_pop_for_table, `Total Population in UETHDA School Districts`) 

schools_pop_table






population_significant_schools <- schools_dp05_2122_cleaned %>%
  filter(Variable == "Total Population")%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  mutate(Significance = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(!c(Variable, `2022 MOE`, `2021 MOE`))%>%
  filter(Significance == TRUE)%>%
  select(!Significance)

tract_dp05_2122_cleaned

tract_sig_pop_changes_joined <- left_join(population_significance_tract, geometries, by = "Location")

school_geometries

schools_sig_pop_changes_joined <- left_join(population_significant_schools, school_geometries, by = "Location")

tract_sig_pop_changes_joined

tract_pop_changes_geom <- st_as_sf(tract_sig_pop_changes_joined)

schools_pop_changes_geom <- st_as_sf(schools_sig_pop_changes_joined)

tract_pop_changes_geom

grid <- geometries %>%
  ggplot()+
  geom_sf()

tract_pop_changes_geom

tract_map_function(geometries, tract_pop_changes_geom, `Percent Change`, "Census Tract Significant Percent Change in Population from 2022 to 2021")

tract_map_function(school_geometries, schools_pop_changes_geom, `Percent Change`, "School District Significant Percent Change in Population from 2022 to 2021")

schools_pop_changes_geom

## age groups 

age_table_vars <- c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                    "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                    "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                    "Total Population 15-19 Years", "Percent Population 15-19 Years",
                    "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                    "Total Population 25-34 Years", "Percent Population 25-34 Years",
                    "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                    "Total Population 45-54 Years", "Percent Population 45-54 Years",
                    "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                    "Total Population 60-64 Years", "Percent Population 60-64 Years",
                    "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                    "Total Population 75-84 Years", "Percent Population 75-84 Years",
                    "Total Population 85+ Years", "Percent Population 85+ Years", 
                    "Median Age")

median_age <- county_dp05_2122 %>%
  filter(Variable %in% age_table_vars)%>%
  filter(Variable == "Median Age")


## age groups graphs 

location_factors_for_graph <- c("United States", "Tennessee", "Carter County", "Greene County",
                                "Hancock County", "Hawkins County", "Johnson County", "Sullivan County",
                                "Unicoi County", "Washington County")  

county_location_factors_for_graph <- c("Carter County", "Greene County",
                                       "Hancock County", "Hawkins County", "Johnson County", "Sullivan County",
                                       "Unicoi County", "Washington County")

options(scipen = 999)

age_group_distributions_2022 <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Age Group Distribution 2022")


age_group_distributions_2022

age_group_distributions_2021 <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Age Group Distribution 2021")


age_group_distributions_2021



age_group_percentage_distributions_22 <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Percent"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Age Group Percentage Distribution 2022")

age_group_percentage_distributions_22

age_group_percentage_distributions_21 <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Percent"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("Age Group Percentage Distribution 2021")

age_group_percentage_distributions_21


## age group tables

total_ages_for_table<- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))%>%
  select(Location,Variable ,`2022 Estimate`)

age_group_total_tables_2022 <- table_function(total_ages_for_table_22, `2022 Population Totals for Age Groups`)

age_group_total_tables_2022

total_ages_for_table_21 <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))%>%
  select(Location, Variable, `2021 Estimate`)

table_function(total_ages_for_table_21, `2022 Population Totals for Age Groups`)

county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))

total_age_groups_percent_change <- county_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  filter(Variable %in% age_table_vars)%>%
  filter(str_detect(Variable, "Total"))%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2021 Estimate`,2))

total_age_groups_percent_change

percent_change_age_groups_for_table <- total_age_groups_percent_change %>%
  select(Location, Variable, `Percent Change`)%>%
  pivot_wider(names_from = "Variable", values_from = "Percent Change")


percent_change_total_age_group_table <- table_function(percent_change_age_groups_for_table, `Percent Change in Total Age Group Populations from 2022 to 2021`)

percent_change_total_age_group_table


## check counties for significance in total 
county_age_group_changes_sig_tested <- county_dp05_2122_cleaned %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))




county_total_pop_age_groups_significant_changes_graph <- county_age_group_changes_sig_tested %>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  filter(Location != "United States") %>%
  filter(Location != "Tennessee")%>%
  filter(Variable %in% age_table_vars)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Total"))%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  ggplot(aes( y = Variable, x = `Estimate`, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free")+
  geom_label(aes(group = Year,label = `Estimate`), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Dark2")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Statistically Significant Changes in UETHDA County Age Group Total Populations from 2022 to 2021")

county_total_pop_age_groups_significant_changes_graph

county_percent_pop_age_groups_significant_changes_graph <- county_age_group_changes_sig_tested %>%
  filter(Significant == TRUE)%>%
  filter(Variable %in% age_table_vars)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  filter(Location != "United States") %>%
  filter(Location != "Tennessee")%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Variable = factor(Variable, levels = c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                                                "Total Population 5-9 Years", "Percent Population 5-9 Years", 
                                                "Total Population 10-14 Years", "Percent Population 10-14 Years", 
                                                "Total Population 15-19 Years", "Percent Population 15-19 Years",
                                                "Total Population 20-24 Years", "Percent Population 20-24 Years", 
                                                "Total Population 25-34 Years", "Percent Population 25-34 Years",
                                                "Total Population 35-44 Years", "Percent Population 35-44 Years", 
                                                "Total Population 45-54 Years", "Percent Population 45-54 Years",
                                                "Total Population 55-59 Years", "Percent Population 55-59 Years", 
                                                "Total Population 60-64 Years", "Percent Population 60-64 Years",
                                                "Total Population 65-74 Years", "Percent Population 65-74 Years", 
                                                "Total Population 75-84 Years", "Percent Population 75-84 Years",
                                                "Total Population 85+ Years", "Percent Population 85+ Years")))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Spectral")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Statistically Significant Changes in UETHDA County Age Group Percent of Population from 2022 to 2021")

county_percent_pop_age_groups_significant_changes_graph

## median age 
county_median_age_significance <- county_age_group_changes_sig_tested %>%
  filter(Variable == "Median Age")

county_median_age_for_table <- county_median_age_significance %>%
  select(Location, Variable, `2022 Estimate`, `2021 Estimate`, Significant)%>%
  pivot_wider(names_from = Variable, values_from = c("2022 Estimate", "2021 Estimate"), names_sep = " ")

median_age_table <- table_function(county_median_age_for_table, `Median Age Changes from 2022 to 2021`)

median_age_table

county_median_age_changes <- county_median_age_for_table %>%
  select(c("Location", "2022 Estimate Median Age", "2021 Estimate Median Age"))%>%
  rename("2022 Estimate" = "2022 Estimate Median Age", "2021 Estimate" = "2021 Estimate Median Age")%>%
  pivot_longer(-Location, names_to = "Year", values_to = "Estimate")%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  ggplot(aes(x = Year, y = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Accent")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Median Age Changes from 2022 to 2021")

county_median_age_changes

### u5, u18, 22+, 62+ age groups

special_age_groups <- c("Total Population Under 5 Years", "Percent Population Under 5 Years",
                        "Total Population Under 18 Years", "Percent Population Under 18 Years",
                        "Total Population 18+ Years", "Percent Population 18+ Years",
                        "Total Population 21+ Years", "Percent Population 21+ Years",
                        "Total Population 62+ Years", "Percent Population 62+ Years",
                        "Total Population 65+ Years", "Percent Population 65+ Years")

county_special_age_groups_for_table <- county_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  select(Location, Variable, `2022 Estimate`)%>%
  pivot_wider(names_from = Variable, values_from = "2022 Estimate")

county_special_age_groups_table <- table_function(county_special_age_groups_for_table, `Special Age Groups 2022`)



county_special_age_groups_percentage_graph <- county_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`))%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Special Age Group Percentage of Population Changes 2022 to 2021")

county_special_age_groups_percentage_graph


# split for testing 

county_special_ages_tested <- county_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))


county_special_pops_percentage_significant_graph <- county_special_ages_tested%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  filter(Location != "United States") %>%
  filter(Location != "Tennessee")%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Significant Special Age Group Percentage of Population Changes 2022 to 2021")

county_special_pops_percentage_significant_graph

#### u5 total and percent counties and changes ####

county_dp05_2122_cleaned

table_function(county_special_ages_tested%>%
                 select(Location,Variable ,`2022 Estimate`, `2021 Estimate`, Significant)%>%
                 filter(str_detect(Variable, "Under 5"))%>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)), `Percent Difference in Under 5 Populations (95% Level of Confidence)`)

tested_u5_county <- county_special_ages_tested %>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`, Significant)%>%
  filter(str_detect(Variable, "Under 5"))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))

county_special_ages_tested%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  filter(str_detect(Variable, "Under 5"))%>%
  select(Location, Variable, `2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Oranges")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Under Five Years of Age Changes 2022 to 2021")



options(scipen = 999)
### gender

county_dp05_2122_cleaned

gender_vars <- c("Total Male Population", "Percent Male Population",
                 "Total Female Population", "Percent Female Population",
                 "Total Male Population 18+ Years", "Percent Male Population 18+ Years",
                 "Total Female Population 18+ Years", "Perent Female Population 18+ Years",
                 "Total Male Population 65+ Years", "Percent Male Population 65+ Years",
                 "Total Female Population 65+ Years", "Percent Female Population 65+ Years")

county_gender_for_table <- county_dp05_2122_cleaned %>%
  filter(Variable %in% gender_vars) %>%
  select(Location, Variable, `2022 Estimate`)%>%
  pivot_wider(names_from = "Variable", values_from = "2022 Estimate")

county_gender_table <- table_function(county_gender_for_table, `Sex Profile 2022`)

county_gender_table

county_dp05_2122_cleaned %>%
  filter(Variable %in% gender_vars) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.99))%>%
  filter(Significant == TRUE)


county_dp05_2122_cleaned %>%
  filter(Variable %in% gender_vars) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.99))%>%
  filter(Significant == TRUE)%>%
  select(Location, Variable, `2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = gender_vars))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set3")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Significant Sex Population Changes 2022 to 2021")


### races 

race_vars <- c("Total Population White", "Percent Population White",
               "Total Population Black", "Percent Population Black",
               "Total Population Native American", "Percent Population Native American",
               "Total Population Asian", "Percent Population Asian",
               "Total Population Pacific Islander", "Percent Population Pacific Islander",
               "Total Population Some Other Race", "Percent Population Some Other Race",
               "Total Population Two or More Races", "Percent Population Two or More Races",
               "Total Population Hispanic", "Percent Population Hispanic",
               "Total Population Non-Hispanic", "Percent Population Non-Hispanic")

races_for_table <- county_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  select(Location, Variable, `2022 Estimate`)%>%
  pivot_wider(names_from = "Variable", values_from = "2022 Estimate")
  
  


race_table_2022 <- table_function(races_for_table, `Race and Ethnicity Characteristics 2022`)

race_table_2022


county_race_change_significant_graph <- county_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 Estimate`, `2021 Estimate`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = race_vars))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "PuRd")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Statistically Significant Race Percentage of Population Changes 2022 to 2021")


county_race_change_significant_graph

### difference in race % and total for table


county_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  group_by(Location, Variable)%>%
  filter(Location != "Tennessee")%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(Location = factor(Location, levels = location_factors_for_graph))%>%
  mutate(Variable = factor(Variable, levels = race_vars))%>%
  ggplot(aes( y = Variable, x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Location,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "PuRd")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Race and Ethnicity Percent Change from 2021 to 2022")
  

percent_change_race_for_table <- county_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  group_by(Location, Variable)%>%
  filter(Location != "Tennessee")%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2021 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(Location,Variable ,`Percent Change`)%>%
  pivot_wider(names_from = Variable, values_from = `Percent Change`)
  

percent_change_total_race_table <- table_function(percent_change_race_for_table, `Percent Change in Total Racial or Ethnic Populations from 2022 to 2021`)

percent_change_total_race_table



#### now repeat all that work for tract and school district ####

#### tract ####


### median age 

geom_tract_dp05_2122 <- left_join(tract_dp05_2122_cleaned, trimmed_dp05_tract_22_cleaned %>%
  select(Location, geometry)%>%
    unique(), by = "Location")

tract_geometries <- geom_tract_dp05_2122 %>%
  st_as_sf()

tract_sig_total_population_changes <- geom_tract_dp05_2122 %>%
  group_by(Location, Variable)%>%
  filter(Variable == "Total Population")%>%
  filter(Variable != "Total Population Percent")%>%
  filter(Variable != "Percent Voting Population")%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  st_as_sf()

tract_map_function(tract_geometries, tract_sig_total_population_changes, `Percent Change`, "Census Tracts with Significant Population Changes from 2021-2022")

tract_sig_median_age_significant <- geom_tract_dp05_2122 %>%
  group_by(Location, Variable)%>%
  filter(Variable == "Median Age")%>%
  filter(Variable != "Total Population Percent")%>%
  filter(Variable != "Percent Voting Population")%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  st_as_sf()

tract_sig_median_age_significant

tract_median_age <- geom_tract_dp05_2122 %>%
  group_by(Location, Variable)%>%
  filter(Variable == "Median Age")%>%
  st_as_sf()

tract_map_function_orange(tract_geometries, tract_median_age, `2022 Estimate`, "2022 Median Age")

## age distributions 

tract_age_groups_significant <- geom_tract_dp05_2122 %>%
  filter(Variable %in% age_table_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)



tract_age_groups_significant 

tract_age_groups_significant 

# this is too big, going to do special age groups



tract_significant_changes_in_special_age_groups <- geom_tract_dp05_2122 %>%
  filter(Variable %in% special_age_groups)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  st_as_sf()


table_function(tract_significant_changes_in_special_age_groups %>%
                 select(Location,Variable ,`2022 Estimate`, `Percent Change`)%>%
                 count(Variable)%>%
                 arrange(-n), `Number of Census Tracts that had Significant Changes in Special Age Groups from 2022 to 2021`)


tract_sig_u5_total <- tract_significant_changes_in_special_age_groups %>%
  filter(str_detect(Variable, "Under 5"))%>%
  filter(str_detect(Variable, "Total"))


tract_sig_u5_percent <- tract_significant_changes_in_special_age_groups %>%
  filter(str_detect(Variable, "Under 5"))%>%
  filter(str_detect(Variable, "Percent"))

tract_map_function(tract_geometries, tract_sig_u5_total, `Percent Change`, "Census Tract Significant Percent Change in Total Under 5 Years from 2022 to 2021")





tract_map_function(tract_geometries,tract_sig_u5_percent, `Percent Change`, "2022 Percent of Population that is Under 5 Significant Changes")

tract_sig_u5_percent

tract_sig_u5_total

tract_u5_populations <- geom_tract_dp05_2122 %>%
  filter(Variable %in% special_age_groups)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_as_sf()%>%
  filter(str_detect(Variable, "Under 5"))%>%
  filter(str_detect(Variable, "Total"))

tract_u5_populations_percent <- geom_tract_dp05_2122 %>%
  filter(Variable %in% special_age_groups)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_as_sf()%>%
  filter(str_detect(Variable, "Under 5"))%>%
  filter(str_detect(Variable, "Percent"))


tract_map_function(tract_geometries, tract_u5_populations, `2022 Estimate`, "2022 Under 5 Years Total Populations")

tract_map_function(tract_geometries, tract_u5_populations_percent, `2022 Estimate`, "2022 Under 5 Years Percent of Population")
### race and ethnicity

race_changes_tract <- geom_tract_dp05_2122 %>%
  filter(Variable %in% race_vars)%>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2022 Estimate`,2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  st_as_sf()

sig_white_race_changes_tract <- race_changes_tract %>%
  filter(str_detect(Variable, "White"))%>%
  filter(str_detect(Variable, "Percent"))%>%
  filter(Significant == TRUE)

tract_map_function_orange(tract_geometries, sig_white_race_changes_tract, `Percent Change`, "2022 Signifcant Change in Percentage of White Population")

tract_map_function_orange(tract_geometries,race_changes_tract %>%
  filter(str_detect(Variable, "White"))%>%
  filter(str_detect(Variable, "Percent")), `2022 Estimate`, "2022 Percent of Population that is White")

tract_map_function_orange(tract_geometries,race_changes_tract %>%
                            filter(str_detect(Variable, "Black"))%>%
                            filter(str_detect(Variable, "Percent")), `2022 Estimate`, "2022 Percent of Population that is Black/African American")

race_changes_tract %>%
  filter(Variable == "Percent Population Hispanic")


tract_map_function_orange(tract_geometries,race_changes_tract %>%
                            filter(Variable == "Percent Population Hispanic"), `2022 Estimate`, "2022 Percent of Population that is Hispanic")


#### do population under 5, women with births as percent of women, and population 1-4 that moved from out of county ####


#### school districts ####

school_geometries <- schools_dp05_2122_cleaned %>%
  select(Location, geometry)%>%
  unique()

school_geometries

test_1 <- schools_dp05_2122_cleaned %>%
  filter(str_detect(Location, "Kingsport"))%>%
  filter(Variable == "Total Population")

mapview(test_1, zcol = "Year")

school_grid <- school_geometries %>%
  ggplot()+
  geom_sf()


school_grid


#### school districts age groups ###

schools_age_groups <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% age_table_vars)

school_age_group_total_distribution_22 <- schools_age_groups %>% 
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Total"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2022 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  geom_errorbar(aes(x=`2022 Estimate`, xmin=`2022 Estimate` - `2022 MOE`, xmax = `2022 Estimate` + `2022 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("School District Age Group Distribution 2022")

school_age_group_total_distribution_22

school_age_group_total_distribution_21 <- schools_age_groups %>% 
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Total"))%>%
  ggplot(aes(y = fct_rev(Variable), x = `2021 Estimate`, fill = Location))+
  geom_col(position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  theme(text = element_text("Calibri"))+
  geom_errorbar(aes(x=`2021 Estimate`, xmin=`2021 Estimate` - `2021 MOE`, xmax = `2021 Estimate` + `2021 MOE`), width=0.2, linewidth=1, color="blue") + 
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  theme(legend.position = "none")+
  ggtitle("School District Age Group Distribution 2021")

## age group tables 

schools_age_groups

school_ages_for_table_22 <- schools_age_groups %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Total"))%>%
  select(Location, `2022 Estimate`, `Variable`)%>%
  st_drop_geometry()%>%
  pivot_wider(values_from = "2022 Estimate", names_from = "Variable")

schools_age_group_total_table_22 <- table_function(school_ages_for_table_22, `2022 School District Age Group Totals`)

schools_age_group_total_table_22

school_ages_for_table_21 <- schools_age_groups %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Total"))%>%
  select(Location, `2021 Estimate`, `Variable`)%>%
  st_drop_geometry()%>%
  pivot_wider(values_from = "2021 Estimate", names_from = "Variable")

schools_age_group_total_table_21 <- table_function(school_ages_for_table_21, `2021 School District Age Group Totals`)

schools_age_group_total_table_21
# percents 

school_percent_ages_for_table_22 <-schools_age_groups %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Percent"))%>%
  st_drop_geometry()%>%
  select(Location, `2022 Estimate`, Variable)%>%
  pivot_wider(values_from = "2022 Estimate", names_from = "Variable")

schools_age_group_percent_table_22 <- table_function(school_percent_ages_for_table_22, `2022 School District Age Group Percents`)

schools_age_group_percent_table_22

school_percent_ages_for_table_21 <- schools_age_groups %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(str_detect(Variable, "Percent"))%>%
  st_drop_geometry()%>%
  select(Location, `2021 Estimate`, Variable)%>%
  pivot_wider(values_from = "2021 Estimate", names_from = "Variable")

schools_age_group_percent_table_21 <- table_function(school_percent_ages_for_table_21, `2021 School District Age Group Percents`)

schools_age_group_percent_table_21

# percent change

schools_age_groups_changes <- schools_age_groups %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2021 Estimate`, 2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))
  

school_ages_percent_change_for_table <- schools_age_groups_changes %>%
  select(Location, Variable, `Percent Change`)%>%
  pivot_wider(names_from = "Variable", values_from = "Percent Change")

table_function(school_ages_percent_change_for_table, `School District Percent Change in Age Group Totals from 2022 to 2021`)

school_age_groups_total_significant_change_graph <- schools_age_groups_changes %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  filter(str_detect(Variable, "Total"))%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Dark2")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Statistically Significant Changes in School District Age Group Total Populations from 2022 to 2021")

school_age_groups_total_significant_change_graph



schools_age_groups_changes 

school_ages_percent_change_for_table_percent <- schools_age_groups_changes %>%
  select(Location, Variable, `Percent Change`)%>%
  pivot_wider(names_from = "Variable", values_from = "Percent Change")



school_age_groups_percent_significant_change_graph <- schools_age_groups_changes %>%
  mutate(Variable = factor(Variable, levels = age_table_vars))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  filter(str_detect(Variable, "Percent"))%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Spectral")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("Statistically Significant Changes in School District Age Group Percent of Population from 2022 to 2021")  

school_age_groups_percent_significant_change_graph

## median age 

schools_median_age <- schools_dp05_2122_cleaned %>%
  filter(Variable == "Median Age")

schools_median_age_22 <- schools_median_age%>%
  st_drop_geometry()%>%
  filter(Year == 2022)%>%
  rename("2022 Estimate" = "Estimate", "2022 MOE" = "MOE")%>%
  select(!Year)

schools_median_age_21 <- schools_median_age%>%
  st_drop_geometry()%>%
  filter(Year == 2021)%>%
  rename("2021 Estimate" = "Estimate", "2021 MOE" = "MOE")%>%
  select(!Year)

joined_schools_median_age <- left_join(schools_median_age_22, schools_median_age_21, by = c("Location", "Variable"))

schools_median_age_change_sig <- joined_schools_median_age %>%
  mutate(`Percent Change` = round(100*(`2022 Estimate` - `2021 Estimate`) / `2021 Estimate`, 2))%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  select(Location, Variable, `2022 Estimate`, `2021 Estimate`, `Percent Change`, `Significant`)

schools_median_age_change_for_table <- schools_median_age_change_sig %>%
  rename("2022 Median Age Estimate" = "2022 Estimate", "2021 Median Age Estimate" = "2021 Estimate")%>%
  select(Location, Significant,`2022 Median Age Estimate`, `2021 Median Age Estimate`)

table_function(schools_median_age_change_for_table, `School District Median Age Changes from 2022 to 2021`)

school_district_median_age_change_geometitires <- left_join(schools_median_age_change_sig, school_geometries, by = "Location")

school_district_median_age_sf <- st_as_sf(school_district_median_age_change_geometitires)

school_geometries

mapview(school_district_median_age_sf, zcol = "Percent Change")

tract_map_function(school_geometries,school_district_median_age_sf, `Percent Change`, "Median Age Change in School Districts from 2022 to 2021")

betsy <- schools_median_age %>%
  filter(str_detect(Location, "Elizabethton"))

tract_map_function(school_geometries, betsy, `Estimate`, "Med")


#### special age groups #####
schools_special_22 <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  filter(Year == 2022)%>%
  st_drop_geometry()%>%
  rename(`Estimate 2022` = "Estimate", `MOE 2022` = "MOE")

schools_special_21 <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  filter(Year == 2021)%>%
  st_drop_geometry()%>%
  rename(`Estimate 2021` = "Estimate", `MOE 2021` = "MOE")%>%
  select(!Year)

school_special_ages_for_testing <- left_join(schools_special_22, schools_special_21, by = c("Location", "Variable"))

schools_ages_tested <- school_special_ages_for_testing %>%
  mutate(Significant = significance(`Estimate 2022`, `Estimate 2021`, `MOE 2022`, `MOE 2021`, clevel = 0.95))%>%
  mutate(`Percent Change` = round(100*((`Estimate 2022` - `Estimate 2021`)/`Estimate 2021`),2))

table_function(schools_ages_tested %>%
                 filter(str_detect(Variable, "Under 5"))%>%
                 select(Location, `Estimate 2022`, `Estimate 2021`, `Percent Change`, Significant)%>%
                 arrange(-`Percent Change`), `School District Under 5 Changes from 2022 to 2021`)


school_sig_u5 <- school_special_ages_for_testing %>%
  mutate(Significant = significance(`Estimate 2022`, `Estimate 2021`, `MOE 2022`, `MOE 2021`, clevel = 0.95))%>%
  mutate(`Percent Change` = round(100*((`Estimate 2022` - `Estimate 2021`)/`Estimate 2021`),2))%>%
  filter(Significant == TRUE)%>%
  filter(str_detect(Variable, "Under 5"))

table_function(school_sig_u5%>%
                 select(Location, `Estimate 2022`, `Estimate 2021`, `Percent Change`)%>%
                 arrange(-`Percent Change`), `Significantly Different School Districts in Under 5 Populations from 2022 to 2021`) 

schools_special_ages_for_table <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  filter(Year == 2022)%>%
  st_drop_geometry()%>%
  select(!c(MOE, Year))%>%
  pivot_wider(names_from = Variable, values_from = Estimate)

table_function(schools_special_ages_for_table, `School District Special Age Groups 2022`)

schools_ages_tested


school_special_age_groups_percentage_graph <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% special_age_groups)%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  mutate(Year = factor(Year, levels = c("2022", "2021")))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location)+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("School District Special Age Group Percentage of Population Changes 2022 to 2021")

school_special_age_groups_percentage_graph

school_special_pops_percentage_significant_graph <-schools_dp05_2122_cleaned%>%
  filter(Variable %in% special_age_groups)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("School Significant Special Age Group Percentage of Population Changes 2022 to 2021")

school_special_pops_percentage_significant_graph

school_special_pops_total_significant_graph <- schools_dp05_2122_cleaned%>%
  filter(Variable %in% special_age_groups)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE)%>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Total"))%>%
  mutate(Variable = factor(Variable, levels = special_age_groups))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Paired")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("School Significant Special Age Group TotalChanges 2022 to 2021")

school_special_pops_total_significant_graph

#### sex changes ####


#### races ####

sd_races_for_table <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  st_drop_geometry()%>%
  select(Location, Variable, `2022 Estimate`)%>%
  pivot_wider(names_from = "Variable", values_from = "2022 Estimate")

table_function(sd_races_for_table, `School District Race and Ethnicity Characteristics 2022`)


schools_race_change_significant_graph_percent <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE) %>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Percent"))%>%
  mutate(Variable = factor(Variable, levels = race_vars))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "PuRd")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("School District Statistically Significant Race Percentage of Population Changes 2022 to 2021")


schools_race_change_significant_graph

schools_race_change_significant_graph_total <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  filter(Significant == TRUE) %>%
  select(Location,Variable ,`2022 Estimate`, `2021 Estimate`)%>%
  pivot_longer(-c(Location, Variable), names_to = "Year", values_to = "Estimate")%>%
  filter(str_detect(Variable, "Total"))%>%
  mutate(Variable = factor(Variable, levels = race_vars))%>%
  ggplot(aes( y = Variable, x = Estimate, fill = Year))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Year,label = Estimate), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "PuRd")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
  theme(strip.text.x = element_text(face = "bold"))+
  theme(plot.title = element_text(size=rel(2.25)))+
  theme(plot.title = element_text(face = "bold"))+
  theme(plot.subtitle = element_text(size = rel(1.5)))+
  theme(plot.subtitle = element_text(face = "italic"))+
  theme(axis.text.x = element_text(size = rel(1.5)))+
  theme(axis.text.x = element_text(face = "bold"))+
  theme(legend.text=element_text(size=rel(1)))+
  theme(legend.text = element_text(face = "bold"))+
  ggtitle("School District Statistically Significant Race  Population Changes 2022 to 2021")


schools_race_change_significant_graph_total


### difference in race % and total for table 
schools_location <- schools_dp05_2122_cleaned %>%
  select(Location)%>%
  st_drop_geometry()%>%
  unique()

row.names(schools_location) <- NULL

schools_location

schools_total_races_for_table_22  

### percent change tables 

schools_percent_race_table_22 <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  filter(Year == "2022")%>%
  filter(Variable %in% race_vars)%>%
  filter(str_detect(Variable, "Percent"))%>%
  select(Location, Estimate, Variable)%>%
  st_drop_geometry()%>%
  pivot_wider(values_from = Estimate, names_from = Variable)%>%
  select(!Location)

schools_percent_race_table_21 <- schools_dp05_2122_cleaned %>%
  filter(Variable %in% race_vars)%>%
  filter(Year == "2021")%>%
  filter(Variable %in% race_vars)%>%
  filter(str_detect(Variable, "Percent"))%>%
  select(Location, Estimate, Variable)%>%
  st_drop_geometry()%>%
  pivot_wider(values_from = Estimate, names_from = Variable)%>%
  select(!Location)

schools_difference_in_percents_races <- schools_percent_race_table_22 - schools_percent_race_table_21

schools_bound_percent_diff_race <- cbind(schools_location, schools_difference_in_percents_races)

table_function(schools_bound_percent_diff_race, `School District Difference in Percentage of Population comprised by Racial or Ethnic Groups 2022 to 2021`)


#### populations under 5 years ####

schools_under_5 <- schools_dp05_2122_cleaned %>%
  filter(Variable == "Total Population Under 5 Years"| 
           Variable == "Percent Population Under 5 Years")

county_under_5 <- county_dp05_2122_cleaned %>%
  filter(Variable == "Total Population Under 5 Years"| 
           Variable == "Percent Population Under 5 Years")

tract_under_5 <- tract_dp05_2122 %>%
  filter(Variable == "Total Population Under 5 Years"| 
           Variable == "Percent Population Under 5 Years")


#### under 5 year stuff ####

schools_under_5 %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2))%>%
  filter(Significant == TRUE)
  


table_function(bound_u5 %>%
                 mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
                 mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95)) %>%
                 select(Location, Variable, `2022 Estimate`, `2021 Estimate`)%>%
                 pivot_wider(names_from = Variable, values_from = c("2022 Estimate", "2021 Estimate"),names_sep = " "), `Under 5 Years 2021 to 2022`)

u5_percent_change_graph <- bound_u5 %>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))%>%
  ggplot(aes( y = Variable, x = `Percent Change`, fill = Significant))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_y")+
  geom_label(aes(group = Variable,label = `Percent Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
  theme(text = element_text("Calibri"))+
  scale_fill_brewer(palette = "Set1")+
  labs(y = " ", x = " ")+
  theme(strip.text.x = element_text(size = rel(1.5)))+
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
  ggtitle("Percent Changes in Under 5 Years from 2021 to 2022")

schools_under_5

schools_u5_22 <- schools_under_5 %>%
  filter(Year == 2022)

schools_u5_21 <- schools_under_5 %>%
  filter(Year == 2021)%>%
  st_drop_geometry()



names(schools_u5_22) <- c("Location", "2022 Estimate", "2022 MOE", "Variable", "Year", "geometry")

names(schools_u5_21) <- c("Location", "2021 Estimate", "2021 MOE", "Variable", "Year")

schools_u5_21

schools_u5_pops <- left_join(schools_u5_22 %>%select(!Year), schools_u5_21 %>%select(!Year), by = c("Location", "Variable"))%>%
  select(Location,Variable ,`2022 Estimate`, `2022 MOE`, `2021 Estimate`, `2021 MOE`)

percent_u5_schools <- schools_u5_pops %>%
  filter(str_detect(Variable, "Percent")) %>% 
  mutate(`Difference` = round((`2022 Estimate` - `2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

total_u5_schools <- schools_u5_pops %>%
  filter(str_detect(Variable, "Percent", negate = TRUE))%>%
  mutate(`Percent Change` = round(100*((`2022 Estimate` - `2021 Estimate`)/`2021 Estimate`),2)) %>%
  mutate(Significant = significance(`2022 Estimate`, `2021 Estimate`, `2022 MOE`, `2021 MOE`, clevel = 0.95))

head(total_u5_schools)

percent_u5_schools

