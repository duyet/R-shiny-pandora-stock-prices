shinyUI(fluidPage(
  headerPanel("Pandora Stock Prices"),
  
  sidebarPanel(
    
    selectInput(inputId = "chart_type",
                label = "Chart type",
                choices = c("Candlestick" = "candlesticks",
                            "Matchstick" = "matchsticks",
                            "Bar" = "bars",
                            "Line" = "line")
    ),
    
    dateRangeInput(inputId = "daterange", label = "Date range",
                   start = Sys.Date() - 365, end = Sys.Date()),
    
    checkboxInput(inputId = "log_y", label = "log y axis", value = FALSE)
  ),
  
  mainPanel(
    
    plotOutput(outputId = "plot_pandora")
  )
))