# installing Packages
install.packages(c("tidyverse", "car", "emmeans", "effectsize", "performance", "broom", "kableExtra"))
library(tidyverse)

# Importing the dataset
d <- read.csv("cropdata.csv")

# Quick Exploratory Descriptive Analysis
summs <- d %>%
  group_by(fert, irr) %>%
  summarise(mean = mean(y), se = sd(y)/sqrt(n()), .groups = "drop")

# Quick Data Summary Visualization
library(ggplot2)
ggplot(summs, aes(irr, mean, group = fert))+
  geom_line() +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width = .2)+
  facet_wrap(~fert, nrow = 1) +
  labs(x="Irrigation", y="Mean yield",
       title="Interaction of Fertilizer x Irrigation") +
  theme_classic(base_size = 12)

#Fit the model
m <- aov (y ~ fert + irr + fert * irr , data = d) 
summary(m)

# Assumptions visual checks
par(mfrow=c(2,2))
plot(m)
par(mfrow=c(1,1))

# Shapiro-wilk on residuals (normality)
res <- residuals(m)
shapiro.test(res)

#Levene's test for equal variances
library(car)
leveneTest(y ~ fert*irr, data = d, center = median)

# interaction contrasts (simple effects):
# effect of fert at each level of irr
library(emmeans)
contrast(emmeans(m, ~ fert | irr), method = "pairwise", adjust ="tukey")

# effect of irr at each level of fer
library(emmeans)
contrast(emmeans(m, ~ fert | irr), method = "pairwise", adjust ="tukey")
print()

# Publication-ready ANOVA table
library(broom)
library(kableExtra)
install.packages("systemfonts")
install.packages("textshaping")


aov_tab <- Anova(m, type = 3) %>%
  tidy() %>%
  mutate(p.value = signif(p.value, 3))
print(aov_tab)

kbl(aov_tab, digits = 3, caption = "Two-way ANOVA") %>%
  kable_classic(full_width = FALSE, html_font = "Times New Roman")


