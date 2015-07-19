fluidPage( 
  tags$a(href="help.html", "Application Help!"), 
  titlePanel("Word Cloud : Obama's speech"),   
   img(src = "State-of-the-Union-590x359.png",height = 150, width = 290),
  sidebarLayout(
    sidebarPanel(
      selectInput("selection", "Choose a Year:",
                  choices = speech),
      actionButton("update", "Change"),
      hr(),
      sliderInput("freq",
                  "Minimum Frequency:",
                  min = 5,  max = 50, value = 50),
      sliderInput("max",
                  "Maximum Number of Words:",
                  min = 3,  max = 50,  value = 50)
    ),

    mainPanel(
      plotOutput("plot")
    )
  )
)