library(ggplot2)
library(png) 
library(gifski)
library(gganimate)
library(scales)



p <- ggplot(kk_data, aes(AVG_Google_Trends, AVG_Kantar_Spend, color=Brand)) +
  geom_point(size=1.75)+scale_y_continuous(labels = dollar)+labs(x = "Average Google Trend",y="Average Kantar Spend") +
  transition_time(Month) +
  shadow_mark()

animate(p,nframes = 320)


anim_save(filename="animation2.gif", p)
