library(treeheatr)
library(tidyverse)

diabetes <- read_csv('diabetes.csv') %>% 
  rename('Diabetes status' = Outcome)

heat_tree(
  data = diabetes,
  target_lab = 'Diabetes status',
  label_map = c(`0` = 'Negative', `1` = 'Positive'),
  target_cols = NULL
) %>% 
  ggsave(filename = '../content/images/diabetes.png', .,
         height = 3.5, width = 7)