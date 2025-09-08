url = "https://docenti.unicatt.it/ppd2/it/docenti/35215/giuseppe-arbia/didattica"

url %>% 
  read_html() %>% 
  html_elements(css = ".cards .content")

library(timesaveR)
cal_demo_data("month") %>% 
  to_tribble(show = T)


sbd_cal =  tibble::tribble(
  ~calendarId, ~title,          ~body,                      ~recurrenceRule, ~start,                 ~end,                   ~category, ~location,            ~bgColor,   ~color,     ~borderColor, 
  1,           "SBD monday",        "Go to sport every week",   "Every week",    "2022-09-19 17:00:00",  "2022-09-19 19:00:00",  "time",    "aula 230",                 NA,       NA,       NA,        
  1,           "SBD thursday",      "Go to sport every week",   "Every week",    "2022-09-23 14:00:00",  "2022-09-12 17:00:00",  "time",    "aula 102",                 NA,       NA,       NA,        
  1,           "Sport",         "Go to sport every week",   "Every week",    "2022-09-19 20:00:00",  "2022-09-19 22:00:00",  "time",    NA,                 NA,       NA,       NA,        
  1,           "Week-end",      "Week-end with friends",    NA,            "2022-09-10",           "2022-09-11",           "allday",  NA,                 NA,       NA,       NA,        
  2,           "Project 1",     "Coding cool stuff",        NA,            "2022-09-05",           "2022-09-06",           "allday",  NA,                 "#5E81AC",  "white",    "#5E81AC",   
  2,           "Project 2",     "Coding cool stuff",        NA,            "2022-09-06",           "2022-09-09",           "allday",  NA,                 "#5E81AC",  "white",    "#5E81AC",   
  2,           "Project 3",     "Coding cool stuff",        NA,            "2022-09-29",           "2022-09-29",           "allday",  NA,                 "#5E81AC",  "white",    "#5E81AC"
)


calendar(sbd_cal, navigation = TRUE, defaultDate = Sys.Date()) %>%
  cal_month_options(
    startDayOfWeek  = 1, 
    narrowWeekend = TRUE
  ) %>% 
  cal_props(cal_demo_props())
