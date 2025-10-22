ggplot(df2, aes(x = Estimate)) +  
  # Density plot 
  geom_density(fill = "blue", alpha = 0.25) + 
  # Boxplot 
  geom_boxplot(width = 0.005, outliers = FALSE, col = "darkblue") +  
  # Plot points with vertical jittering 
  geom_jitter(aes(y = -0.005), height = 0.001, size = .75) + 
  # H0 value line 
  geom_vline(xintercept = mytest$null.value, linetype = 2, col = "red") + 
  # Add confidence interval 
  annotate("pointrange", y = .005, x = mytest$estimate,  
           xmin = mytest$conf.int[1], xmax = mytest$conf.int[2]) + 
  # Add p-value 
  annotate("text", x = mytest$estimate, y = 0.01,  
           label = paste0("p = ", signif(mytest$p.value, 2))) + 
  # Add text annotation 
  annotate("text", x = mytest$null.value + 1, y = 0.05, label = "mu[0]", parse = TRUE) +
  theme_minimal() +
  ylab("Density")
