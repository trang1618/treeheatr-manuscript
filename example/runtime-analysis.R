
library(pmlblite)
library(tidyverse)
library(directlabels)
library(hrbrthemes)
library(treeheatr)

set.seed(1618)
# remotes::install_github('trang1618/treeheatr')
waveform <- pmlblite::fetch_data('waveform-40')
n_obs_vec <- c(100, 500, seq(1000, 5000, 1000))
df_times <- data.frame()
for (n_obs in n_obs_vec) {
  df_time <- system.time(waveform %>%
                           sample_n(n_obs) %>%
                           heat_tree(target_lab = 'target'))
  df_times <- rbind(df_times, df_time)
}
colnames(df_times) <- names(df_time)


time_obs_fig <- df_times %>%
  `colnames<-`(names(df_time)) %>%
  mutate(n_obs = n_obs_vec) %>%
  pivot_longer(cols = c('user.self', 'elapsed')) %>%
  mutate(name = fct_recode(name,
                           '   User time' = 'user.self',
                           '   Elapsed time' = 'elapsed')) %>%
  ggplot(aes(x = n_obs, y = value, color = name, group = name)) +
  geom_line() +
  geom_point() +
  scale_color_ipsum() +
  theme_ipsum_rc() +
  coord_cartesian(xlim = c(0, 6000)) +
  labs(x = 'Number of observations', y = 'Run time (s)') +
  theme(legend.position = 'None') +
  geom_dl(aes(label = name), method=list("last.points", cex = 0.7, fontfamily = 'Roboto Condensed' )) +
  NULL


n_reps <- 10
n_feats_vec <- seq(10, 40, 10)
df_time_fts_ft <- data.frame()
for (n_feats in n_feats_vec) {
  df_time_ft <- system.time(replicate(
    n_reps,
    waveform[, c(1:n_feats, 41)] %>%
      sample_n(1000) %>%
      heat_tree(target_lab = 'target')
  ))
  df_time_fts_ft <- rbind(df_time_fts_ft, df_time_ft)
}


time_fts_fig <- df_time_fts_ft %>%
  `colnames<-`(names(df_time_ft)) %>%
  mutate(n_feats = n_feats_vec) %>%
  pivot_longer(cols = c('user.self', 'elapsed')) %>%
  mutate(name = fct_recode(name, '   User time' = 'user.self', '   Elapsed time' = 'elapsed'),
         value = value/n_reps) %>%
  ggplot(aes(x = n_feats, y = value, color = name, group = name)) +
  geom_line() +
  geom_point() +
  scale_color_ipsum() +
  coord_cartesian(xlim = c(10, 47), ylim = c(0, NA)) +
  labs(x = 'Number of features', y = 'Run time (s)') +
  geom_dl(aes(label = name), method=list("last.points", cex = 0.7, fontfamily = 'Roboto Condensed' )) +
  theme_ipsum_rc() +
  theme(legend.position = 'None') +
  NULL

ggsave(filename = 'runtime.png', 
       cowplot::plot_grid(time_obs_fig, time_fts_fig),
       width = 9, height = 3.5)

# ggsave(filename = 'runtime.svg', 
#        cowplot::plot_grid(time_obs_fig, time_fts_fig))
