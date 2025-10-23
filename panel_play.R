




# 3. Plot with arrows

ggplot(arrow_df, aes(x = bps_name_wrapped)) +
  geom_segment(aes(xend = bps_name_wrapped, y = total_acres, yend = natural_acres),
               arrow = arrow(angle = 30, length = unit(0.2, "cm")),
               size = 1, color = "black") +
  geom_point(aes(y = total_acres), color = "#b3b1a6", size = 3) +
  geom_point(aes(y = natural_acres), color = "#8da69e", size = 3) +
  coord_flip() +
  facet_wrap(~ fire, ncol = 3, scales = "free_y") +
  labs(title = "Change in Annual Acres Burned per Ecosystem",
       subtitle = "Arrows show reduction when agricultural and developed areas are removed",
       x = NULL, y = "Acres") +
  scale_y_continuous(labels = scales::comma) +
  theme_minimal(base_size = 14)


arrow_panel_chart
