library(ggplot2)
library(scales)
library(gganimate)

kk_data<-as.data.frame(kk_Trend)

ggplot(kk_data, aes(AVG_Google_Trends, AVG_Kantar_Spend, color=Brand)) +
  geom_point(size=1.75)+scale_y_continuous(labels = dollar)+labs(x = "Average Google Trend",y="Average Kantar Spend")


p <- ggplot(kk_data, aes(AVG_Google_Trends, AVG_Kantar_Spend, color=Brand)) +
  geom_point(size=5)+scale_y_continuous(labels = dollar)+labs(x = "Average Google Trend",y="Average Kantar Spend") +
  transition_time(Month) +
  shadow_mark(size = 1)

animate(p,nframes = 320)


anim_save(filename="animation3.gif", p)
