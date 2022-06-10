install.packages("gtrendsR")
library(gtrendsR)
library(ggplot2)

data = gtrends(keyword = "Searches")
data = data$interest_over_time

data

ggplot(data, aes(x=date, y=value)) + geom_line(aes(x = date, y = hits), color="blue") +
  labs(x="Year", y="Hits") +
  ggtitle("Total Google Search for Machine") + theme(plot.title = element_text(hjust = 0.5))