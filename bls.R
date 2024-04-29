#### bls stuff ####

set_bls_key('8015a2fa8c3b42f2b6e73a1bb924a831', overwrite = TRUE)

sullivan_county_ids <- search_ids(keyword = c("Sullivan County", "Tn"))

sullivan_ids <- sullivan_county_ids %>%
  select(series_id)

sullivan_string_ids <- sullivan_ids$series_id

sullivan_bls_time_series_2016_2024 <- bls_api(c(sullivan_string_ids), startyear = 2016, endyear = 2024, Sys.getenv("BLS_KEY"))%>%
  dateCast()

#### need to rename series ID ####

sullivan_county_ids_renamed <- sullivan_county_ids %>%
  rename("seriesID" = series_id)

named_sullivan_bls_time_series_2016_2024 <- left_join(sullivan_bls_time_series_2016_2024, sullivan_county_ids_renamed, by = "seriesID")

View(named_sullivan_bls_time_series_2016_2024)



#### kingsport 

kingsport_ids <- search_ids(keyword = c("Kingsport", "Tn"))

kingsport_ids <- kingsport_ids %>%
  select(series_id)

kingsport_string_ids <- kingsport_ids$series_id

kingsport_bls_time_series_2016_2022 <- bls_api(c(kingsport_string_ids), startyear = 2016, endyear = 2022, Sys.getenv("BLS_KEY"))%>%
  dateCast()

kingsport_bls_time_series_2016_2022

#### need to rename series ID ####

kingsport_ids_renamed <- kingsport_ids %>%
  rename("seriesID" = series_id)

named_kingsport_bls_time_series_2016_2022 <- left_join(kingsport_bls_time_series_2016_2022, kingsport_ids_renamed, by = "seriesID")

(named_kingsport_bls_time_series_2016_2022)

#### bls area ####

carter_bls_qcew <- blsQCEW('area', year='2016', quarter='1', area='47019')


#### series IDs ####

# need fips codes 

# carter #	047019
# greene #047059
# hancock #	047067
# hawkins #	047073
# Johnson #	047091
# sullivan #	047163
#unicoi #047171
#washington #	047179
#kingsport #47-39560
#johnson city #4738320
#bristol #4708540

#unemployment rate == "LAUCN 03
#unemployment "LAUCN 04
#employment "LAUCN 05
#labor force #LAUCN 06



test <- bls_api(c(unemployment_bls_id), startyear = 2016, endyear = 2024, Sys.getenv("BLS_KEY"))%>%
  dateCast()

# bristol 
bristol_bls_ids <- search_ids(keyword = c("Bristol", "Tn"))

bristol_bls_ids

bristol_bls_series_ids <- c("LAUCT470854000000003", "LAUCT470854000000004",
                            "LAUCT470854000000005", "LAUCT470854000000006")

# carter
carter_bls_ids <- search_ids(keyword = c("Carter County", "Tn"))

carter_bls_ids

carter_bls_series_ids <- c("LAUCN470190000000003", "LAUCN470190000000004", 
                           "LAUCN470190000000005", "LAUCN470190000000006")

# greene 


greene_bls_ids <- search_ids(keyword = c("Greene County", "Tn"))

greene_bls_ids 

greene_bls_series_ids <- c("LAUCN470590000000003", )


unemployment_rate_ids_to_filter <- c("LAUCN470190000000003", "LAUCN470590000000003", "LAUCN470670000000003",
                                     "LAUCN470730000000003", "LAUCN470910000000003", "LAUCN471630000000003", "LAUCN471710000000003",
                                     "LAUCN471790000000003", "LAUCT473956000000003", "LAUCT473832000000003", "LAUCT470854000000003")


unemployment_ids_to_filter <- c("LAUCN470190000000004", "LAUCN470590000000004", "LAUCN470670000000004",
                                "LAUCN470730000000004", "LAUCN470910000000004", "LAUCN471630000000004", "LAUCN471710000000004",
                                "LAUCN471790000000004", "LAUCT473956000000004", "LAUCT473832000000004", "LAUCT470854000000004")

employment_ids_to_filter <- c( "LAUCN470190000000005", "LAUCN470590000000005", "LAUCN470670000000005",
                               "LAUCN470730000000005", "LAUCN470910000000005", "LAUCN471630000000005", "LAUCN471710000000005",
                               "LAUCN471790000000005", "LAUCT473956000000005", "LAUCT473832000000005", "LAUCT470854000000005")

labor_force_ids_to_filter <- c( "LAUCN470190000000006", "LAUCN470590000000006", "LAUCN470670000000006",
                                "LAUCN470730000000006", "LAUCN470910000000006", "LAUCN471630000000006", "LAUCN471710000000006",
                                "LAUCN471790000000006", "LAUCT473956000000006", "LAUCT473832000000006", "LAUCT470854000000006")

Location <- c("Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Unicoi", "Washington", "Bristol", "Kingsport", "Johnson City")

ids_location <- cbind(Location, unemployment_rate_ids_to_filter, unemployment_ids_to_filter, employment_ids_to_filter, labor_force_ids_to_filter)

