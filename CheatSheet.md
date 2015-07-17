#  Putting the R in Sports - Cheat Sheet  #

ERA Example

```
era = c(2.21,3.50,2.52,2.87,2.90)
era

median(era)
mean(era)
max(era)
min(era)

summary(era)
```

Top Ten Pitchers Example

```
bb = read.csv("bb.csv")
bb

mean(bb$era)
mean(bb$strikeout)

p1 = bb$era
names(p1) = bb$name
par(las=2)
barplot(p1)
```

Stadard Deviation Example

```
abc = c(6.5,6.6,6.7,6.8,7.1,7.3,7.4,7.7,7.7,7.7)
abc

xyx = c(4.2,5.4,5.8,6.2,6.7,7.7,7.7,8.5,9.3,10.0)
xyz

summary(abc)

summary(xyz)

sd(abc)

sd(xyz)
```

Adding Abline's to the Plot

```
era.mean = mean(p1)
era.mean

era.sd = sd(p1)
era.sd

abline(h = era.mean)
abline(h = era.mean + era.sd)
abline(h = era.mean - era.sd)
```
Top 5 Hitters all time
(need to get a copy of the laham database)

```
Batting = read.csv("Batting.csv")

Ruth = subset(Batting, playerID == "ruthba01")
Mays = subset(Batting, playerID == "mayswi01")
Aaron = subset(Batting, playerID == "aaronha01")
Jeter = subset(Batting, playerID == "jeterde01")
Arod = subset(Batting, playerID == "rodrial01")

summary(Ruth$H)
summary(Mays$H)
summary(Aaron$H)
summary(Jeter$H)
summary(Arod$H)
```
Same Example with more than 300 At Bats

```
Ruth.300 = subset(Ruth, AB >= 300) 
Mays.300 = subset(Mays, AB >= 300)
Aaron.300 = subset(Aaron, AB >= 300)
Jeter.300 = subset(Jeter, AB >= 300)
Arod.300 = subset(Arod, AB >= 300)

summary(Ruth.300$H)
summary(Mays.300$H)
summary(Aaron.300$H)
summary(Jeter.300$H)
summary(Arod.30d$H)
```

Calculate OBP's

```
Ruth.300 = subset(Ruth, (H + BB + HBP) / (AB + BB + HBP)) 
Mays.300 = subset(Mays, (H + BB + HBP) / (AB + BB + HBP + SF)))
Aaron.300 = subset(Aaron, (H + BB + HBP) / (AB + BB + HBP + SF)) 
Jeter.300 = subset(Jeter, (H + BB + HBP) / (AB + BB + HBP + SF)) 
Arod.300 = subset(Arod, (H + BB + HBP) / (AB + BB + HBP + SF)) )

summary(Ruth.300$OBP)
summary(Mays.300$OBP)
summary(Aaron.300$OBP)
summary(Jeter.300$OBP)
summary(Arod.30d$OBP)
```

