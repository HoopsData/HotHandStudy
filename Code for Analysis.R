library(ggplot2)
#Load Df
df <- read.csv("FadeawayData.csv", header = TRUE)
#Do test
t.test(df$X3.Makes.in.A.Row.In.the.Normal.Dataset, df$X3.Makes.in.A.Row.In.the.Shuffled.Dataset,
         paired = TRUE, alternative = "greater")
#Do some plotting
ggplot(df, aes(x= df$X3.Makes.in.A.Row.In.the.Normal.Dataset, y= df$X3.Makes.in.A.Row.In.the.Shuffled.Dataset)) + 
  geom_point()+
  xlab("No. of Times There Were 3 Makes In A Row in the Normal Dataset")+
  ylab("No. of Times There Were 3 Makes In A Row in the Shuffled Dataset")+
  ggtitle("Fade-Away Data")
