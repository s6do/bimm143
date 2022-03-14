#Cars dataset
cars

# install.packages(ggplot2)
library(ggplot2)
ggplot(cars) + aes(speed, dist, main= "ggplot cars") + 
  geom_point() +
  labs(title= "Simple ggplot Cars")
graph1 <- ggplot(cars) + 
  aes(speed, dist, main="ggplot cars") +
  geom_point() + 
  geom_smooth() +
  labs(title = "Distance vs Speed") + 
  theme_bw() + 
  xlab("Speed(mph)") + 
  ylab("Distance (ft)") 
graph1

#RNASeq experiment dataset

#Read data into R
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
table(genes$State)
round(table(genes["State"])/nrow(genes)*100,2)

#Plot dataset 
library(ggplot2)
ggplot(genes) + aes(Condition1, Condition2, color=State) +
  geom_point() + 
  labs(title="Gene Expression Data") + 
  xlab("Drug") + 
  ylab("No Drug") +
  scale_colour_manual( values=c("blue","gray","red") )

#Population Dataset
#install.packages("gapminder")
#install.packages("dplyr")
library(gapminder)
library(dplyr)

gapminder_top5 <- gapminder %>% filter( year == 2007) %>%
  arrange(desc(pop)) %>% top_n(5, pop)
gapminder_top5
library(ggplot2)
ggplot(gapminder_top5) + 
  geom_col(aes(x = country, y = pop, fill=continent)) +
  labs(title="Top 5 Countries With Highest Population 2007") +
  xlab("Country") + ylab("Population")

