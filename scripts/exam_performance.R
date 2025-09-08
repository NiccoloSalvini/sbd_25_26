## grades analysis

library(tidyverse)
library(tidyr)
library(ggplot2)
library(scales)
library(ucscthemes)
library(janitor)
library(googledrive)

## get data from google cloud storage or S3
grades_20_21 = drive_find("grades_20-21.csv")
grades_20_21  =  grades_20_21 %>% 
  drive_read_string() %>% 
  read_csv(show_col_types = F) %>% 
  select(-...19, -...20, -...21) %>% 
  clean_names() %>% 
  rename(
    exam_full_22_june_2021 = exam_22nd_june_2021_final_punti_totali_30_punteggio_515564 ,
    exam_mid_term_first = first_intermediate_exam_new_version_punti_totali_30_punteggio_479896 ,
    exam_mid_term_second = second_intermediate_exam_punti_totali_30_punteggio_488003 ,
    exam_intermediate_avg = average_of_the_two_intermediate_exams_punti_totali_fino_a_30_punteggio_488243,
    exam_full_7_january_2022 = full_exam_7_gennaio_punti_totali_30_punteggio_493156 ,
    exam_full_22_january_2022 = full_exam_22_january_punti_totali_30_punteggio_495060 ,
    exam_mid_term_recov = exam_22_january_part_iii_only_punti_totali_30_punteggio_495061 ,
    exam_mid_term_final = exam_22_january_ev_punti_totali_30_punteggio_495133 ,
    exam_mid_term_third = part_iii_7gennaio_punti_totali_30_punteggio_493157 ,
    exam_full_17_february_2022 = exam_17_february_punti_totali_30_punteggio_500445 ,
    exam_full_9_september_2021 = exam_9_sept_2021_punti_totali_30_punteggio_572500
  ) %>% 
  select(-exam_mid_term_final)


grades_20_21 %>% view()
grades_20_21 %>% glimpse()

## voto medio
grades_20_21 %>% 
  mutate(across(where(is.numeric), ~.x/100)) %>%  view

case_pres_ass <- function(col) {
  case_when(
    is.na(col) ~ "no",
    TRUE ~ "yes"
  )
}


## count presenti assenti per appello
grades_20_21 %>% 
  mutate(across(where(is.numeric), ~case_pres_ass(.x), .names = "pres_ass_{col}")) %>%
  select(-starts_with("exam")) %>%
  pivot_longer(
    cols = starts_with("pres_ass"),
    names_to = "exam",
    values_to = "yes_no"
  ) %>% 
  count(exam, yes_no) %>% 
  group_by(exam) %>% 
  filter(!(exam %in% c("pres_ass_final_grade_after_the_three_intermediate_exams_punti_totali_30_punteggio_493671","pres_ass_id_studente", "pres_ass_exam_intermediate_avg"))) %>% 
  mutate(
    prop = n / sum(n),
    exam = fct_recode(exam,
                      "17 Feb 2022" = "pres_ass_exam_full_17_february_2022",
                      "22 Jan 2022" =  "pres_ass_exam_full_22_january_2022",
                      "22 Jun 2022" = "pres_ass_exam_full_22_june_2021",
                      "7 Jan 2022"  = "pres_ass_exam_full_7_january_2022",
                      "9 Sept 2022"= "pres_ass_exam_full_9_september_2021",
                      "1st mid term" = "pres_ass_exam_mid_term_first",
                      "2nd mid term" = "pres_ass_exam_mid_term_second",
                      "3rd mid term" = "pres_ass_exam_mid_term_third",
                      "recover third mid term" = "pres_ass_exam_mid_term_recov"
    )) %>% 
  ggplot(aes(x = n, y = fct_reorder(exam, prop, min), fill = yes_no)) +
  geom_col() +
  labs(
    x = "",
    y = ""
  ) +
  labs(
    title = "How many students take the exam?",
    y = "session",
    x = "# of people"
  ) +
  theme_ucsc()+
  theme(
    legend.title = element_blank()
  )

ggsave(filename = "images/per_20-21.png")

grades_20_21 %>% 
  pivot_longer(
    cols = starts_with("exam"),
    names_to = "exam",
    values_to = "mark"
  ) %>% 
  group_by(exam) %>% 
  summarise(
    mean_mark = mean(mark, na.rm = T)/100
  ) %>% 
  mutate(
    exam = fct_recode(exam,
                      "17 Feb 2022" = "exam_full_17_february_2022",
                      "22 Jan 2022" =  "exam_full_22_january_2022",
                      "22 Jun 2022" = "exam_full_22_june_2021",
                      "7 Jan 2022"  = "exam_full_7_january_2022",
                      "9 Sept 2022"= "exam_full_9_september_2021",
                      "1st mid term" = "exam_mid_term_first",
                      "2nd mid term" = "exam_mid_term_second",
                      "3rd mid term" = "exam_mid_term_third",
                      "recover third mid term" = "exam_mid_term_recov"
    )
  ) %>% 
  filter(exam != "exam_intermediate_avg" ) %>% 
  ggplot(aes(x =mean_mark ,y = fct_reorder(exam, mean_mark), fill  = exam)) +
    geom_col() + 
    labs(
      title  = "Mean Grade across exam sessions",
      y = "exam session",
      x = "mean grade"
      ) +
  geom_label(aes(26.8, 3), label = "mean mids: 26.8", show.legend = FALSE,inherit.aes = F, nudge_x = -2.5 )+
  geom_vline(xintercept = 26.8, linetype="dashed", size=1) +
  theme_ucsc()+
  scale_fill_ucsc("bluewhite", reverse = T)+
  theme(legend.position="none") 
  

ggsave("images/perf_mg_20-21.png")

## mean of means of mid terms # 26.8
grades_20_21 %>% 
  pivot_longer(
    cols = starts_with("exam"),
    names_to = "exam",
    values_to = "mark"
  ) %>% 
    group_by(exam) %>% 
    summarise(
      mean_mark = mean(mark, na.rm = T)/100
    ) %>% 
    filter(exam %in% c("exam_mid_term_first", "exam_mid_term_second", "exam_mid_term_third")) %>% 
    summarise(mean_of_mids = mean(mean_mark))


##  vlp guardare
##  a) il ratio presenti/assenti check
##  b) il voto medio per sessione check
##  c) mid-term/ vs full exam (test means) check from before


## share resource throgh amazon S3










  
