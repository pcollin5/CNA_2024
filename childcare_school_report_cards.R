#### schools report card, childcare ####

counties <- c("Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Unicoi", "Washington")

childcare_listing_24 <- childcare_listing_032024

names(childcare_listing)

table_function(childcare_listing_24 %>%
                 filter(County %in% counties)%>%
                 select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
                        `Capacity`, `Open Time`, `Close Time`)%>%
                 mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
                 mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
                 
                 arrange(County), `UETHDA Service Area Childcare Centers 02/26/2023`)


childcare_listing_24 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(str_detect(`Agency Name`, "HEAD START"))%>%
  summarise(sum(Capacity))

childcare_listing_24 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise(sum(Count), sum(Capacity))

#### region totals ####

regional_total_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  summarise(`Total Centers`= sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

regional_total_24

region_under_3_total_and_capacity_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_3_total_and_capacity_24

region_under_5_total_and_capacity_24 <- childcare_listing_24%>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_5_total_and_capacity_24

region_under_15_total_and_capacity_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_15_total_and_capacity_24

under_5_populations <- county_dp05_2122_cleaned %>%
  filter(Location != "United States") %>%
  filter(Variable == "Total Population Under 5 Years")%>%
  filter(Year == 2022)

county_u5_populations_for_table <- under_5_populations %>%
  select(Location, Estimate)%>%
  filter(Location != "Tennessee")%>%
  rename("County" = "Location", "Under 5 Population" = "Estimate")

u5_pop_pre <- under_5_populations %>%
  filter(Location != "Tennessee")%>%
  summarise(sum(Estimate))


under_15_populations <- county_dp05_2122_cleaned %>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
  filter(Year == 2022)%>%
  filter(Variable == "Total Population Under 5 Years"|
           Variable == "Total Population 5-9 Years"|
           Variable == "Total Population 10-14 Years")%>%
  group_by(Location)%>%
  summarise(`Under 15 Population` = sum(Estimate))

under_15_populations

u15_pop_pre <- under_15_populations %>%
  summarise(sum(`Under 15 Population`))

County <- "Region"

`Under 5 Population` <- u5_pop_pre$`sum(Estimate)`

`Under 5 Population`

`Under 15 Population` <- u15_pop_pre$`sum(\`Under 15 Population\`)`

`Under 15 Population`


region_for_df_24 <- cbind(County, regional_total_24,region_under_3_total_and_capacity_24, region_under_5_total_and_capacity_24,region_under_15_total_and_capacity_24, `Under 5 Population`, `Under 15 Population`)

region_for_df

under_5_populations_for_df <- under_5_populations %>%
  filter(Location != "Tennessee")%>%
  group_by(Location)%>%
  summarise(`Under 5 Population` = sum(Estimate))

left_join(under_15_populations, under_5_populations_for_df, by = "Location")

county_total_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  group_by(County)%>%
  summarise(`Total Centers`= sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

county_total_24

county_under_3_total_and_capacity_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  group_by(County)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

county_under_3_total_and_capacity_24

county_under_5_total_and_capacity_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  group_by(County)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

county_under_5_total_and_capacity_24

county_under_15_total_and_capacity_24 <- childcare_listing_24 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  group_by(County)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

county_total_24

county_under_3_total_and_capacity_24

county_under_5_total_and_capacity_24

county_under_15_total_and_capacity_24

joinde_test <- left_join(under_15_populations, under_5_populations_for_df, by = "Location")

joinde_test[,-1]

county_total

county_df_join_1_24 <- left_join(county_total_24, county_under_3_total_and_capacity_24, by = "County")

county_df_join_2_24 <- left_join(county_df_join_1_24, county_under_5_total_and_capacity_24)

county_df_join_3_24 <- left_join(county_df_join_2_24, county_under_15_total_and_capacity_24)

under_5_populations_for_df %>%
  mutate(Location = remove_after_space_function(Location))%>%
  select(Location)


county_df_join_4_24 <- left_join(county_df_join_3_24, county_u5_populations_for_table%>%
                                mutate(County = remove_after_space_function(County)))

View(county_df_join_4)

under_15_populations %>%
  rename("County" = "Location")

county_df_final_join_24 <- left_join(county_df_join_4_24, under_15_populations %>%
            rename("County" = "Location")%>%
              mutate(County = remove_after_space_function(County)))



### need tennessee numbers ####


tn_total_and_capacity_24 <- childcare_listing_24 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  summarise('Total Centers' = sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

tn_under_3_total_and_capacity_24 <- childcare_listing_24 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

tn_under_3_total_and_capacity_24

tn_under_5_total_and_capacity_24 <- childcare_listing_24 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

tn_under_5_total_and_capacity_24

tn_under_15_total_and_capacity_24 <- childcare_listing_24 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

tn_u5_pop_pre <- under_5_populations %>%
  filter(Location == "Tennessee")%>%
  summarise(sum(Estimate))


tn_under_15_populations <- county_dp05_2122_cleaned %>%
  filter(Location == "Tennessee")%>%
  filter(Year == 2022)%>%
  filter(Variable == "Total Population Under 5 Years"|
           Variable == "Total Population 5-9 Years"|
           Variable == "Total Population 10-14 Years")%>%
  group_by(Location)%>%
  summarise(`Under 15 Population` = sum(Estimate))

tn_u15_pop_pre <- under_15_populations %>%
  summarise(sum(`Under 15 Population`))


County <- "Tennessee"

`Under 5 Population` <- tn_u5_pop_pre$`sum(Estimate)`

`Under 15 Population` <- tn_u15_pop_pre$`sum(\`Under 15 Population\`)`

tn_for_df_24 <- cbind(County, tn_total_and_capacity_24,tn_under_3_total_and_capacity_24, tn_under_5_total_and_capacity_24,tn_under_15_total_and_capacity_24, `Under 5 Population`, `Under 15 Population`)

names(tn_for_df_24)

names(region_for_df_24)

names(county_df_join_3_24)

childcare_for_table_24 <- rbind(tn_for_df_24, region_for_df_24, county_df_final_join_24)

table_function(childcare_for_table_24 %>%
                 mutate(`Under 5 Ratio` = round(`Under 5 Population` / `Under 5 Capacity`,2))%>%
                 mutate(`Under 15 Ratio` = round(`Under 15 Population` / `Under 15 Capacity`,2)), `Licensed Childcare Providers as of February 2024`)

#### 2023 numbers for change ####

#### schools report card, childcare ####

counties <- c("Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Unicoi", "Washington")

childcare_listing_23 <- childcare_listing

names(childcare_listing)

table_function(childcare_listing_23 %>%
                 filter(County %in% counties)%>%
                 select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
                        `Capacity`, `Open Time`, `Close Time`)%>%
                 mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
                 mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
                 
                 arrange(County), `UETHDA Service Area Childcare Centers 02/26/2023`)


childcare_listing_23 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(str_detect(`Agency Name`, "HEAD START"))%>%
  summarise(sum(Capacity))

childcare_listing_23 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise(sum(Count), sum(Capacity))

#### region totals ####

regional_total_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  summarise(`Total Centers`= sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

regional_total_23

region_under_3_total_and_capacity_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_3_total_and_capacity_23

region_under_5_total_and_capacity_23 <- childcare_listing_23%>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_5_total_and_capacity_23

region_under_15_total_and_capacity_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

region_under_15_total_and_capacity_23

under_5_populations <- county_dp05_2122_cleaned %>%
  filter(Location != "United States") %>%
  filter(Variable == "Total Population Under 5 Years")%>%
  filter(Year == 2022)

county_u5_populations_for_table <- under_5_populations %>%
  select(Location, Estimate)%>%
  filter(Location != "Tennessee")%>%
  rename("County" = "Location", "Under 5 Population" = "Estimate")

u5_pop_pre <- under_5_populations %>%
  filter(Location != "Tennessee")%>%
  summarise(sum(Estimate))


under_15_populations <- county_dp05_2122_cleaned %>%
  filter(Location != "United States")%>%
  filter(Location != "Tennessee")%>%
  filter(Year == 2022)%>%
  filter(Variable == "Total Population Under 5 Years"|
           Variable == "Total Population 5-9 Years"|
           Variable == "Total Population 10-14 Years")%>%
  group_by(Location)%>%
  summarise(`Under 15 Population` = sum(Estimate))

under_15_populations

u15_pop_pre <- under_15_populations %>%
  summarise(sum(`Under 15 Population`))

County <- "Region"

`Under 5 Population` <- u5_pop_pre$`sum(Estimate)`

`Under 5 Population`

`Under 15 Population` <- u15_pop_pre$`sum(\`Under 15 Population\`)`

`Under 15 Population`


region_for_df_23 <- cbind(County, regional_total_23,region_under_3_total_and_capacity_23, region_under_5_total_and_capacity_23,region_under_15_total_and_capacity_23, `Under 5 Population`, `Under 15 Population`)

region_for_df

under_5_populations_for_df <- under_5_populations %>%
  filter(Location != "Tennessee")%>%
  group_by(Location)%>%
  summarise(`Under 5 Population` = sum(Estimate))

left_join(under_15_populations, under_5_populations_for_df, by = "Location")

county_total_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  mutate(Count = 1)%>%
  group_by(County)%>%
  summarise(`Total Centers`= sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

county_total_23

county_under_3_total_and_capacity_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  group_by(County)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

county_under_3_total_and_capacity_23

county_under_5_total_and_capacity_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  group_by(County)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

county_under_5_total_and_capacity_23

county_under_15_total_and_capacity_23 <- childcare_listing_23 %>%
  filter(County %in% counties)%>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  group_by(County)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

county_total_23

county_under_3_total_and_capacity_23

county_under_5_total_and_capacity_23

county_under_15_total_and_capacity_23

joinde_test <- left_join(under_15_populations, under_5_populations_for_df, by = "Location")

joinde_test[,-1]

county_total

county_df_join_1_23 <- left_join(county_total_23, county_under_3_total_and_capacity_23, by = "County")

county_df_join_2_23 <- left_join(county_df_join_1_23, county_under_5_total_and_capacity_23)

county_df_join_3_23 <- left_join(county_df_join_2_23, county_under_15_total_and_capacity_23)

under_5_populations_for_df %>%
  mutate(Location = remove_after_space_function(Location))%>%
  select(Location)


county_df_join_4_23 <- left_join(county_df_join_3_23, county_u5_populations_for_table%>%
                                   mutate(County = remove_after_space_function(County)))

View(county_df_join_4)

under_15_populations %>%
  rename("County" = "Location")

county_df_final_join_23 <- left_join(county_df_join_4_23, under_15_populations %>%
                                       rename("County" = "Location")%>%
                                       mutate(County = remove_after_space_function(County)))



### need tennessee numbers ####


tn_total_and_capacity_23 <- childcare_listing_23 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  summarise('Total Centers' = sum(Count), Capacity = sum(Capacity, na.rm = TRUE))

tn_under_3_total_and_capacity_23 <- childcare_listing_23 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 3)%>%
  summarise('Total Under 3 Centers' = sum(Count), `Under 3 Capacity` = sum(Capacity, na.rm = TRUE))

tn_under_3_total_and_capacity_23

tn_under_5_total_and_capacity_23 <- childcare_listing_23 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 5)%>%
  summarise('Total Under 5 Centers' = sum(Count), `Under 5 Capacity` = sum(Capacity, na.rm = TRUE))

tn_under_5_total_and_capacity_23

tn_under_15_total_and_capacity_23 <- childcare_listing_23 %>%
  mutate(Count = 1)%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Minimum Age Served` <= 15)%>%
  summarise('Total Under 15 Centers' = sum(Count), `Under 15 Capacity` = sum(Capacity, na.rm = TRUE))

tn_u5_pop_pre <- under_5_populations %>%
  filter(Location == "Tennessee")%>%
  summarise(sum(Estimate))


tn_under_15_populations <- county_dp05_2122_cleaned %>%
  filter(Location == "Tennessee")%>%
  filter(Year == 2022)%>%
  filter(Variable == "Total Population Under 5 Years"|
           Variable == "Total Population 5-9 Years"|
           Variable == "Total Population 10-14 Years")%>%
  group_by(Location)%>%
  summarise(`Under 15 Population` = sum(Estimate))

tn_u15_pop_pre <- under_15_populations %>%
  summarise(sum(`Under 15 Population`))


County <- "Tennessee"

`Under 5 Population` <- tn_u5_pop_pre$`sum(Estimate)`

`Under 15 Population` <- tn_u15_pop_pre$`sum(\`Under 15 Population\`)`

tn_for_df_23 <- cbind(County, tn_total_and_capacity_23,tn_under_3_total_and_capacity_23, tn_under_5_total_and_capacity_23,tn_under_15_total_and_capacity_23, `Under 5 Population`, `Under 15 Population`)

names(tn_for_df_23)

names(region_for_df_23)

names(county_df_join_3_23)

childcare_for_table_23 <- rbind(tn_for_df_23, region_for_df_23, county_df_final_join_23)

table_function(childcare_for_table_23 %>%
                 mutate(`Under 5 Ratio` = round(`Under 5 Population` / `Under 5 Capacity`,2))%>%
                 mutate(`Under 15 Ratio` = round(`Under 15 Population` / `Under 15 Capacity`,2)), `Licensed Childcare Providers as of February 2023`)


#### compare the two ####

names(childcare_for_table_24) <- c("County", "Total Centers 24", "Capacity 24", "Total Under 3 Centers 24",
                                   "Under 3 Capacity 24", "Total Under 5 Centers 24", "Under 5 Capacity 24",
                                   "Total Under 15 Centers 24", "Under 15 Capacity 24", "Under 5 Population", "Under 15 Population")

names(childcare_for_table_23) <-  c("County", "Total Centers 23", "Capacity 23", "Total Under 3 Centers 23",
                                    "Under 3 Capacity 23", "Total Under 5 Centers 23", "Under 5 Capacity 23",
                                    "Total Under 15 Centers 23", "Under 15 Capacity 23", "Under 5 Population", "Under 15 Population")

joined_childcare_table <- left_join(childcare_for_table_24, childcare_for_table_23,by = c("County", "Under 5 Population", "Under 15 Population"))

names(joined_childcare_table)

childcare_differences_23_24 <- joined_childcare_table %>%
  mutate(`Total Center Difference` = `Total Centers 24` - `Total Centers 23`,
         `Total Center % Difference` = round(100*(`Total Center Difference` / `Total Centers 23`),2),
         `Capacity Difference` = `Capacity 24` - `Capacity 23`,
         `Capacity % Difference` = round(100*(`Capacity Difference` / `Capacity 23`),2),
         `Under 3 Centers Difference` = `Total Under 3 Centers 24` - `Total Under 3 Centers 23`,
         `Under 3 Centers % Difference` = round(100*(`Under 3 Centers Difference` / `Total Under 3 Centers 23`),2),
         `Under 3 Capacity Difference` = `Under 3 Capacity 24` - `Under 3 Capacity 23`,
         `Under 3 Capacity % Difference` = round(100*(`Under 3 Capacity Difference` / `Under 3 Capacity 23`),2),
         `Under 5 Centers Difference` = `Total Under 5 Centers 24` - `Total Under 5 Centers 23`,
         `Under 5 Centers % Difference` = round(100*(`Under 5 Centers Difference` / `Total Under 5 Centers 23`),2),
         `Under 5 Capacity Difference` = `Under 5 Capacity 24` - `Under 5 Capacity 23`,
         `Under 5 Capacity % Difference` = round(100*(`Under 5 Capacity Difference` / `Under 5 Capacity 23`),2),
         `Under 15 Centers Difference` = `Total Under 15 Centers 24` - `Total Under 15 Centers 23`,
         `Under 15 Centers % Difference` = round(100*(`Under 15 Centers Difference` / `Total Under 15 Centers 23`),2),
         `Under 15 Capacity Difference` = `Under 15 Capacity 24` - `Under 15 Capacity 23`,
         `Under 15 Capacity % Difference` = round(100*(`Under 15 Capacity Difference` / `Under 15 Capacity 23`),2),
         `Under 5 Ratio Difference` = round(`Under 5 Population` / `Under 5 Capacity 24` - `Under 5 Population` / `Under 5 Capacity 23`,2),
         `Under 15 Ratio Difference` = round(`Under 15 Population` / `Under 15 Capacity 24` - `Under 15 Population` / `Under 15 Capacity 23`),2)

table_function(childcare_differences_23_24 %>%
  pivot_longer(-County, names_to = "Measure", values_to = "Value")%>%
  filter(str_detect(Measure, "Difference"))%>%
  pivot_wider(names_from = "Measure", values_from = "Value"), `Change in Childcare Centers from 2024 to 2023`)
         

#### head starts ####

names(childcare_listing)

childcare_listing %>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`, `Date Open`)%>%
  mutate(Count = 1)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Date Open` >= as_date("2020-01-01"))%>%
  summarise(sum(Count), sum(Capacity, na.rm = TRUE))

childcare_listing %>%
  filter(County %in% counties)%>%
  select(County,  `Agency Name`, City, Zip, `Minimum Age Served`, `Maximum Age Served`, 
         `Capacity`, `Open Time`, `Close Time`, `Date Open`)%>%
  mutate(Count = 1)%>%
  mutate(`Open Time` = format(`Open Time`, "%H:%M:%S"))%>%
  mutate(`Close Time` = format(`Close Time`, "%H:%M:%S"))%>%
  mutate(`Agency Name` = toupper(`Agency Name`))%>%
  filter(`Date Open` >= as_date("2020-01-01"))%>%
  summarise(sum(Count), sum(Capacity, na.rm = TRUE))

#### school district profile ####

table_function(X2017_20222_district_profile %>%
                 filter(`School Year` == "2022-22"), `2022-2022 School District Profile`)

#### act scores ####

act_2117 <- data_ACT_Data_by_District_2021_17

act_2222 <- X2022_22_ACT_district_suppressed

names(act_2117) == names(act_2222)

act_2117

act_2222

long_act_2222 <- act_2222 %>%
  select(!c(`District`))%>%
  pivot_longer(-c(Year, `District Name`, Subgroup), names_to = "Measure", values_to = "22-22 Value")%>%
  select(!Year)

long_act_2117 <- act_2117 %>%
  select(!c(`District`))%>%
  pivot_longer(-c(Year, `District Name`, Subgroup), names_to = "Measure", values_to = "21-17 Value")%>%
  select(!Year)


joined_act <- left_join(long_act_2222, long_act_2117, by = c("District Name", "Subgroup", "Measure"))

table_function(joined_act %>%
                 mutate(Difference = `22-22 Value` - `21-17 Value`)%>%
                 select(!`21-17 Value`)%>%
                 rename("22-22" = "22-22 Value")%>%
                 filter(Subgroup == "All Students")%>%  
                 pivot_wider(names_from = c(Subgroup, Measure), values_from = c("22-22", "Difference"), names_sep = " "), `2022-2022 ACT Scores and Difference from 2021-2017`)

#### graduation ####

names(graduation) <- c("Year", "System", "System Name", "Group", "Cohort", "Count", "Graduation Rate")

table_function(graduation %>%
                 filter(Year == 2022)%>%
                 select(!c(System, Year, Count, Cohort))%>%
                 pivot_wider( names_from = Group, values_from = c("Graduation Rate"), names_sep = " "), `2022 Graduation Rates`)

grad_22_rate <- graduation %>%
  filter(Year == 2022)%>%
  select(!c(System, Year, Count, Cohort))%>%
  pivot_wider( names_from = Group, values_from = c("Graduation Rate"), names_sep = " ")

grad_17_rate <- graduation %>%
  filter(Year == 2017)%>%
  select(!c(System, Year, Count, Cohort))%>%
  pivot_wider( names_from = Group, values_from = c("Graduation Rate"), names_sep = " ")

grad_22 <- graduation %>%
  filter(Year == 2022)%>%
  select(!c(Year, System))%>%
  rename("2022 Cohort" = "Cohort",
         "2022 Count" = "Count",
         "2022 Graduation Rate" = "Graduation Rate")

grad_17 <- graduation %>%
  filter(Year == 2017) %>%
  select(!c(Year, System))%>%
  rename("2017 Cohort" = "Cohort",
         "2017 Count" = "Count",
         "2017 Graduation Rate" = "Graduation Rate")

joined_grad <- left_join(grad_22, grad_17, by = c("System Name", "Group"))

table_function(joined_grad %>%
                 mutate("Cohort Difference" = `2022 Cohort` - `2017 Cohort`)%>%
                 mutate("Graduation Count Difference" = `2022 Count` - `2017 Count`)%>%
                 mutate("Graduation Rate Difference" = `2022 Graduation Rate` - `2017 Graduation Rate`)%>%
                 select(`System Name`, Group, "Graduation Rate Difference")%>%
                 filter(!is.na(`Graduation Rate Difference`))%>%
                 pivot_wider(names_from = Group, values_from = c(`Graduation Rate Difference`), names_sep = " "), `2022-2017 Graduation Rate Difference`)

##### child care cost #####

table_function(childcare_costs_sheet %>%
                 filter(Year == 2023)%>%
                 select(Location, Type, `Weekly Cost`, `52 Weeks`)%>%
                 pivot_wider(names_from = Type, values_from = c(`Weekly Cost`, `52 Weeks`), names_sep = " "),`2023 Tennessee Market Rate Survey Childcare Costs for 1 Child`)

childcare_mrs_2023 <- childcare_costs_sheet %>%
  filter(Year == 2023)%>%
  select(Location, Type, `Weekly Cost`, `52 Weeks`)%>%
  rename("2023 Weekly Cost" = "Weekly Cost", "2023 52 Weeks" = "52 Weeks")

childcare_mrs_2018 <- childcare_costs_sheet %>%
  filter(Year == 2018)%>%
  select(Location, Type, `Weekly Cost`, `52 Weeks`)%>%
  rename("2018 Weekly Cost" = "Weekly Cost", "2018 52 Weeks" = "52 Weeks")

joined_mrs_childcare <- left_join(childcare_mrs_2023, childcare_mrs_2018, by = c("Location", "Type"))

joined_mrs_childcare %>%
  mutate(`Weekly Change` = `2023 Weekly Cost` - `2018 Weekly Cost`)%>%
  mutate(`52 Week Change` = `2023 52 Weeks` - `2018 52 Weeks`)%>%
  mutate(`Weekly % Change` = round(100*(`2023 Weekly Cost` - `2018 Weekly Cost`) / `2018 Weekly Cost`,2))%>%
  mutate(`52 Week % Change` = round(100*(`2023 52 Weeks` - `2018 52 Weeks`) / `2018 52 Weeks`,2))%>%
  mutate(Location = factor(Location, levels = c("Tennessee", "Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Unicoi", "Washington")))%>%
  ggplot(aes( y = Type, x = `52 Week % Change`, fill = Location))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~Location, scales = "free_x")+
  geom_label(aes(group = Type,label = `52 Week % Change`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Percent Change in MSR Childcare Costs from 2023 to 2018")

childcare_costs_sheet %>%
  ggplot(aes(y = `Weekly Cost`, x = Year,  color = Type))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = `Weekly Cost`), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  xlim(2018,2024)+
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
  ggtitle("Weekly Childcare Costs from 2018 to 2023")

childcare_costs_sheet


childcare_costs_sheet %>%
  ggplot(aes(y = `52 Weeks`, x = Year,  color = Type))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = `52 Weeks`), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  xlim(2018,2024)+
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
  ggtitle("52 Week Childcare Costs from 2018 to 2023")


### adjust for inflation 


childcare_costs_sheet %>%
  select(Location, Type, Source, Year, `Weekly Cost`)%>%
  pivot_wider(names_from = Year, values_from = c(`Weekly Cost`), names_sep = " ")%>%
  mutate("2018" = round(1.2276 * `2018`,2), 
         "2021" = round(1.1382 * `2021`,2),
         "2022" = round(1.0539 * `2022`,2),
         "2023" = round(1.0309 * `2023`,2))%>%
  pivot_longer(-c(Location, Type, Source), names_to = c("Year"), values_to = c("Inf Adj Weekly Cost"))%>%
  mutate(`52 Weeks` = 52*`Inf Adj Weekly Cost`)%>%
  ggplot(aes(y = `Inf Adj Weekly Cost`, x = Year,  color = Type, group = Type))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = `Inf Adj Weekly Cost`), method = list(dl.combine("last.points")), cex = 0.8)+
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
  ggtitle("Inflation Adjusted Weekly Childcare Costs from 2018 to 2023")

