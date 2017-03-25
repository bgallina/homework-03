####Functions:
###5. Feladat

##3.)

get_gender <- function(name) {
  v = (match(name, comic_characters$name))
  gender = (if (is.na(comic_characters$gsm[v]) == TRUE) {
    print(sapply((strsplit(comic_characters$sex[v], " ", 
                           fixed = T)), "[",1) )
    
  } else {
    print(sapply((strsplit(comic_characters$gsm[v], " ", 
                           fixed = T)), "[",1))
    
  })
  
}