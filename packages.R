packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf",
              "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
              "directlabels", "officer", "flextable", "zoo", "directlabels",
              "fmsb", "readxl", "wordcloud", "tm", "treemapify", "layer", "extrafont",
              "ggfittext", "ggrepel", "tmap", "ggthemes", "blscrapeR", "zipcodeR",
              "brms", "ggridges", "shinystan", "bayesplot", "tidybayes",
              "ggmcmc", "forecast", "tseries", "parsnip", "DALEX", "config","DataExplorer",
              "skimr", "recipes", "yardstick", "iBreakDown", "tidyquant",
              "leaflet", "plotly", "crosstalk", "DT", "realEstAnalytics", "ZillowR")




lapply(packages, library, character.only = TRUE)


install.packages("layer")

install.packages("rtools")

#### load color scheme ####

#### color vectors ####

UETHDA_Colors <- c(`orange` = "#ff5100", 
                   `dark grey` = "#808285",
                   `black` = "#000000",
                   `white` = "#ffffff",
                   `dark blue` = "#0b5394",
                   `light grey` = "#cccccc",
                   `cyan` = "00ffff")

uethda_cols <- function(...){
  cols <- c(...)
  
  if(is.null(cols))
    return(UETHDA_Colors)
  
  UETHDA_Colors[cols]
}

UETHDA_palettes <- list(
  `main` = uethda_cols("orange", "dark grey", "black"),
  
  `cool` = uethda_cols("orange", "cyan", "dark blue")
)

uethda_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- UETHDA_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
}


scale_color_uethda <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- uethda_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", paste0("uethda_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_fill_uethda <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- uethda_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("uethda_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

#### function for tables ####

table_function <- function(data_frame, caption) {
  #use back ticks for caption to print correctly
  caption<- enquo(caption)
  
  table <- data_frame %>%
    kbl(caption = as_label(caption))%>%
    kable_classic(full_width = FALSE, html_font = "Calibri")%>%
    row_spec(0, font_size=12)%>%
    kable_styling(font_size = 12) %>%
    gsub("font-size: initial !important;", 
         "font-size: 150% !important;", 
         .)
  
  return(table)
}
#### function to remove after comma ####

remove_after_comma_function <- function(string){
  gsub(",.*","",string) 
}

remove_after_space_function <- function(string){
  gsub(" .*","",string) 
}

replace_semicolon_function <- function(string){
  gsub(";.8", ",", string)
}

#### ggplot map function for tracts  ####
tract_map_function_orange <- function(outline, data, fill, label){
  ggplot()+
    geom_sf(data = {{outline}})+
    geom_sf(data = {{data}}, aes(fill = {{fill}}))+
    geom_sf_label(data = {{data}}, aes(label = {{fill}}))+
    labs(y = " ", x = " ")+
    theme_map()+
    theme(plot.title = element_text(size=rel(2.25)))+
    theme(plot.title = element_text(face = "bold"))+
    scale_fill_distiller(palette = "Oranges")+
    theme(text = element_text("Calibri"))+
    ggtitle({{label}})
}

tract_map_function_blues <- function(outline, data, fill, label){
  ggplot()+
    geom_sf(data = {{outline}})+
    geom_sf(data = {{data}}, aes(fill = {{fill}}))+
    geom_sf_label(data = {{data}}, aes(label = {{fill}}))+
    labs(y = " ", x = " ")+
    theme_map()+
    theme(plot.title = element_text(size=rel(2.25)))+
    theme(plot.title = element_text(face = "bold"))+
    scale_fill_distiller(palette = "Blues")+
    theme(text = element_text("Calibri"))+
    ggtitle({{label}})
}



tract_map_function_set3 <- function(outline, data, fill, label){
  ggplot()+
    geom_sf(data = {{outline}})+
    geom_sf(data = {{data}}, aes(fill = {{fill}}))+
    geom_sf_label(data = {{data}}, aes(label = {{fill}}))+
    labs(y = " ", x = " ")+
    theme_map()+
    theme(plot.title = element_text(size=rel(2.25)))+
    theme(plot.title = element_text(face = "bold"))+
    scale_fill_distiller(palette = "Set3")+
    theme(text = element_text("Calibri"))+
    ggtitle({{label}})
}

tract_map_function_green <- function(outline, data, fill, label){
  ggplot()+
    geom_sf(data = {{outline}})+
    geom_sf(data = {{data}}, aes(fill = {{fill}}))+
    geom_sf_label(data = {{data}}, aes(label = {{fill}}))+
    labs(y = " ", x = " ")+
    theme_map()+
    theme(plot.title = element_text(size=rel(2.25)))+
    theme(plot.title = element_text(face = "bold"))+
    scale_fill_distiller(palette = "Greens")+
    theme(text = element_text("Calibri"))+
    ggtitle({{label}})
}

tract_map_function <- function(outline, data, fill, label){
  ggplot()+
    geom_sf(data = {{outline}})+
    geom_sf(data = {{data}}, aes(fill = {{fill}}))+
    geom_sf_label(data = {{data}}, aes(label = {{fill}}))+
    labs(y = " ", x = " ")+
    theme_map()+
    theme(plot.title = element_text(size=rel(2.25)))+
    theme(plot.title = element_text(face = "bold"))+
    theme(text = element_text("Calibri"))+
    ggtitle({{label}})
}



location_factors_for_graph <- c("United States", "Tennessee", "Carter County", "Greene County", "Hancock County", "Hawkins County", "Johnson County", "Sullivan County", "Unicoi County", "Washington County")

county_location_factors_for_graph <- c("Carter County", "Greene County", "Hancock County", "Hawkins County", "Johnson County", "Sullivan County", "Unicoi County", "Washington County")

ztcas = c(37445, 37463, 37565, 37569, 37587, 37600, 37601, 37602, 37604, 37605, 37608, 37609,
          37610, 37611, 37614, 37615, 37616, 37617, 37618, 37620, 37621, 37640, 37641, 37642, 37643, 37644, 37645, 37647, 37650, 37653, 37656, 37657, 37658, 37659,
          37660, 37662, 37663, 37664, 37665, 37680, 37681, 37682, 37683, 37686, 37687, 37688, 37689, 37690, 37691, 37692, 37694, 37695, 37711, 37731, 37743, 37744,
          37745, 37760, 37765, 37809, 37810, 37811, 37814, 37816, 37818, 37837, 37841, 37857, 37861, 37863, 37867, 37868, 37869, 37871, 37873, 37875, 37879, 37881,
          37883, 37887, 37891, 37897, 37920, 38709, 38757) 

ztcas_char <- as.character(ztcas)




