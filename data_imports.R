#### data imports ####

#### 2022 ####

dp_table_variables_22 <- load_variables(2022, "acs5/profile", cache = TRUE)

new_names_22 <- c("variable", "label", "concept")

names(dp_table_variables_22) <- new_names_22

View(dp_table_variables_22)

#### data profiles####

##carter##

Carter_dp02_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Carter_dp03_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Carter_dp04_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Carter_dp05_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##greene##


Greene_dp02_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Greene_dp03_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Greene_dp04_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Greene_dp05_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##hancock

Hancock_dp02_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Hancock_dp03_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Hancock_dp04_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Hancock_dp05_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##hawkins

Hawkins_dp02_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Hawkins_dp03_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Hawkins_dp04_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Hawkins_dp05_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2022, geometry = TRUE)


##johnson

Johnson_dp02_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Johnson_dp03_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Johnson_dp04_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Johnson_dp05_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##sullivan

Sullivan_dp02_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Sullivan_dp03_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Sullivan_dp04_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Sullivan_dp05_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##washington


Washington_dp02_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Washington_dp03_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Washington_dp04_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Washington_dp05_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##unicoi

Unicoi_dp02_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Unicoi_dp03_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Unicoi_dp04_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Unicoi_dp05_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2022, geometry = TRUE)


###2022##

##carter

Carter_dp02_22 <- inner_join(Carter_dp02_2022, dp_table_variables_22, by = "variable")

Carter_dp03_22 <- inner_join(Carter_dp03_2022, dp_table_variables_22, by = "variable")

Carter_dp04_22 <- inner_join(Carter_dp04_2022, dp_table_variables_22, by = "variable")

Carter_dp05_22 <- inner_join(Carter_dp05_2022, dp_table_variables_22, by = "variable")

##greene

Greene_dp02_22 <- inner_join(Greene_dp02_2022, dp_table_variables_22, by = "variable")

Greene_dp03_22 <- inner_join(Greene_dp03_2022, dp_table_variables_22, by = "variable")

Greene_dp04_22 <- inner_join(Greene_dp04_2022, dp_table_variables_22, by = "variable")

Greene_dp05_22 <- inner_join(Greene_dp05_2022, dp_table_variables_22, by = "variable")

##hancock

Hancock_dp02_22 <- inner_join(Hancock_dp02_2022, dp_table_variables_22, by = "variable")

Hancock_dp03_22 <- inner_join(Hancock_dp03_2022, dp_table_variables_22, by = "variable")

Hancock_dp04_22 <- inner_join(Hancock_dp04_2022, dp_table_variables_22, by = "variable")

Hancock_dp05_22 <- inner_join(Hancock_dp05_2022, dp_table_variables_22, by = "variable")

##hawkins  

Hawkins_dp02_22 <- inner_join(Hawkins_dp02_2022, dp_table_variables_22, by = "variable")

Hawkins_dp03_22 <- inner_join(Hawkins_dp03_2022, dp_table_variables_22, by = "variable")

Hawkins_dp04_22 <- inner_join(Hawkins_dp04_2022, dp_table_variables_22, by = "variable")

Hawkins_dp05_22 <- inner_join(Hawkins_dp05_2022, dp_table_variables_22, by = "variable")

##johnson

Johnson_dp02_22 <- inner_join(Johnson_dp02_2022, dp_table_variables_22, by = "variable")

Johnson_dp03_22 <- inner_join(Johnson_dp03_2022, dp_table_variables_22, by = "variable")

Johnson_dp04_22 <- inner_join(Johnson_dp04_2022, dp_table_variables_22, by = "variable")

Johnson_dp05_22 <- inner_join(Johnson_dp05_2022, dp_table_variables_22, by = "variable")

##sullivan

Sullivan_dp02_22 <- inner_join(Sullivan_dp02_2022, dp_table_variables_22, by = "variable")

Sullivan_dp03_22 <- inner_join(Sullivan_dp03_2022, dp_table_variables_22, by = "variable")

Sullivan_dp04_22 <- inner_join(Sullivan_dp04_2022, dp_table_variables_22, by = "variable")

Sullivan_dp05_22 <- inner_join(Sullivan_dp05_2022, dp_table_variables_22, by = "variable")

##washington

Washington_dp02_22 <- inner_join(Washington_dp02_2022, dp_table_variables_22, by = "variable")

Washington_dp03_22 <- inner_join(Washington_dp03_2022, dp_table_variables_22, by = "variable")

Washington_dp04_22 <- inner_join(Washington_dp04_2022, dp_table_variables_22, by = "variable")

Washington_dp05_22 <- inner_join(Washington_dp05_2022, dp_table_variables_22, by = "variable")

##unicoi

Unicoi_dp02_22 <- inner_join(Unicoi_dp02_2022, dp_table_variables_22, by = "variable")

Unicoi_dp03_22 <- inner_join(Unicoi_dp03_2022, dp_table_variables_22, by = "variable")

Unicoi_dp04_22 <- inner_join(Unicoi_dp04_2022, dp_table_variables_22, by = "variable")

Unicoi_dp05_22 <- inner_join(Unicoi_dp05_2022, dp_table_variables_22, by = "variable")


##2022##

dp02_22 <- rbind(Carter_dp02_22, Greene_dp02_22, Hancock_dp02_22, Hawkins_dp02_22, Johnson_dp02_22, Sullivan_dp02_22, Washington_dp02_22, Unicoi_dp02_22)

dp03_22 <- rbind(Carter_dp03_22, Greene_dp03_22, Hancock_dp03_22, Hawkins_dp03_22, Johnson_dp03_22, Sullivan_dp03_22, Washington_dp03_22, Unicoi_dp03_22)

dp04_22 <- rbind(Carter_dp04_22, Greene_dp04_22, Hancock_dp04_22, Hawkins_dp04_22, Johnson_dp04_22, Sullivan_dp04_22, Washington_dp04_22, Unicoi_dp04_22)

dp05_22 <- rbind(Carter_dp05_22, Greene_dp05_22, Hancock_dp05_22, Hawkins_dp05_22, Johnson_dp05_22, Sullivan_dp05_22, Washington_dp05_22, Unicoi_dp05_22)




#2022#

dp_2022 <- rbind(dp02_22, dp03_22, dp04_22, dp05_22)


#Carter

#2022

Carter_County_dp02_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Carter_County_dp03_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Carter_County_dp04_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Carter_County_dp05_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Greene

#2022

Greene_County_dp02_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Greene_County_dp03_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Greene_County_dp04_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Greene_County_dp05_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Hancock

#2022

Hancock_County_dp02_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Hancock_County_dp03_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Hancock_County_dp04_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Hancock_County_dp05_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Hawkins

#2022

Hawkins_County_dp02_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Hawkins_County_dp03_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Hawkins_County_dp04_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Hawkins_County_dp05_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Johnson

#2022

Johnson_County_dp02_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Johnson_County_dp03_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Johnson_County_dp04_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Johnson_County_dp05_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Sullivan

#2022

Sullivan_County_dp02_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Sullivan_County_dp03_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Sullivan_County_dp04_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Sullivan_County_dp05_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Washington

#2022

Washington_County_dp02_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Washington_County_dp03_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Washington_County_dp04_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Washington_County_dp05_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

#Unicoi

#2022

Unicoi_County_dp02_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Unicoi_County_dp03_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Unicoi_County_dp04_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Unicoi_County_dp05_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

##tennessee

