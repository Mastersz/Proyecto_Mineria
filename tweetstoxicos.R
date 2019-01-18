tuits = read.csv("Toxic tweets dataset-annotator2.csv")
head(tuits)
str(tuits)
names(tuits)
tweets <- tuits
tweets$conversation_deep <- as.numeric(tweets$conversation_deep)
tweets$toxic <- as.numeric(tweets$toxic)
tweets$severe_toxic <- as.numeric(tweets$severe_toxic)
tweets$obscene <- as.numeric(tweets$obscene)
tweets$threat <- as.numeric(tweets$threat)
tweets$identity_hate <- as.numeric(tweets$identity_hate)
tweets$insult <- as.numeric(tweets$insult)
str(tweets)
tweets$categ <- ""
categ <- function(x){
  if(x$toxic == 1){
    retorno <- paste(x$categ, 'toxic', sep = ", ")
    }
  if(x$severe_toxic == 1){
    retorno <- paste(x$categ, 'severe_toxic', sep = ", ")
  }
  if(x$obscene == 1){
    retorno <- paste(x$categ, 'obscene', sep = ", ")
  }
  if(x$threat == 1){
    retorno <- paste(x$categ, 'threat', sep = ", ")
  }
  if(x$identity_hate == 1){
    retorno <- paste(x$categ, 'identity_hate', sep = ", ")
  }
  if(x$insult == 1){
    retorno <- paste(x$categ, 'insult', sep = ", ")
  }
  else
    retorno <- 'no tóxico'
  return(retorno)
}
tweets$categ <- lapply(tweets$categ,categ)
