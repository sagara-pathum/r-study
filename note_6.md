### Entering Data

many methos to enter data. 

ex : colon, seq, c, scan ,rep

//use 'seq'

?seq

x3 <- seq(10) //1:10

x4 <- seq(30,0,by=-3) //thirty to 0 by -3 steps

//for arbitrary entry use concatanate

x5 <- c(5,6,8,1,2,5,9,7)

** scan
//for entering data alive

x6 <- scan() // now enter numbers in console //when done double enter

//for entering repeat use 'rep'

x7 <- rep(TRUE,5)

// repeat more than one value

x8 <- rep(c(TRUE,FALSE),5)

// further you can repeat each of the value repeat seperately

x9 <- rep(c(TURE,FALSE), each = 5)


####################################################
IMPORT DATA
####################################################

type of data files : csv,txt xlsx(xl spreadsheet version),json

for those we need 'rio' from 'pacman'

pacman::p_load(rio)

rio_csv <- import("<path>")
head(rio_csv)

//lets go for data viewer

?View
View(rio_csv)


//if you want by default libraries it also can. just look that too

r_txt1 >- read.table("<path>", header =TRUE) //we need to give true value to header then the r gives variable names

//but above method do not work with spaces.

//so tha we need to specify the separator
r_txt2 <- read.table("<path>", header =TRUE, sep="\t")



//you can do it for csv too by default command // no need fo seperator declaration

trend.csv <- read.scv("<path>",header = TRUE)