Tennessee_dp02_2022 <- get_acs(geography = "state", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

Tennessee_dp03_2022 <- get_acs(geography = "state", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

Tennessee_dp04_2022 <- get_acs(geography = "state", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

Tennessee_dp05_2022 <- get_acs(geography = "state", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

#US

US_dp02_2022 <- get_acs(geography = "us", table = "DP02", year = 2022)

US_dp03_2022 <- get_acs(geography = "us", table = "DP03", year = 2022)

US_dp04_2022 <- get_acs(geography = "us", table = "DP04", year = 2022)

US_dp05_2022 <- get_acs(geography = "us", table = "DP05", year = 2022)


####2022##

##carter

Carter_County_dp02_22 <- inner_join(Carter_County_dp02_2022, dp_table_variables_22, by = "variable")

Carter_County_dp03_22 <- inner_join(Carter_County_dp03_2022, dp_table_variables_22, by = "variable")

Carter_County_dp04_22 <- inner_join(Carter_County_dp04_2022, dp_table_variables_22, by = "variable")

Carter_County_dp05_22 <- inner_join(Carter_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Greene

Greene_County_dp02_22 <- inner_join(Greene_County_dp02_2022, dp_table_variables_22, by = "variable")

Greene_County_dp03_22 <- inner_join(Greene_County_dp03_2022, dp_table_variables_22, by = "variable")

Greene_County_dp04_22 <- inner_join(Greene_County_dp04_2022, dp_table_variables_22, by = "variable")

Greene_County_dp05_22 <- inner_join(Greene_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Hancock

Hancock_County_dp02_22 <- inner_join(Hancock_County_dp02_2022, dp_table_variables_22, by = "variable")

Hancock_County_dp03_22 <- inner_join(Hancock_County_dp03_2022, dp_table_variables_22, by = "variable")

Hancock_County_dp04_22 <- inner_join(Hancock_County_dp04_2022, dp_table_variables_22, by = "variable")

Hancock_County_dp05_22 <- inner_join(Hancock_County_dp05_2022, dp_table_variables_22, by = "variable")  

####2022

##Hawkins

Hawkins_County_dp02_22 <- inner_join(Hawkins_County_dp02_2022, dp_table_variables_22, by = "variable")

Hawkins_County_dp03_22 <- inner_join(Hawkins_County_dp03_2022, dp_table_variables_22, by = "variable")

Hawkins_County_dp04_22 <- inner_join(Hawkins_County_dp04_2022, dp_table_variables_22, by = "variable")

Hawkins_County_dp05_22 <- inner_join(Hawkins_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Johnson

Johnson_County_dp02_22 <- inner_join(Johnson_County_dp02_2022, dp_table_variables_22, by = "variable")

Johnson_County_dp03_22 <- inner_join(Johnson_County_dp03_2022, dp_table_variables_22, by = "variable")

Johnson_County_dp04_22 <- inner_join(Johnson_County_dp04_2022, dp_table_variables_22, by = "variable")

Johnson_County_dp05_22 <- inner_join(Johnson_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Sullivan

Sullivan_County_dp02_22 <- inner_join(Sullivan_County_dp02_2022, dp_table_variables_22, by = "variable")

Sullivan_County_dp03_22 <- inner_join(Sullivan_County_dp03_2022, dp_table_variables_22, by = "variable")

Sullivan_County_dp04_22 <- inner_join(Sullivan_County_dp04_2022, dp_table_variables_22, by = "variable")

Sullivan_County_dp05_22 <- inner_join(Sullivan_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Washington

Washington_County_dp02_22 <- inner_join(Washington_County_dp02_2022, dp_table_variables_22, by = "variable")

Washington_County_dp03_22 <- inner_join(Washington_County_dp03_2022, dp_table_variables_22, by = "variable")

Washington_County_dp04_22 <- inner_join(Washington_County_dp04_2022, dp_table_variables_22, by = "variable")

Washington_County_dp05_22 <- inner_join(Washington_County_dp05_2022, dp_table_variables_22, by = "variable")

####2022##

##Unicoi

Unicoi_County_dp02_22 <- inner_join(Unicoi_County_dp02_2022, dp_table_variables_22, by = "variable")

Unicoi_County_dp03_22 <- inner_join(Unicoi_County_dp03_2022, dp_table_variables_22, by = "variable")

Unicoi_County_dp04_22 <- inner_join(Unicoi_County_dp04_2022, dp_table_variables_22, by = "variable")

Unicoi_County_dp05_22 <- inner_join(Unicoi_County_dp05_2022, dp_table_variables_22, by = "variable")

#tennessee 

Tennessee_dp02_22 <- inner_join(Tennessee_dp02_2022, dp_table_variables_22, by = "variable")

Tennessee_dp03_22 <- inner_join(Tennessee_dp03_2022, dp_table_variables_22, by = "variable")

Tennessee_dp04_22 <- inner_join(Tennessee_dp04_2022, dp_table_variables_22, by = "variable")

Tennessee_dp05_22 <- inner_join(Tennessee_dp05_2022, dp_table_variables_22, by = "variable")

#united states

US_dp02_22 <- inner_join(US_dp02_2022, dp_table_variables_22, by = "variable")

US_dp03_22 <- inner_join(US_dp03_2022, dp_table_variables_22, by = "variable")

US_dp04_22 <- inner_join(US_dp04_2022, dp_table_variables_22, by = "variable")

US_dp05_22 <- inner_join(US_dp05_2022, dp_table_variables_22, by = "variable")

US_dp_2022 <- rbind(US_dp02_22, US_dp03_22, US_dp04_22, US_dp05_22)



#2022

County_dp02_22<- rbind(Carter_County_dp02_22, Greene_County_dp02_22, Hancock_County_dp02_22, Hawkins_County_dp02_22, Johnson_County_dp02_22, Sullivan_County_dp02_22, Washington_County_dp02_22, Unicoi_County_dp02_22)

County_dp03_22 <- rbind(Carter_County_dp03_22, Greene_County_dp03_22, Hancock_County_dp03_22, Hawkins_County_dp03_22, Johnson_County_dp03_22, Sullivan_County_dp03_22, Washington_County_dp03_22, Unicoi_County_dp03_22)

County_dp04_22 <- rbind(Carter_County_dp04_22, Greene_County_dp04_22, Hancock_County_dp04_22, Hawkins_County_dp04_22, Johnson_County_dp04_22, Sullivan_County_dp04_22, Washington_County_dp04_22, Unicoi_County_dp04_22)

County_dp05_22 <- rbind(Carter_County_dp05_22, Greene_County_dp05_22, Hancock_County_dp05_22, Hawkins_County_dp05_22, Johnson_County_dp05_22, Sullivan_County_dp05_22, Washington_County_dp05_22, Unicoi_County_dp05_22)

County_dp_2022 <- rbind(County_dp02_22, County_dp03_22, County_dp04_22, County_dp05_22) 


###combine everything

Combined_dp02_22 <- rbind(Tennessee_dp02_22, Carter_County_dp02_22, Greene_County_dp02_22, Hancock_County_dp02_22, Hawkins_County_dp02_22, Johnson_County_dp02_22, Sullivan_County_dp02_22, Washington_County_dp02_22, Unicoi_County_dp02_22)

Combined_dp03_22 <- rbind(Tennessee_dp03_22, Carter_County_dp03_22, Greene_County_dp03_22, Hancock_County_dp03_22, Hawkins_County_dp03_22, Johnson_County_dp03_22, Sullivan_County_dp03_22, Washington_County_dp03_22, Unicoi_County_dp03_22)

Combined_dp04_22 <- rbind(Tennessee_dp04_22, Carter_County_dp04_22, Greene_County_dp04_22, Hancock_County_dp04_22, Hawkins_County_dp04_22, Johnson_County_dp04_22, Sullivan_County_dp04_22, Washington_County_dp04_22, Unicoi_County_dp04_22)

Combined_dp05_22 <- rbind(Tennessee_dp05_22, Carter_County_dp05_22, Greene_County_dp05_22, Hancock_County_dp05_22, Hawkins_County_dp05_22, Johnson_County_dp05_22, Sullivan_County_dp05_22, Washington_County_dp05_22, Unicoi_County_dp05_22)

Combined_dp_2022 <- rbind(Combined_dp02_22, Combined_dp03_22, Combined_dp04_22, Combined_dp05_22)

####this one has Tennessee and county data

##need to remove geometry to add us data

Combined_dp_2022_no_geom <- st_set_geometry(Combined_dp_2022, NULL)


Full_dp_2022 <- rbind(US_dp_2022, Combined_dp_2022_no_geom)

Full_dp_2022

dp_2022


#### data imports ####

#### 2021 ####

dp_table_variables_21 <- load_variables(2021, "acs5/profile", cache = TRUE)

new_names_21 <- c("variable", "label", "concept")

names(dp_table_variables_21) <- new_names_21

View(dp_table_variables_21)

#### data profiles####

##carter##

Carter_dp02_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Carter_dp03_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Carter_dp04_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Carter_dp05_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##greene##


Greene_dp02_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Greene_dp03_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Greene_dp04_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Greene_dp05_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##hancock

Hancock_dp02_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Hancock_dp03_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Hancock_dp04_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Hancock_dp05_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##hawkins

Hawkins_dp02_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Hawkins_dp03_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Hawkins_dp04_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Hawkins_dp05_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2021, geometry = TRUE)


##johnson

Johnson_dp02_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Johnson_dp03_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Johnson_dp04_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Johnson_dp05_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##sullivan

Sullivan_dp02_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Sullivan_dp03_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Sullivan_dp04_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Sullivan_dp05_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##washington


Washington_dp02_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Washington_dp03_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Washington_dp04_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Washington_dp05_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##unicoi

Unicoi_dp02_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Unicoi_dp03_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Unicoi_dp04_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Unicoi_dp05_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2021, geometry = TRUE)


###2021##

##carter

Carter_dp02_21 <- inner_join(Carter_dp02_2021, dp_table_variables_21, by = "variable")

Carter_dp03_21 <- inner_join(Carter_dp03_2021, dp_table_variables_21, by = "variable")

Carter_dp04_21 <- inner_join(Carter_dp04_2021, dp_table_variables_21, by = "variable")

Carter_dp05_21 <- inner_join(Carter_dp05_2021, dp_table_variables_21, by = "variable")

##greene

Greene_dp02_21 <- inner_join(Greene_dp02_2021, dp_table_variables_21, by = "variable")

Greene_dp03_21 <- inner_join(Greene_dp03_2021, dp_table_variables_21, by = "variable")

Greene_dp04_21 <- inner_join(Greene_dp04_2021, dp_table_variables_21, by = "variable")

Greene_dp05_21 <- inner_join(Greene_dp05_2021, dp_table_variables_21, by = "variable")

##hancock

Hancock_dp02_21 <- inner_join(Hancock_dp02_2021, dp_table_variables_21, by = "variable")

Hancock_dp03_21 <- inner_join(Hancock_dp03_2021, dp_table_variables_21, by = "variable")

Hancock_dp04_21 <- inner_join(Hancock_dp04_2021, dp_table_variables_21, by = "variable")

Hancock_dp05_21 <- inner_join(Hancock_dp05_2021, dp_table_variables_21, by = "variable")

##hawkins  

Hawkins_dp02_21 <- inner_join(Hawkins_dp02_2021, dp_table_variables_21, by = "variable")

Hawkins_dp03_21 <- inner_join(Hawkins_dp03_2021, dp_table_variables_21, by = "variable")

Hawkins_dp04_21 <- inner_join(Hawkins_dp04_2021, dp_table_variables_21, by = "variable")

Hawkins_dp05_21 <- inner_join(Hawkins_dp05_2021, dp_table_variables_21, by = "variable")

##johnson

Johnson_dp02_21 <- inner_join(Johnson_dp02_2021, dp_table_variables_21, by = "variable")

Johnson_dp03_21 <- inner_join(Johnson_dp03_2021, dp_table_variables_21, by = "variable")

Johnson_dp04_21 <- inner_join(Johnson_dp04_2021, dp_table_variables_21, by = "variable")

Johnson_dp05_21 <- inner_join(Johnson_dp05_2021, dp_table_variables_21, by = "variable")

##sullivan

Sullivan_dp02_21 <- inner_join(Sullivan_dp02_2021, dp_table_variables_21, by = "variable")

Sullivan_dp03_21 <- inner_join(Sullivan_dp03_2021, dp_table_variables_21, by = "variable")

Sullivan_dp04_21 <- inner_join(Sullivan_dp04_2021, dp_table_variables_21, by = "variable")

Sullivan_dp05_21 <- inner_join(Sullivan_dp05_2021, dp_table_variables_21, by = "variable")

##washington

Washington_dp02_21 <- inner_join(Washington_dp02_2021, dp_table_variables_21, by = "variable")

Washington_dp03_21 <- inner_join(Washington_dp03_2021, dp_table_variables_21, by = "variable")

Washington_dp04_21 <- inner_join(Washington_dp04_2021, dp_table_variables_21, by = "variable")

Washington_dp05_21 <- inner_join(Washington_dp05_2021, dp_table_variables_21, by = "variable")

##unicoi

Unicoi_dp02_21 <- inner_join(Unicoi_dp02_2021, dp_table_variables_21, by = "variable")

Unicoi_dp03_21 <- inner_join(Unicoi_dp03_2021, dp_table_variables_21, by = "variable")

Unicoi_dp04_21 <- inner_join(Unicoi_dp04_2021, dp_table_variables_21, by = "variable")

Unicoi_dp05_21 <- inner_join(Unicoi_dp05_2021, dp_table_variables_21, by = "variable")


##2021##

dp02_21 <- rbind(Carter_dp02_21, Greene_dp02_21, Hancock_dp02_21, Hawkins_dp02_21, Johnson_dp02_21, Sullivan_dp02_21, Washington_dp02_21, Unicoi_dp02_21)

dp03_21 <- rbind(Carter_dp03_21, Greene_dp03_21, Hancock_dp03_21, Hawkins_dp03_21, Johnson_dp03_21, Sullivan_dp03_21, Washington_dp03_21, Unicoi_dp03_21)

dp04_21 <- rbind(Carter_dp04_21, Greene_dp04_21, Hancock_dp04_21, Hawkins_dp04_21, Johnson_dp04_21, Sullivan_dp04_21, Washington_dp04_21, Unicoi_dp04_21)

dp05_21 <- rbind(Carter_dp05_21, Greene_dp05_21, Hancock_dp05_21, Hawkins_dp05_21, Johnson_dp05_21, Sullivan_dp05_21, Washington_dp05_21, Unicoi_dp05_21)




#2021#

dp_2021 <- rbind(dp02_21, dp03_21, dp04_21, dp05_21)


#Carter

#2021

Carter_County_dp02_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Carter_County_dp03_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Carter_County_dp04_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Carter_County_dp05_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Greene

#2021

Greene_County_dp02_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Greene_County_dp03_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Greene_County_dp04_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Greene_County_dp05_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Hancock

#2021

Hancock_County_dp02_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Hancock_County_dp03_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Hancock_County_dp04_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Hancock_County_dp05_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Hawkins

#2021

Hawkins_County_dp02_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Hawkins_County_dp03_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Hawkins_County_dp04_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Hawkins_County_dp05_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Johnson

#2021

Johnson_County_dp02_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Johnson_County_dp03_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Johnson_County_dp04_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Johnson_County_dp05_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Sullivan

#2021

Sullivan_County_dp02_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Sullivan_County_dp03_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Sullivan_County_dp04_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Sullivan_County_dp05_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Washington

#2021

Washington_County_dp02_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Washington_County_dp03_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Washington_County_dp04_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Washington_County_dp05_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

#Unicoi

#2021

Unicoi_County_dp02_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Unicoi_County_dp03_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Unicoi_County_dp04_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Unicoi_County_dp05_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

##tennessee

Tennessee_dp02_2021 <- get_acs(geography = "state", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

Tennessee_dp03_2021 <- get_acs(geography = "state", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

Tennessee_dp04_2021 <- get_acs(geography = "state", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

Tennessee_dp05_2021 <- get_acs(geography = "state", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

#US

US_dp02_2021 <- get_acs(geography = "us", table = "DP02", year = 2021)

US_dp03_2021 <- get_acs(geography = "us", table = "DP03", year = 2021)

US_dp04_2021 <- get_acs(geography = "us", table = "DP04", year = 2021)

US_dp05_2021 <- get_acs(geography = "us", table = "DP05", year = 2021)


####2021##

##carter

Carter_County_dp02_21 <- inner_join(Carter_County_dp02_2021, dp_table_variables_21, by = "variable")

Carter_County_dp03_21 <- inner_join(Carter_County_dp03_2021, dp_table_variables_21, by = "variable")

Carter_County_dp04_21 <- inner_join(Carter_County_dp04_2021, dp_table_variables_21, by = "variable")

Carter_County_dp05_21 <- inner_join(Carter_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Greene

Greene_County_dp02_21 <- inner_join(Greene_County_dp02_2021, dp_table_variables_21, by = "variable")

Greene_County_dp03_21 <- inner_join(Greene_County_dp03_2021, dp_table_variables_21, by = "variable")

Greene_County_dp04_21 <- inner_join(Greene_County_dp04_2021, dp_table_variables_21, by = "variable")

Greene_County_dp05_21 <- inner_join(Greene_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Hancock

Hancock_County_dp02_21 <- inner_join(Hancock_County_dp02_2021, dp_table_variables_21, by = "variable")

Hancock_County_dp03_21 <- inner_join(Hancock_County_dp03_2021, dp_table_variables_21, by = "variable")

Hancock_County_dp04_21 <- inner_join(Hancock_County_dp04_2021, dp_table_variables_21, by = "variable")

Hancock_County_dp05_21 <- inner_join(Hancock_County_dp05_2021, dp_table_variables_21, by = "variable")  

####2021

##Hawkins

Hawkins_County_dp02_21 <- inner_join(Hawkins_County_dp02_2021, dp_table_variables_21, by = "variable")

Hawkins_County_dp03_21 <- inner_join(Hawkins_County_dp03_2021, dp_table_variables_21, by = "variable")

Hawkins_County_dp04_21 <- inner_join(Hawkins_County_dp04_2021, dp_table_variables_21, by = "variable")

Hawkins_County_dp05_21 <- inner_join(Hawkins_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Johnson

Johnson_County_dp02_21 <- inner_join(Johnson_County_dp02_2021, dp_table_variables_21, by = "variable")

Johnson_County_dp03_21 <- inner_join(Johnson_County_dp03_2021, dp_table_variables_21, by = "variable")

Johnson_County_dp04_21 <- inner_join(Johnson_County_dp04_2021, dp_table_variables_21, by = "variable")

Johnson_County_dp05_21 <- inner_join(Johnson_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Sullivan

Sullivan_County_dp02_21 <- inner_join(Sullivan_County_dp02_2021, dp_table_variables_21, by = "variable")

Sullivan_County_dp03_21 <- inner_join(Sullivan_County_dp03_2021, dp_table_variables_21, by = "variable")

Sullivan_County_dp04_21 <- inner_join(Sullivan_County_dp04_2021, dp_table_variables_21, by = "variable")

Sullivan_County_dp05_21 <- inner_join(Sullivan_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Washington

Washington_County_dp02_21 <- inner_join(Washington_County_dp02_2021, dp_table_variables_21, by = "variable")

Washington_County_dp03_21 <- inner_join(Washington_County_dp03_2021, dp_table_variables_21, by = "variable")

Washington_County_dp04_21 <- inner_join(Washington_County_dp04_2021, dp_table_variables_21, by = "variable")

Washington_County_dp05_21 <- inner_join(Washington_County_dp05_2021, dp_table_variables_21, by = "variable")

####2021##

##Unicoi

Unicoi_County_dp02_21 <- inner_join(Unicoi_County_dp02_2021, dp_table_variables_21, by = "variable")

Unicoi_County_dp03_21 <- inner_join(Unicoi_County_dp03_2021, dp_table_variables_21, by = "variable")

Unicoi_County_dp04_21 <- inner_join(Unicoi_County_dp04_2021, dp_table_variables_21, by = "variable")

Unicoi_County_dp05_21 <- inner_join(Unicoi_County_dp05_2021, dp_table_variables_21, by = "variable")

#tennessee 

Tennessee_dp02_21 <- inner_join(Tennessee_dp02_2021, dp_table_variables_21, by = "variable")

Tennessee_dp03_21 <- inner_join(Tennessee_dp03_2021, dp_table_variables_21, by = "variable")

Tennessee_dp04_21 <- inner_join(Tennessee_dp04_2021, dp_table_variables_21, by = "variable")

Tennessee_dp05_21 <- inner_join(Tennessee_dp05_2021, dp_table_variables_21, by = "variable")

#united states

US_dp02_21 <- inner_join(US_dp02_2021, dp_table_variables_21, by = "variable")

US_dp03_21 <- inner_join(US_dp03_2021, dp_table_variables_21, by = "variable")

US_dp04_21 <- inner_join(US_dp04_2021, dp_table_variables_21, by = "variable")

US_dp05_21 <- inner_join(US_dp05_2021, dp_table_variables_21, by = "variable")

US_dp_2021 <- rbind(US_dp02_21, US_dp03_21, US_dp04_21, US_dp05_21)



#2021

County_dp02_21<- rbind(Carter_County_dp02_21, Greene_County_dp02_21, Hancock_County_dp02_21, Hawkins_County_dp02_21, Johnson_County_dp02_21, Sullivan_County_dp02_21, Washington_County_dp02_21, Unicoi_County_dp02_21)

County_dp03_21 <- rbind(Carter_County_dp03_21, Greene_County_dp03_21, Hancock_County_dp03_21, Hawkins_County_dp03_21, Johnson_County_dp03_21, Sullivan_County_dp03_21, Washington_County_dp03_21, Unicoi_County_dp03_21)

County_dp04_21 <- rbind(Carter_County_dp04_21, Greene_County_dp04_21, Hancock_County_dp04_21, Hawkins_County_dp04_21, Johnson_County_dp04_21, Sullivan_County_dp04_21, Washington_County_dp04_21, Unicoi_County_dp04_21)

County_dp05_21 <- rbind(Carter_County_dp05_21, Greene_County_dp05_21, Hancock_County_dp05_21, Hawkins_County_dp05_21, Johnson_County_dp05_21, Sullivan_County_dp05_21, Washington_County_dp05_21, Unicoi_County_dp05_21)

County_dp_2021 <- rbind(County_dp02_21, County_dp03_21, County_dp04_21, County_dp05_21) 


###combine everything

Combined_dp02_21 <- rbind(Tennessee_dp02_21, Carter_County_dp02_21, Greene_County_dp02_21, Hancock_County_dp02_21, Hawkins_County_dp02_21, Johnson_County_dp02_21, Sullivan_County_dp02_21, Washington_County_dp02_21, Unicoi_County_dp02_21)

Combined_dp03_21 <- rbind(Tennessee_dp03_21, Carter_County_dp03_21, Greene_County_dp03_21, Hancock_County_dp03_21, Hawkins_County_dp03_21, Johnson_County_dp03_21, Sullivan_County_dp03_21, Washington_County_dp03_21, Unicoi_County_dp03_21)

Combined_dp04_21 <- rbind(Tennessee_dp04_21, Carter_County_dp04_21, Greene_County_dp04_21, Hancock_County_dp04_21, Hawkins_County_dp04_21, Johnson_County_dp04_21, Sullivan_County_dp04_21, Washington_County_dp04_21, Unicoi_County_dp04_21)

Combined_dp05_21 <- rbind(Tennessee_dp05_21, Carter_County_dp05_21, Greene_County_dp05_21, Hancock_County_dp05_21, Hawkins_County_dp05_21, Johnson_County_dp05_21, Sullivan_County_dp05_21, Washington_County_dp05_21, Unicoi_County_dp05_21)

Combined_dp_2021 <- rbind(Combined_dp02_21, Combined_dp03_21, Combined_dp04_21, Combined_dp05_21)

####this one has Tennessee and county data

##need to remove geometry to add us data

Combined_dp_2021_no_geom <- st_set_geometry(Combined_dp_2021, NULL)


Full_dp_2021 <- rbind(US_dp_2021, Combined_dp_2021_no_geom)

Full_dp_2021

dp_2021

#### school districts ####

# 2022

tn_school_districts_DP02_22 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP02", year = 2022, geometry = TRUE)

tn_school_districts_DP03_22 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP03", year = 2022, geometry = TRUE)

tn_school_districts_DP04_22 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP04", year = 2022, geometry = TRUE)

tn_school_districts_DP05_22 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP05", year = 2022, geometry = TRUE)

tn_school_districts_2022 <- rbind(tn_school_districts_DP02_22, tn_school_districts_DP03_22, tn_school_districts_DP04_22, tn_school_districts_DP05_22)

joined_tn_school_districts_2022 <- inner_join(tn_school_districts_2022, dp_table_variables_22, by = "variable")


# 2021

tn_school_districts_DP02_21 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP02", year = 2021, geometry = TRUE)

tn_school_districts_DP03_21 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP03", year = 2021, geometry = TRUE)

tn_school_districts_DP04_21 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP04", year = 2021, geometry = TRUE)

tn_school_districts_DP05_21 <- get_acs(geography = "school district (unified)", state = "TN", table = "DP05", year = 2021, geometry = TRUE)

tn_school_districts_2021 <- rbind(tn_school_districts_DP02_21, tn_school_districts_DP03_21, tn_school_districts_DP04_21, tn_school_districts_DP05_21)

joined_tn_school_districts_2021 <- inner_join(tn_school_districts_2021, dp_table_variables_21, by = "variable")

#### extracting school districts #####

#### DATA PROFILES #####

View(tn_school_districts_2022)

tn_school_districts_2021


#### 2022 ####

#### using for school districts in each county ####

# carter
# Carter County Schools
carter_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Carter County"))

# Elizabethon City Schools
elizabethton_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Elizabethton"))


# greene
# greeneville city schools

greeneville_city_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Greeneville City"))

greeneville_city_schools_22

# greene county schools
greene_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Greene County"))

greene_county_schools_22

# hancock
# hancock county schools
hancock_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Hancock"))

hancock_temp_22 <- hancock_county_schools_22 %>%
  mutate(County = "Hancock")

# hawkins
# hawkins county school
hawkins_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Hawkins"))

hawkins_temp_22 <- hawkins_county_schools_22 %>%
  mutate(County = "Hawkins")

# johnson 
# johnson county school
johnson_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Johnson County"))

johnson_temp_22 <- johnson_county_schools_22 %>%
  mutate(County = "Johnson")

# sullivan
# kingsport city school
kpt_city_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Kingsport"))

kpt_temp_22 <- kpt_city_schools_22 %>%
  mutate(County = "Sullivan")

# bristol city school

bristol_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Bristol"))

bristol_temp_22 <- bristol_schools_22 %>%
  mutate(County = "Sullivan")

# Sullivan County

sullivan_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Sullivan"))

sc_temp_22 <- sullivan_schools_22 %>%
  mutate(County = "Sullivan")

# unicoi
# unicoi County Schools

unicoi_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Unicoi"))

unicoi_temp_22 <- unicoi_schools_22 %>%
  mutate(County = "Unicoi")

# washington 
# johnson city schools
jc_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Johnson City"))

jc_temp_22 <- jc_schools_22 %>%
  mutate(County = "Washington")

# washington county schools

washington_county_schools_22 <- tn_school_districts_2022 %>%
  filter(str_detect(NAME, "Washington County"))

washington_county_schools_22

washington_county_temp_22 <- washington_county_schools_22 %>%
  mutate(County = "Washington")

uethda_schools_2022 <- rbind(carter_county_schools_22, elizabethton_schools_22, greeneville_city_schools_22, greene_county_schools_22,
                             hancock_county_schools_22, hawkins_county_schools_22, johnson_county_schools_22, kpt_city_schools_22,
                             bristol_schools_22, sullivan_schools_22, unicoi_schools_22, jc_schools_22, washington_county_schools_22)

#### 2021 ####

#### using for school districts in each county ####

# carter
# Carter County Schools
carter_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Carter County"))

# Elizabethon City Schools
elizabethton_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Elizabethton"))


# greene
# greeneville city schools

greeneville_city_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Greeneville City"))

greeneville_city_schools_21

# greene county schools
greene_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Greene County"))

greene_county_schools_21

# hancock
# hancock county schools
hancock_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Hancock"))

hancock_temp_21 <- hancock_county_schools_21 %>%
  mutate(County = "Hancock")

# hawkins
# hawkins county school
hawkins_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Hawkins"))

hawkins_temp_21 <- hawkins_county_schools_21 %>%
  mutate(County = "Hawkins")

# johnson 
# johnson county school
johnson_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Johnson County"))

johnson_temp_21 <- johnson_county_schools_21 %>%
  mutate(County = "Johnson")

# sullivan
# kingsport city school
kpt_city_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Kingsport"))

kpt_temp_21 <- kpt_city_schools_21 %>%
  mutate(County = "Sullivan")

# bristol city school

bristol_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Bristol"))

bristol_temp_21 <- bristol_schools_21 %>%
  mutate(County = "Sullivan")

# Sullivan County

sullivan_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Sullivan"))

sc_temp_21 <- sullivan_schools_21 %>%
  mutate(County = "Sullivan")

# unicoi
# unicoi County Schools

unicoi_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Unicoi"))

unicoi_temp_21 <- unicoi_schools_21 %>%
  mutate(County = "Unicoi")

# washington 
# johnson city schools
jc_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Johnson City"))

jc_temp_21 <- jc_schools_21 %>%
  mutate(County = "Washington")

# washington county schools

washington_county_schools_21 <- tn_school_districts_2021 %>%
  filter(str_detect(NAME, "Washington County"))

washington_county_schools_21

washington_county_temp_21 <- washington_county_schools_21 %>%
  mutate(County = "Washington")

uethda_schools_2021 <- rbind(carter_county_schools_21, elizabethton_schools_21, greeneville_city_schools_21, greene_county_schools_21,
                             hancock_county_schools_21, hawkins_county_schools_21, johnson_county_schools_21, kpt_city_schools_21,
                             bristol_schools_21, sullivan_schools_21, unicoi_schools_21, jc_schools_21, washington_county_schools_21)


#### S1301 FERTILITY #####

carter_county_fertility <- school_fertility %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_fertility <- school_fertility %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Greeneville City"))

greene_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Greene County"))

hancock_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Hancock"))

hawkins_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Hawkins"))

johnson_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Bristol"))

sullivan_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Unicoi"))

jc_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_fertility <- rbind(carter_county_fertility, elizabethton_fertility, greene_city_fertility, greene_school_fertility,hancock_school_fertility,hawkins_school_fertility, 
                                  johnson_school_fertility, kpt_city_fertility, bristol_city_fertility, sullivan_school_fertility,unicoi_school_fertility, jc_school_fertility, 
                                  wash_co_school_fertility)




##### supplemental tables #### 

#####S1301 - FERTILITY #####

vars_to_pull <- c("S1301_C01_001", "S1301_C01_014","S1301_C01_017", "S1301_C01_018", "S1301_C01_019", "S1301_C01_020", "S1301_C01_021" ,"S1301_C01_022", "S1301_C01_023", "S1301_C01_024", "S1301_C01_025", "S1301_C01_027",
                  "S1301_C01_029","S1301_C02_001", "S1301_C02_014","S1301_C02_017", "S1301_C02_018", "S1301_C02_019", "S1301_C02_020", "S1301_C02_021" ,"S1301_C02_022", "S1301_C02_022", "S1301_C02_023", "S1301_C02_024", "S1301_C02_025", "S1301_C02_027",
                  "S1301_C02_029")


vars_named_to_pull <- c("Total Women 15-50", "Total Women 15-50 Non-Hispanic White","Total Women 15-50 Less than HS Degree", "Total Women 15-50 HS Grad", "Total Women 15-50 Some College/Associates", "Total Women 15-50 Bachelors", "Total Women 15-50 Grad Degree" ,"Total Women 15-50 Pov Status Determined",
                        "Total Women 15-50 In Poverty", "Total Women 15-50 100-199% Pov Level", "Total Women 15-50 > 200% Pov Level",
                        "Total Women 15-50 in Labor Force", "Total Women 15-50 Received Public Assistance Income",
                        "Total Women 15-50 with Births", "Total Women 15-50 Non-Hispanic White with Births","Total Women 15-50 Less than HS Degree with Births", "Total Women 15-50 HS Grad with Births", "Total Women 15-50 Some College/Associates with Births", "Total Women 15-50 Bachelors with Births", "Total Women 15-50 Grad Degree with Births" , "Total Women 15-50 Pov Status Determined with Births",
                        "Total Women 15-50 In Poverty with Births", "Total Women 15-50 100-199% Pov Level with Births", "Total Women 15-50 > 200% Pov Level with Births",
                        "Total Women 15-50 in Labor Force with Births", "Total Women 15-50 Received Public Assistance Income with Births")

# 2022
subject_table_variables_2022 <- load_variables(2022, "acs5/subject", cache = TRUE)

subject_table_variables_22 <- load_variables(2022, "acs5/subject", cache = TRUE)

new_names_22 <- c("variable", "label", "concept")

names(subject_table_variables_2022) <- new_names_22

names(subject_table_variables_22) <- new_names_22

subject_table_variables_2021 <- load_variables(2021, "acs5/subject", cache = TRUE)

names(subject_table_variables_2021) <- new_names_22

subject_table_variables_21 <- load_variables(2021, "acs5/subject", cache = TRUE)

names(subject_table_variables_21) <- new_names_22

# school districts
tn_school_districts_fertility_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# carter 

Carter_tract_fertility_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Carter_county_fertility_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_fertility_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Greene_county_fertility_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Hancock_county_fertility_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Hawkins_county_fertility_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Johnson_county_fertility_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Sullivan_county_fertility_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Unicoi_county_fertility_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_fertility_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

Washington_county_fertility_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2022, geometry = TRUE)

# 2021
subject_table_variables_2021 <- load_variables(2021, "acs5/subject", cache = TRUE)

new_names_21 <- c("variable", "label", "concept")

names(subject_table_variables_2021) <- new_names_21

View(subject_table_variables_2021)

subject_table_variables_2016 <- load_variables(2016, "acs5/subject", cache = TRUE)

names(subject_table_variables_2016) <- new_names_21

# school districts
tn_school_districts_fertility_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# carter 

Carter_tract_fertility_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Carter_county_fertility_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_fertility_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Greene_county_fertility_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Hancock_county_fertility_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Hawkins_county_fertility_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Johnson_county_fertility_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Sullivan_county_fertility_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Unicoi_county_fertility_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_fertility_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2021, geometry = TRUE)

Washington_county_fertility_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2021, geometry = TRUE)


### 2020

subject_table_variables_20 <- load_variables(2020, "acs5/subject", cache = TRUE)

new_names_20 <- c("variable", "label", "concept")

names(subject_table_variables_20) <- new_names_20

View(subject_table_variables_20)

# school districts
tn_school_districts_fertility_2020 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# carter 

Carter_tract_fertility_2020 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Carter_county_fertility_2020 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Greene 

Greene_tract_fertility_2020 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Greene_county_fertility_2020 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2020 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Hancock_county_fertility_2020 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2020 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Hawkins_county_fertility_2020 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2020 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Johnson_county_fertility_2020 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2020 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Sullivan_county_fertility_2020 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2020 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Unicoi_county_fertility_2020 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

# Washington 

Washington_tract_fertility_2020 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

Washington_county_fertility_2020 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2020, geometry = TRUE)

#2019

subject_table_variables_19 <- load_variables(2019, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_19) <- new_names_19


# school districts
tn_school_districts_fertility_2019 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# carter 

Carter_tract_fertility_2019 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Carter_county_fertility_2019 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Greene 

Greene_tract_fertility_2019 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Greene_county_fertility_2019 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2019 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Hancock_county_fertility_2019 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2019 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Hawkins_county_fertility_2019 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2019 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Johnson_county_fertility_2019 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2019 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Sullivan_county_fertility_2019 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2019 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Unicoi_county_fertility_2019 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

# Washington 

Washington_tract_fertility_2019 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

Washington_county_fertility_2019 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2019, geometry = TRUE)

#2018

subject_table_variables_2018 <- load_variables(2018, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2018) <- new_names_19

View(subject_table_variables_2018)

# school districts
tn_school_districts_fertility_2018 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# carter 

Carter_tract_fertility_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Carter_county_fertility_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Greene 

Greene_tract_fertility_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Greene_county_fertility_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Hancock_county_fertility_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Hawkins_county_fertility_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Johnson_county_fertility_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Sullivan_county_fertility_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Unicoi_county_fertility_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

# Washington 

Washington_tract_fertility_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

Washington_county_fertility_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2018, geometry = TRUE)

#2017

subject_table_variables_2017 <- load_variables(2017, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2017) <- new_names_19


# school districts
tn_school_districts_fertility_2017 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# carter 

Carter_tract_fertility_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Carter_county_fertility_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Greene 

Greene_tract_fertility_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Greene_county_fertility_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Hancock_county_fertility_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Hawkins_county_fertility_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Johnson_county_fertility_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Sullivan_county_fertility_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Unicoi_county_fertility_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

# Washington 

Washington_tract_fertility_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2017, geometry = TRUE)

Washington_county_fertility_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2017, geometry = TRUE)


#2016

subject_table_variables_2016 <- load_variables(2016, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2016) <- new_names_19


# school districts
tn_school_districts_fertility_2016 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# carter 

Carter_tract_fertility_2016 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Carter_county_fertility_2016 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Greene 

Greene_tract_fertility_2016 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Greene_county_fertility_2016 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2016 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Hancock_county_fertility_2016 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2016 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Hawkins_county_fertility_2016 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2016 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Johnson_county_fertility_2016 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2016 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Sullivan_county_fertility_2016 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2016 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Unicoi_county_fertility_2016 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

# Washington 

Washington_tract_fertility_2016 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

Washington_county_fertility_2016 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2016, geometry = TRUE)

#2015

subject_table_variables_2015 <- load_variables(2015, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2015) <- new_names_19

View(subject_table_variables_2015)

# school districts
tn_school_districts_fertility_2015 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# carter 

Carter_tract_fertility_2015 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Carter_county_fertility_2015 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Greene 

Greene_tract_fertility_2015 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Greene_county_fertility_2015 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2015 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Hancock_county_fertility_2015 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2015 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Hawkins_county_fertility_2015 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2015 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Johnson_county_fertility_2015 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2015 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Sullivan_county_fertility_2015 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2015 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Unicoi_county_fertility_2015 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

# Washington 

Washington_tract_fertility_2015 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

Washington_county_fertility_2015 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2015, geometry = TRUE)

#2014

subject_table_variables_2014 <- load_variables(2014, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2014) <- new_names_19


# school districts
tn_school_districts_fertility_2014 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# carter 

Carter_tract_fertility_2014 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Carter_county_fertility_2014 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Greene 

Greene_tract_fertility_2014 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Greene_county_fertility_2014 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2014 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Hancock_county_fertility_2014 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2014 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Hawkins_county_fertility_2014 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2014 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Johnson_county_fertility_2014 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2014 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Sullivan_county_fertility_2014 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2014 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Unicoi_county_fertility_2014 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

# Washington 

Washington_tract_fertility_2014 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

Washington_county_fertility_2014 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2014, geometry = TRUE)

#2013

subject_table_variables_2013 <- load_variables(2013, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2013) <- new_names_19

View(subject_table_variables_2013)

# school districts
tn_school_districts_fertility_2013 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# carter 

Carter_tract_fertility_2013 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Carter_county_fertility_2013 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Greene 

Greene_tract_fertility_2013 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Greene_county_fertility_2013 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2013 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Hancock_county_fertility_2013 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2013 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Hawkins_county_fertility_2013 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2013 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Johnson_county_fertility_2013 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2013 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Sullivan_county_fertility_2013 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2013 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Unicoi_county_fertility_2013 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

# Washington 

Washington_tract_fertility_2013 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

Washington_county_fertility_2013 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2013, geometry = TRUE)

#2012

subject_table_variables_2012 <- load_variables(2012, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2012) <- new_names_19


# school districts
tn_school_districts_fertility_2012 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# carter 

Carter_tract_fertility_2012 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Carter_county_fertility_2012 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Greene 

Greene_tract_fertility_2012 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Greene_county_fertility_2012 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2012 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Hancock_county_fertility_2012 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2012 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Hawkins_county_fertility_2012 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2012 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Johnson_county_fertility_2012 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2012 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Sullivan_county_fertility_2012 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2012 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Unicoi_county_fertility_2012 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

# Washington 

Washington_tract_fertility_2012 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

Washington_county_fertility_2012 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2012, geometry = TRUE)

#2011

subject_table_variables_2011 <- load_variables(2011, "acs5/subject", cache = TRUE)

new_names_19 <- c("variable", "label", "concept")

names(subject_table_variables_2011) <- new_names_19

View(subject_table_variables_2011)

# school districts
tn_school_districts_fertility_2011 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# carter 

Carter_tract_fertility_2011 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Carter_county_fertility_2011 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Greene 

Greene_tract_fertility_2011 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Greene_county_fertility_2011 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Hancock 

Hancock_tract_fertility_2011 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Hancock_county_fertility_2011 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Hawkins 

Hawkins_tract_fertility_2011 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Hawkins_county_fertility_2011 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Johnson 

Johnson_tract_fertility_2011 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Johnson_county_fertility_2011 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Sullivan 

Sullivan_tract_fertility_2011 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Sullivan_county_fertility_2011 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Unicoi 

Unicoi_tract_fertility_2011 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Unicoi_county_fertility_2011 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

# Washington 

Washington_tract_fertility_2011 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1301", year = 2011, geometry = TRUE)

Washington_county_fertility_2011 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1301", year = 2011, geometry = TRUE)


## bind counties together by year 

county_fertility_2022 <- rbind(Carter_county_fertility_2022, Greene_county_fertility_2022, Hancock_county_fertility_2022, Hawkins_county_fertility_2022, 
                               Johnson_county_fertility_2022, Sullivan_county_fertility_2022, Unicoi_county_fertility_2022, Washington_county_fertility_2022)

tract_fertility_2022 <- rbind(Carter_tract_fertility_2022, Greene_tract_fertility_2022, Hancock_tract_fertility_2022, Hawkins_tract_fertility_2022,
                              Johnson_tract_fertility_2022, Sullivan_tract_fertility_2022, Unicoi_tract_fertility_2022, Washington_tract_fertility_2022)

county_fertility_2021 <- rbind(Carter_county_fertility_2021, Greene_county_fertility_2021, Hancock_county_fertility_2021, Hawkins_county_fertility_2021, 
                               Johnson_county_fertility_2021, Sullivan_county_fertility_2021, Unicoi_county_fertility_2021, Washington_county_fertility_2021)

tract_fertility_2021 <- rbind(Carter_tract_fertility_2021, Greene_tract_fertility_2021, Hancock_tract_fertility_2021, Hawkins_tract_fertility_2021,
                              Johnson_tract_fertility_2021, Sullivan_tract_fertility_2021, Unicoi_tract_fertility_2021, Washington_tract_fertility_2021)

county_fertility_2020 <- rbind(Carter_county_fertility_2020, Greene_county_fertility_2020, Hancock_county_fertility_2020, Hawkins_county_fertility_2020, 
                               Johnson_county_fertility_2020, Sullivan_county_fertility_2020, Unicoi_county_fertility_2020, Washington_county_fertility_2020)

tract_fertility_2020 <- rbind(Carter_tract_fertility_2020, Greene_tract_fertility_2020, Hancock_tract_fertility_2020, Hawkins_tract_fertility_2020,
                              Johnson_tract_fertility_2020, Sullivan_tract_fertility_2020, Unicoi_tract_fertility_2020, Washington_tract_fertility_2020)

county_fertility_2019 <- rbind(Carter_county_fertility_2019, Greene_county_fertility_2019, Hancock_county_fertility_2019, Hawkins_county_fertility_2019, 
                               Johnson_county_fertility_2019, Sullivan_county_fertility_2019, Unicoi_county_fertility_2019, Washington_county_fertility_2019)

tract_fertility_2019 <- rbind(Carter_tract_fertility_2019, Greene_tract_fertility_2019, Hancock_tract_fertility_2019, Hawkins_tract_fertility_2019,
                              Johnson_tract_fertility_2019, Sullivan_tract_fertility_2019, Unicoi_tract_fertility_2019, Washington_tract_fertility_2019)

county_fertility_2018 <- rbind(Carter_county_fertility_2018, Greene_county_fertility_2018, Hancock_county_fertility_2018, Hawkins_county_fertility_2018, 
                               Johnson_county_fertility_2018, Sullivan_county_fertility_2018, Unicoi_county_fertility_2018, Washington_county_fertility_2018)

tract_fertility_2018 <- rbind(Carter_tract_fertility_2018, Greene_tract_fertility_2018, Hancock_tract_fertility_2018, Hawkins_tract_fertility_2018,
                              Johnson_tract_fertility_2018, Sullivan_tract_fertility_2018, Unicoi_tract_fertility_2018, Washington_tract_fertility_2018)

county_fertility_2017 <- rbind(Carter_county_fertility_2017, Greene_county_fertility_2017, Hancock_county_fertility_2017, Hawkins_county_fertility_2017, 
                               Johnson_county_fertility_2017, Sullivan_county_fertility_2017, Unicoi_county_fertility_2017, Washington_county_fertility_2017)

tract_fertility_2017 <- rbind(Carter_tract_fertility_2017, Greene_tract_fertility_2017, Hancock_tract_fertility_2017, Hawkins_tract_fertility_2017,
                              Johnson_tract_fertility_2017, Sullivan_tract_fertility_2017, Unicoi_tract_fertility_2017, Washington_tract_fertility_2017)

county_fertility_2016 <- rbind(Carter_county_fertility_2016, Greene_county_fertility_2016, Hancock_county_fertility_2016, Hawkins_county_fertility_2016, 
                               Johnson_county_fertility_2016, Sullivan_county_fertility_2016, Unicoi_county_fertility_2016, Washington_county_fertility_2016)

tract_fertility_2016 <- rbind(Carter_tract_fertility_2016, Greene_tract_fertility_2016, Hancock_tract_fertility_2016, Hawkins_tract_fertility_2016,
                              Johnson_tract_fertility_2016, Sullivan_tract_fertility_2016, Unicoi_tract_fertility_2016, Washington_tract_fertility_2016)

county_fertility_2015 <- rbind(Carter_county_fertility_2015, Greene_county_fertility_2015, Hancock_county_fertility_2015, Hawkins_county_fertility_2015, 
                               Johnson_county_fertility_2015, Sullivan_county_fertility_2015, Unicoi_county_fertility_2015, Washington_county_fertility_2015)

tract_fertility_2015 <- rbind(Carter_tract_fertility_2015, Greene_tract_fertility_2015, Hancock_tract_fertility_2015, Hawkins_tract_fertility_2015,
                              Johnson_tract_fertility_2015, Sullivan_tract_fertility_2015, Unicoi_tract_fertility_2015, Washington_tract_fertility_2015)

county_fertility_2014 <- rbind(Carter_county_fertility_2014, Greene_county_fertility_2014, Hancock_county_fertility_2014, Hawkins_county_fertility_2014, 
                               Johnson_county_fertility_2014, Sullivan_county_fertility_2014, Unicoi_county_fertility_2014, Washington_county_fertility_2014)

tract_fertility_2014 <- rbind(Carter_tract_fertility_2014, Greene_tract_fertility_2014, Hancock_tract_fertility_2014, Hawkins_tract_fertility_2014,
                              Johnson_tract_fertility_2014, Sullivan_tract_fertility_2014, Unicoi_tract_fertility_2014, Washington_tract_fertility_2014)

county_fertility_2013 <- rbind(Carter_county_fertility_2013, Greene_county_fertility_2013, Hancock_county_fertility_2013, Hawkins_county_fertility_2013, 
                               Johnson_county_fertility_2013, Sullivan_county_fertility_2013, Unicoi_county_fertility_2013, Washington_county_fertility_2013)

tract_fertility_2013 <- rbind(Carter_tract_fertility_2013, Greene_tract_fertility_2013, Hancock_tract_fertility_2013, Hawkins_tract_fertility_2013,
                              Johnson_tract_fertility_2013, Sullivan_tract_fertility_2013, Unicoi_tract_fertility_2013, Washington_tract_fertility_2013)

county_fertility_2012 <- rbind(Carter_county_fertility_2012, Greene_county_fertility_2012, Hancock_county_fertility_2012, Hawkins_county_fertility_2012, 
                               Johnson_county_fertility_2012, Sullivan_county_fertility_2012, Unicoi_county_fertility_2012, Washington_county_fertility_2012)

tract_fertility_2012 <- rbind(Carter_tract_fertility_2012, Greene_tract_fertility_2012, Hancock_tract_fertility_2012, Hawkins_tract_fertility_2012,
                              Johnson_tract_fertility_2012, Sullivan_tract_fertility_2012, Unicoi_tract_fertility_2012, Washington_tract_fertility_2012)

county_fertility_2011 <- rbind(Carter_county_fertility_2011, Greene_county_fertility_2011, Hancock_county_fertility_2011, Hawkins_county_fertility_2011, 
                               Johnson_county_fertility_2011, Sullivan_county_fertility_2011, Unicoi_county_fertility_2011, Washington_county_fertility_2011)

tract_fertility_2011 <- rbind(Carter_tract_fertility_2011, Greene_tract_fertility_2011, Hancock_tract_fertility_2011, Hawkins_tract_fertility_2011,
                              Johnson_tract_fertility_2011, Sullivan_tract_fertility_2011, Unicoi_tract_fertility_2011, Washington_tract_fertility_2011)



# 2022 
uethda_county_fertility_2022 <- inner_join(county_fertility_2022, subject_table_variables_2022, by = "variable")

uethda_tract_fertility_2022 <- inner_join(tract_fertility_2022, subject_table_variables_2022, by = "variable")

school_district_fertility_2022 <- inner_join(tn_school_districts_fertility_2022, subject_table_variables_2022, by = "variable")


# 2021 
uethda_county_fertility_2021 <- inner_join(county_fertility_2021, subject_table_variables_2021, by = "variable")

uethda_tract_fertility_2021 <- inner_join(tract_fertility_2021, subject_table_variables_2021, by = "variable")

school_district_fertility_2021 <- inner_join(tn_school_districts_fertility_2021, subject_table_variables_2021, by = "variable")

# 2020 
uethda_county_fertility_2020 <- inner_join(county_fertility_2020, subject_table_variables_20, by = "variable")

uethda_tract_fertility_2020 <- inner_join(tract_fertility_2020, subject_table_variables_20, by = "variable")

school_district_fertility_2020 <- inner_join(tn_school_districts_fertility_2020, subject_table_variables_20, by = "variable")

# 2019 
uethda_county_fertility_2019 <- inner_join(county_fertility_2019, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2019 <- inner_join(tract_fertility_2019, subject_table_variables_19, by = "variable")

school_district_fertility_2019 <- inner_join(tn_school_districts_fertility_2019, subject_table_variables_19, by = "variable")

# 2018 
uethda_county_fertility_2018 <- inner_join(county_fertility_2018, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2018 <- inner_join(tract_fertility_2018, subject_table_variables_19, by = "variable")

school_district_fertility_2018 <- inner_join(tn_school_districts_fertility_2018, subject_table_variables_19, by = "variable")

# 2017 
uethda_county_fertility_2017 <- inner_join(county_fertility_2017, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2017 <- inner_join(tract_fertility_2017, subject_table_variables_19, by = "variable")

school_district_fertility_2017 <- inner_join(tn_school_districts_fertility_2017, subject_table_variables_19, by = "variable")

# 2016 
uethda_county_fertility_2016 <- inner_join(county_fertility_2016, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2016 <- inner_join(tract_fertility_2016, subject_table_variables_19, by = "variable")

school_district_fertility_2016 <- inner_join(tn_school_districts_fertility_2016, subject_table_variables_19, by = "variable")

# 2015 
uethda_county_fertility_2015 <- inner_join(county_fertility_2015, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2015 <- inner_join(tract_fertility_2015, subject_table_variables_19, by = "variable")

school_district_fertility_2015 <- inner_join(tn_school_districts_fertility_2015, subject_table_variables_19, by = "variable")

# 2014 
uethda_county_fertility_2014 <- inner_join(county_fertility_2014, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2014 <- inner_join(tract_fertility_2014, subject_table_variables_19, by = "variable")

school_district_fertility_2014 <- inner_join(tn_school_districts_fertility_2014, subject_table_variables_19, by = "variable")

# 2013 
uethda_county_fertility_2013 <- inner_join(county_fertility_2013, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2013 <- inner_join(tract_fertility_2013, subject_table_variables_19, by = "variable")

school_district_fertility_2013 <- inner_join(tn_school_districts_fertility_2013, subject_table_variables_19, by = "variable")

# 2012 
uethda_county_fertility_2012 <- inner_join(county_fertility_2012, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2012 <- inner_join(tract_fertility_2012, subject_table_variables_19, by = "variable")

school_district_fertility_2012 <- inner_join(tn_school_districts_fertility_2012, subject_table_variables_19, by = "variable")

# 2011 
uethda_county_fertility_2011 <- inner_join(county_fertility_2011, subject_table_variables_19, by = "variable")

uethda_tract_fertility_2011 <- inner_join(tract_fertility_2011, subject_table_variables_19, by = "variable")

school_district_fertility_2011 <- inner_join(tn_school_districts_fertility_2011, subject_table_variables_19, by = "variable")


# clean the names 

# clean the names 

# 2022

cleaned_uethda_county_fertility_2022 <- uethda_county_fertility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "variable")

cleaned_uethda_tract_fertility_2022 <- uethda_tract_fertility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2022 <- school_district_fertility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

# 2021

cleaned_uethda_county_fertility_2021 <- uethda_county_fertility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe", "Variable" = "variable")

cleaned_uethda_tract_fertility_2021 <- uethda_tract_fertility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2021 <- school_district_fertility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

# 2020

cleaned_uethda_county_fertility_2020 <- uethda_county_fertility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2020 <- uethda_tract_fertility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2020 <- school_district_fertility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2019
uethda_county_fertility_2019

cleaned_uethda_county_fertility_2019 <- uethda_county_fertility_2019 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2019 <- uethda_tract_fertility_2019 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2019 <- school_district_fertility_2019 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2018
uethda_county_fertility_2018

cleaned_uethda_county_fertility_2018 <- uethda_county_fertility_2018 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2018 <- uethda_tract_fertility_2018 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2018 <- school_district_fertility_2018 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2017
uethda_county_fertility_2017

cleaned_uethda_county_fertility_2017 <- uethda_county_fertility_2017 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2017 <- uethda_tract_fertility_2017 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2017 <- school_district_fertility_2017 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2016
uethda_county_fertility_2016

cleaned_uethda_county_fertility_2016 <- uethda_county_fertility_2016 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2016)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2016 <- uethda_tract_fertility_2016 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2016)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2016 <- school_district_fertility_2016 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2016)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2015
uethda_county_fertility_2015

cleaned_uethda_county_fertility_2015 <- uethda_county_fertility_2015 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2015)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2015 <- uethda_tract_fertility_2015 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2015)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2015 <- school_district_fertility_2015 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2015)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2014
uethda_county_fertility_2014

cleaned_uethda_county_fertility_2014 <- uethda_county_fertility_2014 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2014)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2014 <- uethda_tract_fertility_2014 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2014)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2014 <- school_district_fertility_2014 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2014)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2013
uethda_county_fertility_2013

cleaned_uethda_county_fertility_2013 <- uethda_county_fertility_2013 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2013)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2013 <- uethda_tract_fertility_2013 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2013)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2013 <- school_district_fertility_2013 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2013)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2012
uethda_county_fertility_2012

