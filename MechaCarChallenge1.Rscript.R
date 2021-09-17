#Deliverable 1
library(dplyr)
#Use the library() function to load dplyr package 
library(readr)
#Use library to load readr package 
MechaCar_mpg <- read_csv("C:/Users/khalidfallous/Downloads/MechaCar_mpg.csv")  
#Import and read in the MechaCar_mpg.csv file as a dataframe
View(MechaCar_mpg)
summary(MechaCar_mpg)
#Now running linear regression model
car1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(car1)
#length and ground clearance significant at the .05 sig level. R-squared is .7149

#Deliverable 2
Suspension_Coil <- read_csv("C:/Users/khalidfallous/Downloads/Suspension_Coil.csv")
View(Suspension_Coil)
s<-summarise(Suspension_Coil, Mean = mean(PSI), Median= median(PSI), Variance = var(PSI), SD=sd(PSI))
s
s1<-group_by(Suspension_Coil, Manufacturing_Lot)
s2<-summarise(s1, Mean = mean(PSI), Median= median(PSI), Variance = var(PSI), SD=sd(PSI))
s2

#Deliverable 3
l1<-subset(Suspension_Coil, Manufacturing_Lot=='Lot1')
l2<-subset(Suspension_Coil, Manufacturing_Lot=='Lot2')
l3<-subset(Suspension_Coil, Manufacturing_Lot=='Lot3')
t.test(Suspension_Coil$PSI, mu = 1500, data=Suspension_Coil)
t.test(l1$PSI, mu = 1500)
t.test(l2$PSI, mu = 1500)
t.test(l3$PSI, mu = 1500)



