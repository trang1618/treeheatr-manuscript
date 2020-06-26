library(treeheatr)
library(tidyverse)

selected_train <- train_covid %>%
  select(
    LDH = 'Lactate dehydrogenase',
    hs_CRP = 'High sensitivity C-reactive protein',
    Lymphocyte = '(%)lymphocyte',
    Outcome = Type2
  ) %>%
  na.omit()

p <- heat_tree(
  data = selected_train,
  target_lab = 'Outcome',
  label_map = c(`0` = 'Survived', `1` = 'Deceased'),
  target_cols = c('#798234', '#d46780'),
  cont_legend = TRUE
)

ggsave(filename = '../content/images/covid.png',
       p,
       height = 3.5,
       width = 7)

# pdf('../content/images/covid.pdf', height = 3.5, width = 7)
# p
# dev.off()
#
# setEPS(height = 3.5, width = 7)
# postscript('../content/images/covid.eps')
# p
# dev.off()