cleaned_uethda_county_fertility_2012 <- uethda_county_fertility_2012 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2012)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2012 <- uethda_tract_fertility_2012 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2012)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2012 <- school_district_fertility_2012 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2012)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# 2011
uethda_county_fertility_2011

cleaned_uethda_county_fertility_2011 <- uethda_county_fertility_2011 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2011)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_fertility_2011 <- uethda_tract_fertility_2011 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2011)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_school_district_fertility_2011 <- school_district_fertility_2011 %>%
  select(NAME, variable, estimate, moe, label, geometry)%>%
  mutate(Year = 2011)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable") 

# join the years together

uethda_county_fertility <- rbind(cleaned_uethda_county_fertility_2022,cleaned_uethda_county_fertility_2021, cleaned_uethda_county_fertility_2020, cleaned_uethda_county_fertility_2019, cleaned_uethda_county_fertility_2018,cleaned_uethda_county_fertility_2017,
                                 cleaned_uethda_county_fertility_2016,cleaned_uethda_county_fertility_2015,cleaned_uethda_county_fertility_2014,cleaned_uethda_county_fertility_2013,cleaned_uethda_county_fertility_2012,cleaned_uethda_county_fertility_2011)

uethda_tract_fertility <- rbind(cleaned_uethda_tract_fertility_2022,cleaned_uethda_tract_fertility_2021, cleaned_uethda_tract_fertility_2020, cleaned_uethda_tract_fertility_2019, cleaned_uethda_tract_fertility_2018,cleaned_uethda_tract_fertility_2017,
                                cleaned_uethda_tract_fertility_2016,cleaned_uethda_tract_fertility_2015,cleaned_uethda_tract_fertility_2014,cleaned_uethda_tract_fertility_2013,cleaned_uethda_tract_fertility_2012,cleaned_uethda_tract_fertility_2011)