ids_location_df <- as.data.frame(ids_location)

uethda_unemp_rate_time_series_2016_2023 <- bls_api(c(ids_location_df$unemployment_rate_ids_to_filter), startyear = 2016, endyear = 2024)%>%
  dateCast()

unemp_rate_location <- ids_location_df %>%
  select(Location, unemployment_rate_ids_to_filter)%>%
  rename("seriesID" = unemployment_rate_ids_to_filter)

names(ids_location_df)

named_unemployment_rate <- left_join(uethda_unemp_rate_time_series_2016_2023, unemp_rate_location , by = c("seriesID"))%>%
  mutate(Type = "Unemployment Rate")

uethda_unemployment_time_series_2016_2024 <- bls_api(c(ids_location_df$unemployment_ids_to_filter), startyear = 2016, endyear = 2024)%>%
  dateCast()

named_unemployment <- left_join(uethda_unemployment_time_series_2016_2024, ids_location_df %>%
                                  select(Location, unemployment_ids_to_filter), by = c("seriesID" = "unemployment_ids_to_filter"))%>%
  mutate(Type = "Unemployed Persons")

uethda_employed_time_series_2016_2024 <- bls_api(c(ids_location_df$employment_ids_to_filter), startyear = 2016, endyear = 2024)%>%
  dateCast()

named_employment <- left_join(uethda_employed_time_series_2016_2024, ids_location_df %>%
                                select(Location, employment_ids_to_filter), by = c("seriesID" = "employment_ids_to_filter"))%>%
  mutate(Type = "Employed Persons")

uethda_labor_force_time_series_2016_2024 <- bls_api(c(ids_location_df$labor_force_ids_to_filter), startyear = 2016, endyear = 2024)%>%
  dateCast()

named_labor_force <- left_join(uethda_labor_force_time_series_2016_2024, ids_location_df %>%
                                 select(Location, labor_force_ids_to_filter), by = c("seriesID" = "labor_force_ids_to_filter"))%>%
  mutate(Type = "Labor Force")

View(named_unemployment_rate)

named_unemployment_rate %>%
  mutate(latest = as.logical(latest))%>%
  mutate(Last = case_when(latest == TRUE ~ value))%>%
  ggplot(aes(x = date, y = value, group = Location, color = Location))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = Last), method = list(dl.combine("last.points")), cex = 0.8)+
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
  ggtitle("Unemployement Rate from 2016 to January 2024")

named_unemployment%>%
  mutate(latest = as.logical(latest))%>%
  mutate(Last = case_when(latest == TRUE ~ value))%>%
  ggplot(aes(x = date, y = value, group = Location, color = Location))+
  geom_line()+
  facet_wrap(~Location, scales = "free_y")+
  geom_dl(aes(label = Last), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  scale_x_date(limits = c(as.Date("2016-01-01"), as.Date("2024-07-01")))+
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
  ggtitle("Unemployed People from 2016 to January 2024")

named_employment %>%
  mutate(latest = as.logical(latest))%>%
  mutate(Last = case_when(latest == TRUE ~ value))%>%
  ggplot(aes(x = date, y = value, group = Location, color = Location))+
  geom_line()+
  facet_wrap(~Location, scales = "free_y")+
  geom_dl(aes(label = Last), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  scale_x_date(limits = c(as.Date("2016-01-01"), as.Date("2024-08-01")))+
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
  ggtitle("Employed People from 2016 to January 2024")

named_labor_force %>%
  mutate(latest = as.logical(latest))%>%
  mutate(Last = case_when(latest == TRUE ~ value))%>%
  ggplot(aes(x = date, y = value, group = Location, color = Location))+
  geom_line()+
  facet_wrap(~Location, scales = "free_y")+
  geom_dl(aes(label = Last), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  scale_x_date(limits = c(as.Date("2016-01-01"), as.Date("2024-08-01")))+
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
  ggtitle("Labor Force from 2016 to January 2024")


named_labor_force %>%
  mutate(latest = as.logical(latest))%>%
  mutate(Last = case_when(latest == TRUE ~ value))%>%
  ggplot(aes(x = date, y = value, group = Location, color = Location))+
  geom_line()+
  facet_wrap(~Location)+
  geom_dl(aes(label = Last), method = list(dl.combine("last.points")), cex = 0.8)+
  theme(text = element_text("Calibri"))+
  labs(y = " ", x = " ")+
  scale_x_date(limits = c(as.Date("2016-01-01"), as.Date("2024-08-01")))+
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
  ggtitle("Labor Force from 2016 to January 2024")

#### 
search_ids(keyword = c("Labor Force Demographics", "Tn"))


#### bls qcew area ####

# carter #	047019
# greene #047059
# hancock #	047067
# hawkins #	047073
# Johnson #	047091
# sullivan #	047163
#unicoi #047171
#washington #	047179
#kingsport #47-39560
#johnson city #4738320
#bristol #4708540
carter_bls_qcew_2016 <- blsQCEW('area', year='2016', quarter='1', area='47019')
