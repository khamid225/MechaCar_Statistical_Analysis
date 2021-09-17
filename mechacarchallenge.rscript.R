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