school_fertility <- rbind(cleaned_school_district_fertility_2022,cleaned_school_district_fertility_2021, cleaned_school_district_fertility_2020, cleaned_school_district_fertility_2019, cleaned_school_district_fertility_2018,cleaned_school_district_fertility_2017,
                          cleaned_school_district_fertility_2016,cleaned_school_district_fertility_2015,cleaned_school_district_fertility_2014,cleaned_school_district_fertility_2013,cleaned_school_district_fertility_2012,cleaned_school_district_fertility_2011)


school_fertility

#### S1301 FERTILITY #####

carter_county_fertility <- school_fertility %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_fertility <- school_fertility %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Greeneville City"))

greene_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Greene County"))

hancock_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Hancock"))

hawkins_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Hawkins"))

johnson_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_fertility <- school_fertility %>%
  filter(str_detect(Location, "Bristol"))

sullivan_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Unicoi"))

jc_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_school_fertility <- school_fertility %>%
  filter(str_detect(Location, "Washington County"))

View(school_fertility)

uethda_schools_fertility <- rbind(carter_county_fertility, elizabethton_fertility, greene_city_fertility, greene_school_fertility,hancock_school_fertility,hawkins_school_fertility, 
                                  johnson_school_fertility, kpt_city_fertility, bristol_city_fertility, sullivan_school_fertility,unicoi_school_fertility, jc_school_fertility, 
                                  wash_co_school_fertility)
