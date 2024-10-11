library(shiny)

# Define UI ----
ui <- page_sidebar(title = "censusVis",
                   sidebar = sidebar(
                     helpText("Create demographic maps with information from the 2010 US Census."),
                     
                     selectInput(
                       "variable",
                       label = "Choos
e a variable to display:",
                       choices = list (
                         "Percent White" = 1,
                         "Percent Black" = 2,
                         "Percent Hispanic" = 3,
                         "Percent Asian" = 4
                       )
                     ),
                     sliderInput(
                       "slider",
                       "Range of interest:",
                       min = 0,
                       max = 100,
                       value =
                         c(25)
                     )
                   ),)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)