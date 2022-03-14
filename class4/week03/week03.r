# Hands-on Sheet
5+3
5-3
5*3
5/3
x <- 3*4
#i_use_snake_case
#other.people.use.periods
#evenOthersUseCamelCase

this_is_a_really_long_name <-  2.5

r_rocks <- 2^3

# functionName(arg1 = val1, arg2 = val2, and so on)
seq(1,10)
help(seq)
seq(1,10, by=2)
example(seq)

date()

help(log)
?log
example(log)

length(3.1)
x <- c(56, 95.3, 0.4)
x
y <- c(3.2, 1.1, 0.2)
y

x+y
x-y
x/y
sqrt(x)
round(sqrt(x), 3)
log(x)/2 + 1 

x <- c(56, 95.3, 0.4)
x[2]
x[1]
x[4]
x[3] <- 0.5
x

sessionInfo()

# Lab walk-through
x <- 1:5
x
x <- 1:50
x
x <- 1:5
x
x+50
x+100
x+ c(100, 1, 1, 1, 100)
x + c(100, 1)
x + c(100, 1, 100, 1, 100)

y <-  c("alice", "jim", "chandra", "elisa")
y
paste(y, "loves R")

z <-  c(TRUE, FALSE, TRUE, TRUE)
z
z + 5
c(1, 0, 1, 1) + 5
c(T, F, T, T) + 5

grades <- c(alice = 10, jim = 6, chandra = 7, elisa = 9)
grades
mean(grades)
sum(grades)
sort(grades)
sort(grades, decreasing = TRUE)
which.min(grades)
grades
grades < 8
which.max(grades)
grades
silly <-  c("jim", "alice", 4, 10)
silly
df <-  data.frame(nums=1:5, chars = letters[1:5])
df 
df$nums
df$chars
mean(df$nums)
sum(df$nums)
x
x[3]
df[,2]
df[3,2]
df[3,]
View(df)
rm(df)

#Plot
x <- 1:50
x
plot(x, sin(x), typ="l", col="blue", lwd = 2)
