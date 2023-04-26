authors<-data.frame(
  name=c("Kapil","Sachin","Rahul","Nikhil","Rohan"),
  nationality=c("US","AUSTRALIA","US","UK","INDIA"),
  retired=c("yes","no","yes","yes","no")
)

books<-data.frame(
  name=c("c","c++","java","php",".net","R"),
  title=c("intro to c","intro to c++","intro to java","intro to php"
          ,"intro to .net","intro to R"),
  author=c("Kapil","Kapil","Sachin","Rahul","Nikhil","Nikhil")
)

books
data=merge(authors,books,by.x="name",by.y="author")
print(data)
