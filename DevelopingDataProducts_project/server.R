function(input, output, session) {  
  terms <- reactive({    
    input$update    
    isolate({
      withProgress({
        setProgress(message = "Processing ...")
        getTermMatrix(input$selection)
      })
    })
  })
  
  wordcloud_rep <- repeatable(wordcloud)
  output$plot <- renderPlot({
    v <- terms()
    wordcloud_rep(names(v), v, scale=c(4,0.5),
                  min.freq = input$freq, max.words=input$max,
                  colors=brewer.pal(6, "Set1"))
  })
}