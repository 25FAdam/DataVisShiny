library(shiny)
library(bslib)

# Define UI ----
ui <- page_sidebar(
  title = "title panel",
  sidebar = sidebar("Shiny is available on CRAN, so you can install it in the usual way from your R console:",
  code('install.packages("shiny")'),
  ),
  card(
    card_header("This is the title!"),
    "Shiny is a package from Posit that makes it incredibly easy to build interactive web applications with R. For an introduction and live examples, visit the Shiny homepage (https://shiny.posit.co).",
    value_box(
      title = "EMPTY",
      value="Placeholder for PIC!"),
    card_footer("Shiny is a product of Posit.")
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)