childcare_costs_sheet %>%
  select(Location, Type, Source, Year, `Weekly Cost`)%>%
  pivot_wider(names_from = Year, values_from = c(`Weekly Cost`), names_sep = " ")%>%
  mutate("2018" = round(1.2276 * `2018`,2), 
         "2021" = round(1.1382 * `2021`,2),
         "2022" = round(1.0539 * `2022`,2),
         "2023" = round(1.0309 * `2023`,2))%>%
  pivot_longer(-c(Location, Type, Source), names_to = c("Year"), values_to = c("Inf Adj Weekly Cost"))%>%
  mutate(`52 Weeks` = round(52*`Inf Adj Weekly Cost`,2))%>%
  ggplot(aes(y = `52 Weeks`, x = Year,  color = Type, group = Type))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = `52 Weeks`), method = list(dl.combine("last.points")), cex = 0.8)+
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
  ggtitle("Inflation Adjusted 52 Week Childcare Costs from 2018 to 2023")


#### 2018 big survey from DOLWB ####

childcare_county_2018_price %>%
  select(!`County FIPS Code`)%>%
  filter(str_detect(`Measure Names`, "Childcare price"))%>%
  mutate(`Measure Values` = round(100 * `Measure Values`,2))%>%
  ggplot(aes( y = `Measure Names`, x = `Measure Values`, fill = `County Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`County Name`, scales = "free_x")+
  geom_label(aes(group = `Measure Names`,label = `Measure Values`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  ggtitle("Childcare Cost as Percent of Family Income in 2018")

for_factors_cc <- childcare_county_2018_price %>%
  filter(str_detect(`Measure Names`, "Median yearly"))%>%
  filter(str_detect(`Measure Names`, "2022"))%>%
  select(`Measure Names`)%>%
  unique()

cc_price_factors <- for_factors_cc$`Measure Names`

childcare_county_2018_price %>%
  select(!`County FIPS Code`)%>%
  filter(str_detect(`Measure Names`, "Median yearly"))%>%
  filter(str_detect(`Measure Names`, "2022"))%>%
  mutate(`Measure Names` = factor(`Measure Names`, levels = cc_price_factors))%>%
  mutate(`Measure Values` = round(`Measure Values`,2))%>%
  ggplot(aes( y = fct_rev(`Measure Names`), x = `Measure Values`, fill = `County Name`))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  facet_wrap(~`County Name`, scales = "free_x")+
  geom_label(aes(group = `Measure Names`,label = `Measure Values`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3)+
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
  theme(legend.position = "none")+ 
  ggtitle("Median Childcare Costs in 2018 (in 2022 Inf Adj Dollars)")  

#### 2023 childcare cost burden ####

childcare_state_rankings %>%
  filter(str_detect(Type, "Childcare Cost"))%>%
  select(!c(Year, Source))%>%
  mutate(Value = 100*Value)%>%
  mutate(Location = factor(Location, levels = c("Tennessee", "Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Unicoi", "Washington")))%>%
  ggplot(aes( x = Location, y = Value, fill = Location))+
  geom_bar(stat = "identity", position = position_dodge(width = 1))+
  geom_label(aes(group = Type,label = `State Ranking`), position = position_dodge(width = 1),color = "black", angle = 90, show.legend = FALSE, size = 3, hjust = -1)+
  geom_label(aes(group = Type,label = Value), position = position_dodge(width = 1),color = "white", angle = 90, show.legend = FALSE, size = 3)+
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
  theme(legend.position = "none")+ 
  ggtitle("Childcare Burden as Percent of Median HH Income for 2 Children", subtitle = "State County Ranking in Black")
