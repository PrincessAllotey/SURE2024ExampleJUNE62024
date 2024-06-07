print("Hello World")
print("Yes")

library(reshape2)
library(plotly)

p <- ggplot(tips, aes(x=total_bill, y=tip/total_bill)) + geom_point(shape=1)

# Divide by day, going horizontally and wrapping with 2 columns
p <- p + facet_wrap( ~ day, ncol=2)

fig <- ggplotly(p)

fig
