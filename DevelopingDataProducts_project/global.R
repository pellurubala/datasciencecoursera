library(tm)
library(wordcloud)
library(memoise)


speech <<- list("2015" = "2015",
               "2014" = "2014",
              "2013" = "2013",
               "2012" = "2012",
			    "2011" = "2011",
				 "2010" = "2010",
				  "2009" = "2009"	  )


getTermMatrix <- memoise(function(speech) {
  if (!(speech %in% speech))
    stop("Unknown speech")

  text <- readLines(sprintf("./%s.txt", speech),
    encoding="UTF-8")

  myCorpus = Corpus(VectorSource(text))
  myCorpus = tm_map(myCorpus, content_transformer(tolower))
  myCorpus = tm_map(myCorpus, removePunctuation)
  myCorpus = tm_map(myCorpus, removeNumbers)
  myCorpus = tm_map(myCorpus, removeWords,
         c(stopwords("SMART"), "applause", "american", "america", "americans", "country", "year","years","tonight","congress","make"))

  myDTM = TermDocumentMatrix(myCorpus,
              control = list(minWordLength = 1))
  
  m = as.matrix(myDTM)
  
  sort(rowSums(m), decreasing = TRUE)
})