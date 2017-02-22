#reading from HTML
# task: How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page:
cat("\014")
con= url ("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)

close(con)

nchar(htmlCode[10])
nchar(htmlCode[20])
nchar(htmlCode[30])
nchar(htmlCode[100])