uethda_schools_fertility

#### S1701 individual_poverty IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_individual_poverty_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# carter 

Carter_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Carter_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Greene_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Hancock_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Hawkins_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Johnson_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Sullivan_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Unicoi_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_individual_poverty_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

Washington_county_individual_poverty_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1701", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_individual_poverty_2022 <- rbind(Carter_county_individual_poverty_2022, Greene_county_individual_poverty_2022, Hancock_county_individual_poverty_2022, Hawkins_county_individual_poverty_2022, Johnson_county_individual_poverty_2022,
                                               Sullivan_county_individual_poverty_2022, Unicoi_county_individual_poverty_2022, Washington_county_individual_poverty_2022)

uethda_tract_individual_poverty_2022 <- rbind(Carter_tract_individual_poverty_2022, Greene_tract_individual_poverty_2022, Hancock_tract_individual_poverty_2022, Hawkins_tract_individual_poverty_2022,
                                              Johnson_tract_individual_poverty_2022, Sullivan_tract_individual_poverty_2022, Unicoi_tract_individual_poverty_2022, Washington_tract_individual_poverty_2022)

#join the names 

named_uethda_county_individual_poverty_2022 <- inner_join(uethda_county_individual_poverty_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_individual_poverty_2022 <- inner_join(uethda_tract_individual_poverty_2022,subject_table_variables_22, by = "variable")

named_uethda_school_individual_poverty_2022 <- inner_join(tn_school_districts_individual_poverty_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_individual_poverty_2022 <- named_uethda_county_individual_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_individual_poverty_2022 <- named_uethda_tract_individual_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_individual_poverty_2022 <- named_uethda_school_individual_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_individual_poverty_2022 <- cleaned_uethda_school_individual_poverty_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_individual_poverty_2022 <- rbind(carter_county_individual_poverty_2022, elizabethton_individual_poverty_2022, greene_city_individual_poverty_2022, greene_cleaned_uethda_school_individual_poverty_2022,hancock_cleaned_uethda_school_individual_poverty_2022,hawkins_cleaned_uethda_school_individual_poverty_2022, 
                                                johnson_cleaned_uethda_school_individual_poverty_2022, kpt_city_individual_poverty_2022, bristol_city_individual_poverty_2022, sullivan_cleaned_uethda_school_individual_poverty_2022,unicoi_cleaned_uethda_school_individual_poverty_2022, jc_cleaned_uethda_school_individual_poverty_2022, 
                                                wash_co_cleaned_uethda_school_individual_poverty_2022)

uethda_schools_individual_poverty_2022

#S1702 - poverty status families 
#### S1702 family_poverty IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_family_poverty_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# carter 

Carter_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Carter_county_family_poverty_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Greene_county_family_poverty_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Hancock_county_family_poverty_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Hawkins_county_family_poverty_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Johnson_county_family_poverty_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Sullivan_county_family_poverty_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Unicoi_county_family_poverty_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_family_poverty_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

Washington_county_family_poverty_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1702", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_family_poverty_2022 <- rbind(Carter_county_family_poverty_2022, Greene_county_family_poverty_2022, Hancock_county_family_poverty_2022, Hawkins_county_family_poverty_2022, Johnson_county_family_poverty_2022,
                                           Sullivan_county_family_poverty_2022, Unicoi_county_family_poverty_2022, Washington_county_family_poverty_2022)

uethda_tract_family_poverty_2022 <- rbind(Carter_tract_family_poverty_2022, Greene_tract_family_poverty_2022, Hancock_tract_family_poverty_2022, Hawkins_tract_family_poverty_2022,
                                          Johnson_tract_family_poverty_2022, Sullivan_tract_family_poverty_2022, Unicoi_tract_family_poverty_2022, Washington_tract_family_poverty_2022)

#join the names 

named_uethda_county_family_poverty_2022 <- inner_join(uethda_county_family_poverty_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_family_poverty_2022 <- inner_join(uethda_tract_family_poverty_2022,subject_table_variables_22, by = "variable")

named_uethda_school_family_poverty_2022 <- inner_join(tn_school_districts_family_poverty_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_family_poverty_2022 <- named_uethda_county_family_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_family_poverty_2022 <- named_uethda_tract_family_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_family_poverty_2022 <- named_uethda_school_family_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_family_poverty_2022 <- cleaned_uethda_school_family_poverty_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_family_poverty_2022 <- rbind(carter_county_family_poverty_2022, elizabethton_family_poverty_2022, greene_city_family_poverty_2022, greene_cleaned_uethda_school_family_poverty_2022,hancock_cleaned_uethda_school_family_poverty_2022,hawkins_cleaned_uethda_school_family_poverty_2022, 
                                            johnson_cleaned_uethda_school_family_poverty_2022, kpt_city_family_poverty_2022, bristol_city_family_poverty_2022, sullivan_cleaned_uethda_school_family_poverty_2022,unicoi_cleaned_uethda_school_family_poverty_2022, jc_cleaned_uethda_school_family_poverty_2022, 
                                            wash_co_cleaned_uethda_school_family_poverty_2022)

uethda_schools_family_poverty_2022

#S1703 - characteristics of poverty level 
#### S1703 characteristics_poverty IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_characteristics_poverty_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# carter 

Carter_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Carter_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Greene_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Hancock_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Hawkins_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Johnson_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Sullivan_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Unicoi_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_characteristics_poverty_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

Washington_county_characteristics_poverty_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1703", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_characteristics_poverty_2022 <- rbind(Carter_county_characteristics_poverty_2022, Greene_county_characteristics_poverty_2022, Hancock_county_characteristics_poverty_2022, Hawkins_county_characteristics_poverty_2022, Johnson_county_characteristics_poverty_2022,
                                                    Sullivan_county_characteristics_poverty_2022, Unicoi_county_characteristics_poverty_2022, Washington_county_characteristics_poverty_2022)

uethda_tract_characteristics_poverty_2022 <- rbind(Carter_tract_characteristics_poverty_2022, Greene_tract_characteristics_poverty_2022, Hancock_tract_characteristics_poverty_2022, Hawkins_tract_characteristics_poverty_2022,
                                                   Johnson_tract_characteristics_poverty_2022, Sullivan_tract_characteristics_poverty_2022, Unicoi_tract_characteristics_poverty_2022, Washington_tract_characteristics_poverty_2022)

#join the names 

named_uethda_county_characteristics_poverty_2022 <- inner_join(uethda_county_characteristics_poverty_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_characteristics_poverty_2022 <- inner_join(uethda_tract_characteristics_poverty_2022,subject_table_variables_22, by = "variable")

named_uethda_school_characteristics_poverty_2022 <- inner_join(tn_school_districts_characteristics_poverty_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_characteristics_poverty_2022 <- named_uethda_county_characteristics_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_characteristics_poverty_2022 <- named_uethda_tract_characteristics_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_characteristics_poverty_2022 <- named_uethda_school_characteristics_poverty_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_characteristics_poverty_2022 <- cleaned_uethda_school_characteristics_poverty_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_characteristics_poverty_2022 <- rbind(carter_county_characteristics_poverty_2022, elizabethton_characteristics_poverty_2022, greene_city_characteristics_poverty_2022, greene_cleaned_uethda_school_characteristics_poverty_2022,hancock_cleaned_uethda_school_characteristics_poverty_2022,hawkins_cleaned_uethda_school_characteristics_poverty_2022, 
                                                     johnson_cleaned_uethda_school_characteristics_poverty_2022, kpt_city_characteristics_poverty_2022, bristol_city_characteristics_poverty_2022, sullivan_cleaned_uethda_school_characteristics_poverty_2022,unicoi_cleaned_uethda_school_characteristics_poverty_2022, jc_cleaned_uethda_school_characteristics_poverty_2022, 
                                                     wash_co_cleaned_uethda_school_characteristics_poverty_2022)

uethda_schools_characteristics_poverty_2022

#S1703 - characteristics of poverty level 
#### S1703 characteristics_poverty IN PAST 12 MONTHS ####
# 2021

# school districts
tn_school_districts_characteristics_poverty_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# carter 

Carter_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Carter_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Greene_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Hancock_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Hawkins_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Johnson_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Sullivan_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Unicoi_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_characteristics_poverty_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

Washington_county_characteristics_poverty_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1703", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_characteristics_poverty_2021 <- rbind(Carter_county_characteristics_poverty_2021, Greene_county_characteristics_poverty_2021, Hancock_county_characteristics_poverty_2021, Hawkins_county_characteristics_poverty_2021, Johnson_county_characteristics_poverty_2021,
                                                    Sullivan_county_characteristics_poverty_2021, Unicoi_county_characteristics_poverty_2021, Washington_county_characteristics_poverty_2021)

uethda_tract_characteristics_poverty_2021 <- rbind(Carter_tract_characteristics_poverty_2021, Greene_tract_characteristics_poverty_2021, Hancock_tract_characteristics_poverty_2021, Hawkins_tract_characteristics_poverty_2021,
                                                   Johnson_tract_characteristics_poverty_2021, Sullivan_tract_characteristics_poverty_2021, Unicoi_tract_characteristics_poverty_2021, Washington_tract_characteristics_poverty_2021)

#join the names 

named_uethda_county_characteristics_poverty_2021 <- inner_join(uethda_county_characteristics_poverty_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_characteristics_poverty_2021 <- inner_join(uethda_tract_characteristics_poverty_2021,subject_table_variables_22, by = "variable")

named_uethda_school_characteristics_poverty_2021 <- inner_join(tn_school_districts_characteristics_poverty_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_characteristics_poverty_2021 <- named_uethda_county_characteristics_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_characteristics_poverty_2021 <- named_uethda_tract_characteristics_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_characteristics_poverty_2021 <- named_uethda_school_characteristics_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_characteristics_poverty_2021 <- cleaned_uethda_school_characteristics_poverty_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_characteristics_poverty_2021 <- rbind(carter_county_characteristics_poverty_2021, elizabethton_characteristics_poverty_2021, greene_city_characteristics_poverty_2021, greene_cleaned_uethda_school_characteristics_poverty_2021,hancock_cleaned_uethda_school_characteristics_poverty_2021,hawkins_cleaned_uethda_school_characteristics_poverty_2021, 
                                                     johnson_cleaned_uethda_school_characteristics_poverty_2021, kpt_city_characteristics_poverty_2021, bristol_city_characteristics_poverty_2021, sullivan_cleaned_uethda_school_characteristics_poverty_2021,unicoi_cleaned_uethda_school_characteristics_poverty_2021, jc_cleaned_uethda_school_characteristics_poverty_2021, 
                                                     wash_co_cleaned_uethda_school_characteristics_poverty_2021)

uethda_schools_characteristics_poverty_2021

#S1702 - poverty status families 
#### S1702 family_poverty IN PAST 12 MONTHS ####
# 2021

# school districts
tn_school_districts_family_poverty_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# carter 

Carter_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Carter_county_family_poverty_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Greene_county_family_poverty_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Hancock_county_family_poverty_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Hawkins_county_family_poverty_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Johnson_county_family_poverty_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Sullivan_county_family_poverty_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Unicoi_county_family_poverty_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_family_poverty_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

Washington_county_family_poverty_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1702", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_family_poverty_2021 <- rbind(Carter_county_family_poverty_2021, Greene_county_family_poverty_2021, Hancock_county_family_poverty_2021, Hawkins_county_family_poverty_2021, Johnson_county_family_poverty_2021,
                                           Sullivan_county_family_poverty_2021, Unicoi_county_family_poverty_2021, Washington_county_family_poverty_2021)

uethda_tract_family_poverty_2021 <- rbind(Carter_tract_family_poverty_2021, Greene_tract_family_poverty_2021, Hancock_tract_family_poverty_2021, Hawkins_tract_family_poverty_2021,
                                          Johnson_tract_family_poverty_2021, Sullivan_tract_family_poverty_2021, Unicoi_tract_family_poverty_2021, Washington_tract_family_poverty_2021)

#join the names 

named_uethda_county_family_poverty_2021 <- inner_join(uethda_county_family_poverty_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_family_poverty_2021 <- inner_join(uethda_tract_family_poverty_2021,subject_table_variables_22, by = "variable")

named_uethda_school_family_poverty_2021 <- inner_join(tn_school_districts_family_poverty_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_family_poverty_2021 <- named_uethda_county_family_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_family_poverty_2021 <- named_uethda_tract_family_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_family_poverty_2021 <- named_uethda_school_family_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_family_poverty_2021 <- cleaned_uethda_school_family_poverty_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_family_poverty_2021 <- rbind(carter_county_family_poverty_2021, elizabethton_family_poverty_2021, greene_city_family_poverty_2021, greene_cleaned_uethda_school_family_poverty_2021,hancock_cleaned_uethda_school_family_poverty_2021,hawkins_cleaned_uethda_school_family_poverty_2021, 
                                            johnson_cleaned_uethda_school_family_poverty_2021, kpt_city_family_poverty_2021, bristol_city_family_poverty_2021, sullivan_cleaned_uethda_school_family_poverty_2021,unicoi_cleaned_uethda_school_family_poverty_2021, jc_cleaned_uethda_school_family_poverty_2021, 
                                            wash_co_cleaned_uethda_school_family_poverty_2021)

uethda_schools_family_poverty_2021

#### S1701 individual_poverty IN PAST 12 MONTHS ####
# 2021

# school districts
tn_school_districts_individual_poverty_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# carter 

Carter_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Carter_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Greene_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Hancock_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Hawkins_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Johnson_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Sullivan_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Unicoi_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_individual_poverty_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

Washington_county_individual_poverty_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1701", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_individual_poverty_2021 <- rbind(Carter_county_individual_poverty_2021, Greene_county_individual_poverty_2021, Hancock_county_individual_poverty_2021, Hawkins_county_individual_poverty_2021, Johnson_county_individual_poverty_2021,
                                               Sullivan_county_individual_poverty_2021, Unicoi_county_individual_poverty_2021, Washington_county_individual_poverty_2021)

uethda_tract_individual_poverty_2021 <- rbind(Carter_tract_individual_poverty_2021, Greene_tract_individual_poverty_2021, Hancock_tract_individual_poverty_2021, Hawkins_tract_individual_poverty_2021,
                                              Johnson_tract_individual_poverty_2021, Sullivan_tract_individual_poverty_2021, Unicoi_tract_individual_poverty_2021, Washington_tract_individual_poverty_2021)

#join the names 

named_uethda_county_individual_poverty_2021 <- inner_join(uethda_county_individual_poverty_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_individual_poverty_2021 <- inner_join(uethda_tract_individual_poverty_2021,subject_table_variables_22, by = "variable")

named_uethda_school_individual_poverty_2021 <- inner_join(tn_school_districts_individual_poverty_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_individual_poverty_2021 <- named_uethda_county_individual_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_individual_poverty_2021 <- named_uethda_tract_individual_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_individual_poverty_2021 <- named_uethda_school_individual_poverty_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_individual_poverty_2021 <- cleaned_uethda_school_individual_poverty_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_individual_poverty_2021 <- rbind(carter_county_individual_poverty_2021, elizabethton_individual_poverty_2021, greene_city_individual_poverty_2021, greene_cleaned_uethda_school_individual_poverty_2021,hancock_cleaned_uethda_school_individual_poverty_2021,hawkins_cleaned_uethda_school_individual_poverty_2021, 
                                                johnson_cleaned_uethda_school_individual_poverty_2021, kpt_city_individual_poverty_2021, bristol_city_individual_poverty_2021, sullivan_cleaned_uethda_school_individual_poverty_2021,unicoi_cleaned_uethda_school_individual_poverty_2021, jc_cleaned_uethda_school_individual_poverty_2021, 
                                                wash_co_cleaned_uethda_school_individual_poverty_2021)

uethda_schools_individual_poverty_2021

#S1903 - Median Income past 12 months

#### S1903 median_income IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_median_income_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# carter 

Carter_tract_median_income_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Carter_county_median_income_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_median_income_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Greene_county_median_income_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_median_income_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Hancock_county_median_income_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_median_income_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Hawkins_county_median_income_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_median_income_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Johnson_county_median_income_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_median_income_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Sullivan_county_median_income_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_median_income_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Unicoi_county_median_income_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_median_income_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

Washington_county_median_income_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1903", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_median_income_2022 <- rbind(Carter_county_median_income_2022, Greene_county_median_income_2022, Hancock_county_median_income_2022, Hawkins_county_median_income_2022, Johnson_county_median_income_2022,
                                          Sullivan_county_median_income_2022, Unicoi_county_median_income_2022, Washington_county_median_income_2022)

uethda_tract_median_income_2022 <- rbind(Carter_tract_median_income_2022, Greene_tract_median_income_2022, Hancock_tract_median_income_2022, Hawkins_tract_median_income_2022,
                                         Johnson_tract_median_income_2022, Sullivan_tract_median_income_2022, Unicoi_tract_median_income_2022, Washington_tract_median_income_2022)

#join the names 

named_uethda_county_median_income_2022 <- inner_join(uethda_county_median_income_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_median_income_2022 <- inner_join(uethda_tract_median_income_2022,subject_table_variables_22, by = "variable")

named_uethda_school_median_income_2022 <- inner_join(tn_school_districts_median_income_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_median_income_2022 <- named_uethda_county_median_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_median_income_2022 <- named_uethda_tract_median_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_median_income_2022 <- named_uethda_school_median_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_median_income_2022 <- cleaned_uethda_school_median_income_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_median_income_2022 <- rbind(carter_county_median_income_2022, elizabethton_median_income_2022, greene_city_median_income_2022, greene_cleaned_uethda_school_median_income_2022,hancock_cleaned_uethda_school_median_income_2022,hawkins_cleaned_uethda_school_median_income_2022, 
                                           johnson_cleaned_uethda_school_median_income_2022, kpt_city_median_income_2022, bristol_city_median_income_2022, sullivan_cleaned_uethda_school_median_income_2022,unicoi_cleaned_uethda_school_median_income_2022, jc_cleaned_uethda_school_median_income_2022, 
                                           wash_co_cleaned_uethda_school_median_income_2022)

uethda_schools_median_income_2022


# 2021

# school districts
tn_school_districts_median_income_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# carter 

Carter_tract_median_income_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Carter_county_median_income_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_median_income_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Greene_county_median_income_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_median_income_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Hancock_county_median_income_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_median_income_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Hawkins_county_median_income_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_median_income_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Johnson_county_median_income_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_median_income_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Sullivan_county_median_income_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_median_income_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Unicoi_county_median_income_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_median_income_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

Washington_county_median_income_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1903", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_median_income_2021 <- rbind(Carter_county_median_income_2021, Greene_county_median_income_2021, Hancock_county_median_income_2021, Hawkins_county_median_income_2021, Johnson_county_median_income_2021,
                                          Sullivan_county_median_income_2021, Unicoi_county_median_income_2021, Washington_county_median_income_2021)

uethda_tract_median_income_2021 <- rbind(Carter_tract_median_income_2021, Greene_tract_median_income_2021, Hancock_tract_median_income_2021, Hawkins_tract_median_income_2021,
                                         Johnson_tract_median_income_2021, Sullivan_tract_median_income_2021, Unicoi_tract_median_income_2021, Washington_tract_median_income_2021)

#join the names 

named_uethda_county_median_income_2021 <- inner_join(uethda_county_median_income_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_median_income_2021 <- inner_join(uethda_tract_median_income_2021,subject_table_variables_22, by = "variable")

named_uethda_school_median_income_2021 <- inner_join(tn_school_districts_median_income_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_median_income_2021 <- named_uethda_county_median_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_median_income_2021 <- named_uethda_tract_median_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_median_income_2021 <- named_uethda_school_median_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_median_income_2021 <- cleaned_uethda_school_median_income_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_median_income_2021 <- rbind(carter_county_median_income_2021, elizabethton_median_income_2021, greene_city_median_income_2021, greene_cleaned_uethda_school_median_income_2021,hancock_cleaned_uethda_school_median_income_2021,hawkins_cleaned_uethda_school_median_income_2021, 
                                           johnson_cleaned_uethda_school_median_income_2021, kpt_city_median_income_2021, bristol_city_median_income_2021, sullivan_cleaned_uethda_school_median_income_2021,unicoi_cleaned_uethda_school_median_income_2021, jc_cleaned_uethda_school_median_income_2021, 
                                           wash_co_cleaned_uethda_school_median_income_2021)

uethda_schools_median_income_2021

#S1902 - mean income in past 12 months
#### S1902 mean_income IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_mean_income_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# carter 

Carter_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Carter_county_mean_income_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Greene_county_mean_income_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Hancock_county_mean_income_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Hawkins_county_mean_income_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Johnson_county_mean_income_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Sullivan_county_mean_income_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Unicoi_county_mean_income_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_mean_income_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

Washington_county_mean_income_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1902", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_mean_income_2022 <- rbind(Carter_county_mean_income_2022, Greene_county_mean_income_2022, Hancock_county_mean_income_2022, Hawkins_county_mean_income_2022, Johnson_county_mean_income_2022,
                                        Sullivan_county_mean_income_2022, Unicoi_county_mean_income_2022, Washington_county_mean_income_2022)

uethda_tract_mean_income_2022 <- rbind(Carter_tract_mean_income_2022, Greene_tract_mean_income_2022, Hancock_tract_mean_income_2022, Hawkins_tract_mean_income_2022,
                                       Johnson_tract_mean_income_2022, Sullivan_tract_mean_income_2022, Unicoi_tract_mean_income_2022, Washington_tract_mean_income_2022)

#join the names 

named_uethda_county_mean_income_2022 <- inner_join(uethda_county_mean_income_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_mean_income_2022 <- inner_join(uethda_tract_mean_income_2022,subject_table_variables_22, by = "variable")

named_uethda_school_mean_income_2022 <- inner_join(tn_school_districts_mean_income_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mean_income_2022 <- named_uethda_county_mean_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mean_income_2022 <- named_uethda_tract_mean_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mean_income_2022 <- named_uethda_school_mean_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mean_income_2022 <- cleaned_uethda_school_mean_income_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mean_income_2022 <- rbind(carter_county_mean_income_2022, elizabethton_mean_income_2022, greene_city_mean_income_2022, greene_cleaned_uethda_school_mean_income_2022,hancock_cleaned_uethda_school_mean_income_2022,hawkins_cleaned_uethda_school_mean_income_2022, 
                                         johnson_cleaned_uethda_school_mean_income_2022, kpt_city_mean_income_2022, bristol_city_mean_income_2022, sullivan_cleaned_uethda_school_mean_income_2022,unicoi_cleaned_uethda_school_mean_income_2022, jc_cleaned_uethda_school_mean_income_2022, 
                                         wash_co_cleaned_uethda_school_mean_income_2022)

uethda_schools_mean_income_2022


# 2021

# school districts
tn_school_districts_mean_income_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# carter 

Carter_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Carter_county_mean_income_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Greene_county_mean_income_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Hancock_county_mean_income_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Hawkins_county_mean_income_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Johnson_county_mean_income_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Sullivan_county_mean_income_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Unicoi_county_mean_income_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_mean_income_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

Washington_county_mean_income_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1902", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_mean_income_2021 <- rbind(Carter_county_mean_income_2021, Greene_county_mean_income_2021, Hancock_county_mean_income_2021, Hawkins_county_mean_income_2021, Johnson_county_mean_income_2021,
                                        Sullivan_county_mean_income_2021, Unicoi_county_mean_income_2021, Washington_county_mean_income_2021)

uethda_tract_mean_income_2021 <- rbind(Carter_tract_mean_income_2021, Greene_tract_mean_income_2021, Hancock_tract_mean_income_2021, Hawkins_tract_mean_income_2021,
                                       Johnson_tract_mean_income_2021, Sullivan_tract_mean_income_2021, Unicoi_tract_mean_income_2021, Washington_tract_mean_income_2021)

#join the names 

named_uethda_county_mean_income_2021 <- inner_join(uethda_county_mean_income_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_mean_income_2021 <- inner_join(uethda_tract_mean_income_2021,subject_table_variables_22, by = "variable")

named_uethda_school_mean_income_2021 <- inner_join(tn_school_districts_mean_income_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mean_income_2021 <- named_uethda_county_mean_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mean_income_2021 <- named_uethda_tract_mean_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mean_income_2021 <- named_uethda_school_mean_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mean_income_2021 <- cleaned_uethda_school_mean_income_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mean_income_2021 <- rbind(carter_county_mean_income_2021, elizabethton_mean_income_2021, greene_city_mean_income_2021, greene_cleaned_uethda_school_mean_income_2021,hancock_cleaned_uethda_school_mean_income_2021,hawkins_cleaned_uethda_school_mean_income_2021, 
                                         johnson_cleaned_uethda_school_mean_income_2021, kpt_city_mean_income_2021, bristol_city_mean_income_2021, sullivan_cleaned_uethda_school_mean_income_2021,unicoi_cleaned_uethda_school_mean_income_2021, jc_cleaned_uethda_school_mean_income_2021, 
                                         wash_co_cleaned_uethda_school_mean_income_2021)

uethda_schools_mean_income_2021

#S1901 - income in past 12 months
#### S1901 INCOME IN PAST 12 MONTHS ####
# 2022

# school districts
tn_school_districts_income_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# carter 

Carter_tract_income_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Carter_county_income_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_income_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Greene_county_income_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_income_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Hancock_county_income_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_income_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Hawkins_county_income_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_income_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Johnson_county_income_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_income_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Sullivan_county_income_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_income_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Unicoi_county_income_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_income_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

Washington_county_income_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1901", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_income_2022 <- rbind(Carter_county_income_2022, Greene_county_income_2022, Hancock_county_income_2022, Hawkins_county_income_2022, Johnson_county_income_2022,
                                   Sullivan_county_income_2022, Unicoi_county_income_2022, Washington_county_income_2022)

uethda_tract_income_2022 <- rbind(Carter_tract_income_2022, Greene_tract_income_2022, Hancock_tract_income_2022, Hawkins_tract_income_2022,
                                  Johnson_tract_income_2022, Sullivan_tract_income_2022, Unicoi_tract_income_2022, Washington_tract_income_2022)

#join the names 

named_uethda_county_income_2022 <- inner_join(uethda_county_income_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_income_2022 <- inner_join(uethda_tract_income_2022,subject_table_variables_22, by = "variable")

named_uethda_school_income_2022 <- inner_join(tn_school_districts_income_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_income_2022 <- named_uethda_county_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_income_2022 <- named_uethda_tract_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_income_2022 <- named_uethda_school_income_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_income_2022 <- cleaned_uethda_school_income_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_income_2022 <- rbind(carter_county_income_2022, elizabethton_income_2022, greene_city_income_2022, greene_cleaned_uethda_school_income_2022,hancock_cleaned_uethda_school_income_2022,hawkins_cleaned_uethda_school_income_2022, 
                                    johnson_cleaned_uethda_school_income_2022, kpt_city_income_2022, bristol_city_income_2022, sullivan_cleaned_uethda_school_income_2022,unicoi_cleaned_uethda_school_income_2022, jc_cleaned_uethda_school_income_2022, 
                                    wash_co_cleaned_uethda_school_income_2022)

uethda_schools_income_2022


# 2021

# school districts
tn_school_districts_income_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# carter 

Carter_tract_income_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Carter_county_income_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_income_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Greene_county_income_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_income_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Hancock_county_income_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_income_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Hawkins_county_income_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_income_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Johnson_county_income_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_income_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Sullivan_county_income_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_income_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Unicoi_county_income_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_income_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

Washington_county_income_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S1901", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_income_2021 <- rbind(Carter_county_income_2021, Greene_county_income_2021, Hancock_county_income_2021, Hawkins_county_income_2021, Johnson_county_income_2021,
                                   Sullivan_county_income_2021, Unicoi_county_income_2021, Washington_county_income_2021)

uethda_tract_income_2021 <- rbind(Carter_tract_income_2021, Greene_tract_income_2021, Hancock_tract_income_2021, Hawkins_tract_income_2021,
                                  Johnson_tract_income_2021, Sullivan_tract_income_2021, Unicoi_tract_income_2021, Washington_tract_income_2021)

#join the names 

named_uethda_county_income_2021 <- inner_join(uethda_county_income_2021, subject_table_variables_22, by = "variable")

named_uethda_tract_income_2021 <- inner_join(uethda_tract_income_2021,subject_table_variables_22, by = "variable")

named_uethda_school_income_2021 <- inner_join(tn_school_districts_income_2021, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_income_2021 <- named_uethda_county_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_income_2021 <- named_uethda_tract_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_income_2021 <- named_uethda_school_income_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_income_2021 <- cleaned_uethda_school_income_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_income_2021 <- rbind(carter_county_income_2021, elizabethton_income_2021, greene_city_income_2021, greene_cleaned_uethda_school_income_2021,hancock_cleaned_uethda_school_income_2021,hawkins_cleaned_uethda_school_income_2021, 
                                    johnson_cleaned_uethda_school_income_2021, kpt_city_income_2021, bristol_city_income_2021, sullivan_cleaned_uethda_school_income_2021,unicoi_cleaned_uethda_school_income_2021, jc_cleaned_uethda_school_income_2021, 
                                    wash_co_cleaned_uethda_school_income_2021)

uethda_schools_income_2021

######S0701 - geographic mobility ######

# 2022

# school districts
tn_school_districts_mobility_2022 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# carter 

Carter_tract_mobility_2022 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Carter_county_mobility_2022 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Greene 

Greene_tract_mobility_2022 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Greene_county_mobility_2022 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2022 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Hancock_county_mobility_2022 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2022 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Hawkins_county_mobility_2022 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2022 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Johnson_county_mobility_2022 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2022 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Sullivan_county_mobility_2022 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2022 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Unicoi_county_mobility_2022 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

# Washington 

Washington_tract_mobility_2022 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

Washington_county_mobility_2022 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2022, geometry = TRUE)

#bind the counties

uethda_county_mobility_2022 <- rbind(Carter_county_mobility_2022, Greene_county_mobility_2022, Hancock_county_mobility_2022, Hawkins_county_mobility_2022, Johnson_county_mobility_2022,
                                     Sullivan_county_mobility_2022, Unicoi_county_mobility_2022, Washington_county_mobility_2022)

uethda_tract_mobility_2022 <- rbind(Carter_tract_mobility_2022, Greene_tract_mobility_2022, Hancock_tract_mobility_2022, Hawkins_tract_mobility_2022,
                                    Johnson_tract_mobility_2022, Sullivan_tract_mobility_2022, Unicoi_tract_mobility_2022, Washington_tract_mobility_2022)

#join the names 

named_uethda_county_mobility_2022 <- inner_join(uethda_county_mobility_2022, subject_table_variables_22, by = "variable")

named_uethda_tract_mobility_2022 <- inner_join(uethda_tract_mobility_2022,subject_table_variables_22, by = "variable")

named_uethda_school_mobility_2022 <- inner_join(tn_school_districts_mobility_2022, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2022 <- named_uethda_county_mobility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2022 <- named_uethda_tract_mobility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2022 <- named_uethda_school_mobility_2022 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2022)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2022 <- cleaned_uethda_school_mobility_2022 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2022 <- rbind(carter_county_mobility_2022, elizabethton_mobility_2022, greene_city_mobility_2022, greene_cleaned_uethda_school_mobility_2022,hancock_cleaned_uethda_school_mobility_2022,hawkins_cleaned_uethda_school_mobility_2022, 
                                      johnson_cleaned_uethda_school_mobility_2022, kpt_city_mobility_2022, bristol_city_mobility_2022, sullivan_cleaned_uethda_school_mobility_2022,unicoi_cleaned_uethda_school_mobility_2022, jc_cleaned_uethda_school_mobility_2022, 
                                      wash_co_cleaned_uethda_school_mobility_2022)

uethda_schools_mobility_2022

######S0701 - geographic mobility ######

# 2021

# school districts
tn_school_districts_mobility_2021 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# carter 

Carter_tract_mobility_2021 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Carter_county_mobility_2021 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Greene 

Greene_tract_mobility_2021 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Greene_county_mobility_2021 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2021 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Hancock_county_mobility_2021 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2021 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Hawkins_county_mobility_2021 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2021 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Johnson_county_mobility_2021 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2021 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Sullivan_county_mobility_2021 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2021 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Unicoi_county_mobility_2021 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

# Washington 

Washington_tract_mobility_2021 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

Washington_county_mobility_2021 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2021, geometry = TRUE)

#bind the counties

uethda_county_mobility_2021 <- rbind(Carter_county_mobility_2021, Greene_county_mobility_2021, Hancock_county_mobility_2021, Hawkins_county_mobility_2021, Johnson_county_mobility_2021,
                                     Sullivan_county_mobility_2021, Unicoi_county_mobility_2021, Washington_county_mobility_2021)

uethda_tract_mobility_2021 <- rbind(Carter_tract_mobility_2021, Greene_tract_mobility_2021, Hancock_tract_mobility_2021, Hawkins_tract_mobility_2021,
                                    Johnson_tract_mobility_2021, Sullivan_tract_mobility_2021, Unicoi_tract_mobility_2021, Washington_tract_mobility_2021)

#join the names 

named_uethda_county_mobility_2021 <- inner_join(uethda_county_mobility_2021, subject_table_variables_21, by = "variable")

named_uethda_tract_mobility_2021 <- inner_join(uethda_tract_mobility_2021,subject_table_variables_21, by = "variable")

named_uethda_school_mobility_2021 <- inner_join(tn_school_districts_mobility_2021, subject_table_variables_21, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2021 <- named_uethda_county_mobility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2021 <- named_uethda_tract_mobility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2021 <- named_uethda_school_mobility_2021 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2021)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2021 <- cleaned_uethda_school_mobility_2021 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2021 <- rbind(carter_county_mobility_2021, elizabethton_mobility_2021, greene_city_mobility_2021, greene_cleaned_uethda_school_mobility_2021,hancock_cleaned_uethda_school_mobility_2021,hawkins_cleaned_uethda_school_mobility_2021, 
                                      johnson_cleaned_uethda_school_mobility_2021, kpt_city_mobility_2021, bristol_city_mobility_2021, sullivan_cleaned_uethda_school_mobility_2021,unicoi_cleaned_uethda_school_mobility_2021, jc_cleaned_uethda_school_mobility_2021, 
                                      wash_co_cleaned_uethda_school_mobility_2021)

uethda_schools_mobility_2021

# 2020

# school districts
tn_school_districts_mobility_2020 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# carter 

Carter_tract_mobility_2020 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Carter_county_mobility_2020 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Greene 

Greene_tract_mobility_2020 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Greene_county_mobility_2020 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2020 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Hancock_county_mobility_2020 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2020 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Hawkins_county_mobility_2020 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2020 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Johnson_county_mobility_2020 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2020 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Sullivan_county_mobility_2020 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2020 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Unicoi_county_mobility_2020 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

# Washington 

Washington_tract_mobility_2020 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

Washington_county_mobility_2020 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2020, geometry = TRUE)

#bind the counties

uethda_county_mobility_2020 <- rbind(Carter_county_mobility_2020, Greene_county_mobility_2020, Hancock_county_mobility_2020, Hawkins_county_mobility_2020, Johnson_county_mobility_2020,
                                     Sullivan_county_mobility_2020, Unicoi_county_mobility_2020, Washington_county_mobility_2020)

uethda_tract_mobility_2020 <- rbind(Carter_tract_mobility_2020, Greene_tract_mobility_2020, Hancock_tract_mobility_2020, Hawkins_tract_mobility_2020,
                                    Johnson_tract_mobility_2020, Sullivan_tract_mobility_2020, Unicoi_tract_mobility_2020, Washington_tract_mobility_2020)

#join the names 

named_uethda_county_mobility_2020 <- inner_join(uethda_county_mobility_2020, subject_table_variables_22, by = "variable")

named_uethda_tract_mobility_2020 <- inner_join(uethda_tract_mobility_2020,subject_table_variables_22, by = "variable")

named_uethda_school_mobility_2020 <- inner_join(tn_school_districts_mobility_2020, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2020 <- named_uethda_county_mobility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2020 <- named_uethda_tract_mobility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2020 <- named_uethda_school_mobility_2020 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2020)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2020 <- cleaned_uethda_school_mobility_2020 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2020 <- rbind(carter_county_mobility_2020, elizabethton_mobility_2020, greene_city_mobility_2020, greene_cleaned_uethda_school_mobility_2020,hancock_cleaned_uethda_school_mobility_2020,hawkins_cleaned_uethda_school_mobility_2020, 
                                      johnson_cleaned_uethda_school_mobility_2020, kpt_city_mobility_2020, bristol_city_mobility_2020, sullivan_cleaned_uethda_school_mobility_2020,unicoi_cleaned_uethda_school_mobility_2020, jc_cleaned_uethda_school_mobility_2020, 
                                      wash_co_cleaned_uethda_school_mobility_2020)

uethda_schools_mobility_2020



# 2019

# school districts
tn_school_districts_mobility_2019 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# carter 

Carter_tract_mobility_2019 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Carter_county_mobility_2019 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Greene 

Greene_tract_mobility_2019 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Greene_county_mobility_2019 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2019 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Hancock_county_mobility_2019 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2019 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Hawkins_county_mobility_2019 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2019 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Johnson_county_mobility_2019 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2019 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Sullivan_county_mobility_2019 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2019 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Unicoi_county_mobility_2019 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

# Washington 

Washington_tract_mobility_2019 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

Washington_county_mobility_2019 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2019, geometry = TRUE)

#bind the counties

uethda_county_mobility_2019 <- rbind(Carter_county_mobility_2019, Greene_county_mobility_2019, Hancock_county_mobility_2019, Hawkins_county_mobility_2019, Johnson_county_mobility_2019,
                                     Sullivan_county_mobility_2019, Unicoi_county_mobility_2019, Washington_county_mobility_2019)

uethda_tract_mobility_2019 <- rbind(Carter_tract_mobility_2019, Greene_tract_mobility_2019, Hancock_tract_mobility_2019, Hawkins_tract_mobility_2019,
                                    Johnson_tract_mobility_2019, Sullivan_tract_mobility_2019, Unicoi_tract_mobility_2019, Washington_tract_mobility_2019)

#join the names 

named_uethda_county_mobility_2019 <- inner_join(uethda_county_mobility_2019, subject_table_variables_22, by = "variable")

named_uethda_tract_mobility_2019 <- inner_join(uethda_tract_mobility_2019,subject_table_variables_22, by = "variable")

named_uethda_school_mobility_2019 <- inner_join(tn_school_districts_mobility_2019, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2019 <- named_uethda_county_mobility_2019 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2019 <- named_uethda_tract_mobility_2019 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2019 <- named_uethda_school_mobility_2019 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2019)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2019 <- cleaned_uethda_school_mobility_2019 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2019 <- rbind(carter_county_mobility_2019, elizabethton_mobility_2019, greene_city_mobility_2019, greene_cleaned_uethda_school_mobility_2019,hancock_cleaned_uethda_school_mobility_2019,hawkins_cleaned_uethda_school_mobility_2019, 
                                      johnson_cleaned_uethda_school_mobility_2019, kpt_city_mobility_2019, bristol_city_mobility_2019, sullivan_cleaned_uethda_school_mobility_2019,unicoi_cleaned_uethda_school_mobility_2019, jc_cleaned_uethda_school_mobility_2019, 
                                      wash_co_cleaned_uethda_school_mobility_2019)

uethda_schools_mobility_2019



# 2018

# school districts
tn_school_districts_mobility_2018 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# carter 

Carter_tract_mobility_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Carter_county_mobility_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Greene 

Greene_tract_mobility_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Greene_county_mobility_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Hancock_county_mobility_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Hawkins_county_mobility_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Johnson_county_mobility_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Sullivan_county_mobility_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Unicoi_county_mobility_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

# Washington 

Washington_tract_mobility_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

Washington_county_mobility_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2018, geometry = TRUE)

#bind the counties

uethda_county_mobility_2018 <- rbind(Carter_county_mobility_2018, Greene_county_mobility_2018, Hancock_county_mobility_2018, Hawkins_county_mobility_2018, Johnson_county_mobility_2018,
                                     Sullivan_county_mobility_2018, Unicoi_county_mobility_2018, Washington_county_mobility_2018)

uethda_tract_mobility_2018 <- rbind(Carter_tract_mobility_2018, Greene_tract_mobility_2018, Hancock_tract_mobility_2018, Hawkins_tract_mobility_2018,
                                    Johnson_tract_mobility_2018, Sullivan_tract_mobility_2018, Unicoi_tract_mobility_2018, Washington_tract_mobility_2018)

#join the names 

named_uethda_county_mobility_2018 <- inner_join(uethda_county_mobility_2018, subject_table_variables_22, by = "variable")

named_uethda_tract_mobility_2018 <- inner_join(uethda_tract_mobility_2018,subject_table_variables_22, by = "variable")

named_uethda_school_mobility_2018 <- inner_join(tn_school_districts_mobility_2018, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2018 <- named_uethda_county_mobility_2018 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2018 <- named_uethda_tract_mobility_2018 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2018 <- named_uethda_school_mobility_2018 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2018)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2018 <- cleaned_uethda_school_mobility_2018 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2018 <- rbind(carter_county_mobility_2018, elizabethton_mobility_2018, greene_city_mobility_2018, greene_cleaned_uethda_school_mobility_2018,hancock_cleaned_uethda_school_mobility_2018,hawkins_cleaned_uethda_school_mobility_2018, 
                                      johnson_cleaned_uethda_school_mobility_2018, kpt_city_mobility_2018, bristol_city_mobility_2018, sullivan_cleaned_uethda_school_mobility_2018,unicoi_cleaned_uethda_school_mobility_2018, jc_cleaned_uethda_school_mobility_2018, 
                                      wash_co_cleaned_uethda_school_mobility_2018)

uethda_schools_mobility_2018



# 2017

# school districts
tn_school_districts_mobility_2017 <- get_acs(geography = "school district (unified)", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# carter 

Carter_tract_mobility_2017 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Carter_county_mobility_2017 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Greene 

Greene_tract_mobility_2017 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Greene_county_mobility_2017 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Hancock 

Hancock_tract_mobility_2017 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Hancock_county_mobility_2017 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Hawkins 

Hawkins_tract_mobility_2017 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Hawkins_county_mobility_2017 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Johnson 

Johnson_tract_mobility_2017 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Johnson_county_mobility_2017 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Sullivan 

Sullivan_tract_mobility_2017 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Sullivan_county_mobility_2017 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Unicoi 

Unicoi_tract_mobility_2017 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Unicoi_county_mobility_2017 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

# Washington 

Washington_tract_mobility_2017 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

Washington_county_mobility_2017 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "S0701", year = 2017, geometry = TRUE)

#bind the counties

uethda_county_mobility_2017 <- rbind(Carter_county_mobility_2017, Greene_county_mobility_2017, Hancock_county_mobility_2017, Hawkins_county_mobility_2017, Johnson_county_mobility_2017,
                                     Sullivan_county_mobility_2017, Unicoi_county_mobility_2017, Washington_county_mobility_2017)

uethda_tract_mobility_2017 <- rbind(Carter_tract_mobility_2017, Greene_tract_mobility_2017, Hancock_tract_mobility_2017, Hawkins_tract_mobility_2017,
                                    Johnson_tract_mobility_2017, Sullivan_tract_mobility_2017, Unicoi_tract_mobility_2017, Washington_tract_mobility_2017)

#join the names 

named_uethda_county_mobility_2017 <- inner_join(uethda_county_mobility_2017, subject_table_variables_22, by = "variable")

named_uethda_tract_mobility_2017 <- inner_join(uethda_tract_mobility_2017,subject_table_variables_22, by = "variable")

named_uethda_school_mobility_2017 <- inner_join(tn_school_districts_mobility_2017, subject_table_variables_22, by = "variable")

# clean the names 

cleaned_uethda_county_mobility_2017 <- named_uethda_county_mobility_2017 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_tract_mobility_2017 <- named_uethda_tract_mobility_2017 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

cleaned_uethda_school_mobility_2017 <- named_uethda_school_mobility_2017 %>%
  select(NAME, variable,estimate, moe, label, geometry)%>%
  mutate(Year = 2017)%>%
  rename("Location" = "NAME", "Estimate" = "estimate", "MOE" = "moe",  "Variable" = "variable")

carter_county_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Carter County"))

elizabethton_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Elizabethton"))

greene_city_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Greeneville City"))

greene_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Greene County"))

hancock_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Hancock"))

hawkins_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Hawkins"))

johnson_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Johnson"))

kpt_city_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Kingsport"))

bristol_city_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Bristol"))

sullivan_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Sullivan"))

unicoi_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Unicoi"))

jc_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Johnson City"))

wash_co_cleaned_uethda_school_mobility_2017 <- cleaned_uethda_school_mobility_2017 %>%
  filter(str_detect(Location, "Washington County"))

uethda_schools_mobility_2017 <- rbind(carter_county_mobility_2017, elizabethton_mobility_2017, greene_city_mobility_2017, greene_cleaned_uethda_school_mobility_2017,hancock_cleaned_uethda_school_mobility_2017,hawkins_cleaned_uethda_school_mobility_2017, 
                                      johnson_cleaned_uethda_school_mobility_2017, kpt_city_mobility_2017, bristol_city_mobility_2017, sullivan_cleaned_uethda_school_mobility_2017,unicoi_cleaned_uethda_school_mobility_2017, jc_cleaned_uethda_school_mobility_2017, 
                                      wash_co_cleaned_uethda_school_mobility_2017)

uethda_schools_mobility_2017

## bind all the years together ##
uethda_tract_mobility <- rbind(cleaned_uethda_tract_mobility_2022, cleaned_uethda_tract_mobility_2021,cleaned_uethda_tract_mobility_2020, cleaned_uethda_tract_mobility_2019, 
                               cleaned_uethda_tract_mobility_2018, cleaned_uethda_tract_mobility_2017)

uethda_county_mobility  <- rbind(cleaned_uethda_county_mobility_2022, cleaned_uethda_county_mobility_2021,cleaned_uethda_county_mobility_2020, cleaned_uethda_county_mobility_2019, 
                                 cleaned_uethda_county_mobility_2018, cleaned_uethda_county_mobility_2017)

uethda_schools_mobility <- rbind(uethda_schools_mobility_2022, uethda_schools_mobility_2021,uethda_schools_mobility_2020, uethda_schools_mobility_2019, uethda_schools_mobility_2018, 
                                 uethda_schools_mobility_2017)
