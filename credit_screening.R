##GETTING AND CLEANING DATA
#Load data
url="http://archive.ics.uci.edu/ml/machine-learning-databases/credit-screening/crx.data"
data <- read.csv(url)
#Explore data
str(data)
View(data)
names(data)
#Rename variables name
names(data) <- c("Male", "Age", "Debt", "Married", "BankCustomer", "EducationLevel", "Ethnicity", "YearsEmployed", "PriorDefault", "Employed", "CreditScore", "DriversLicense", "Citizen", "Zipcode", "Income", "Approved")
#Check for missing values
is.na(data)
sum(is.na(data))
sum(is.na(data))
sum(is.na(data$male))
#Check for missing values == "?"
data[data == "?"]
#Convert missing values into NA for ease identification
data[data == "?"] <- NA
#Checke for missing values again, 67 found
is.na(data)
sum(is.na(data))
#Omit obsevartions with NA values
a <- na.omit(data)
is.na(a)
data <- na.omit(data)
#Converted variables type
data$Male <- ifelse(data$Male=="a", 1,0)
data$Age <- as.character(data$Age)
data$Married <- as.character(data$Married)
data$BankCustomer <- as.character(data$BankCustomer)
data$EducationLevel <- as.character(data$EducationLevel)
data$Ethnicity <- as.character(data$Ethnicity)
data$PriorDefault <- ifelse(data$PriorDefault=="t", 1,0)
data$Employed <- ifelse(data$Employed=="t", 1,0)
data$DriversLicense <- ifelse(data$DriversLicense=="t", 1,0)
data$Citizen <- as.character(data$Citizen)
data$CreditScore <- as.numeric(data$CreditScore)
data$Zipcode <- as.character(data$Zipcode)
data$DriversLicense <- ifelse(data$DriversLicense==1, "t","f")
data$Income <- as.numeric(data$Income)
data$Approved <- ifelse(data$Approved=="+",1,0)