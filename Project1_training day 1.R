1+1
4/8
x <- 1 + 1
x 
y <- 4
y
x + y

# Hashtags are comments

#define objetcs using words
"dog"
pet <- "dog"
dog
pet

# define vectors
my.vec <- 1:5 #running numbers one to five
my.vec

# accessing vectors using the []
my.vec[4]

my.vec2 <- c(3, 2, 8, 4) # C is to combine. 
my.vec2
my.vec2[3] # means that we're looking for the third number in the series which is 8
my.vec2[1] # means that we're loooking for the first number in the series which is 3

# vectors can also hold a set of words
my.words <- c("freya", "river", "max")
my.words
my.words[3] # accessing vectors in the middle

#adding vectors together
#if there was a two big vectors of data it would hep derive a standard deviation
my.numbers1 <- 2:7
my.numbers2 <- 4:9
my.numbers1 + my.numbers2 # what happened was (2+4=6);(3+5=8);(4+6=10)
# the number of parts of the vectors don't need to be the same
my.numbers1 + 2 #adding 2 to everything
my.numbers1 + c(1, 2) #my numbers were two,three,four,five,six, seven..thus six numbers.
#how do you add two numbers (1, 2) to those six numbers
#R does what we call "Vector Recycling" it's gonna add 1 and 2 (2+1=3);(3+2=5);(4+1=5);(5+2=7);(6+1=7)(7+2=9)

#when I want just two of the names instead of all three
my.words[c(1, 3)]
my.words[-2]

#we can tell R that is code that it shouldn't process or a line so we use the hashtag to make comments that won't be run

#matrices; are arrays of numbers that have two dimensions. Data set
my.matrix <- matrix(1:9, nrow =3, ncol = 3) #define a matrix. To create a 3 by 3 
my.matrix

my.matrix[2] # access second part of matrix
my.matrix[8]
my.matrix[3, 2] #access row 3 column 2
my.matrix[c(1, 2), 2] #rows 1 and 2, column 2
my.matrix[2, 1:3] # row 2 every column 
matrix[2, ] # blank column means every column
matrix[,2]
my.matrix[,-3] #every row, not column 3

#data frames (more like excel) with words and numbers
my.df <- data.frame(pets = c("freya", "river", "max"),
                    ages = c(5, 4, 3),
                    species = c("mouse","cat", "cat"))
my.df
my.df[1, 3]
my.df$species #give me the species column by name!
my.df$ages + my.matrix[,2] #add vectors here just like with simple vectors (5+4=9);(5+4=9);(3+6=9)

#special vector types (object classes)
my.logical <- c(TRUE, FALSE, FALSE, TRUE) #logical vectors, only trues and falses

#logical subsetting and operators
my.df$species == "cat" # == asks if they are identical, are these pets cats?
my.df[c(2,3),] #only cats!
my.df[2:3,]
my.df[c(FALSE, TRUE, TRUE),] #only the rows where the vector is TRUE
my.logical2 <- my.df$species == "cat" #save the results from above as a vector
my.df[my.logical2,] #subset by the logical vector

#put this all together
my.df[my.df$species == "cat"] #what we did above, in one line

#another subsetting example
my.df[my.df$ages > 3,] #rows where the pet is older than 3

#importing data into R: using R studio (select link in console, copy)
day_1_monarch_example <- read.delim("~/R/day_1_monarch_example.txt")
day_1_monarch_example$Treatment

#importing data yourself:
day_1_monarch_example <- read.table("C:\Users\T.Dlamini\OneDrive - sanbi.org.za\Documents\R\day_1_monarch_example.text")
