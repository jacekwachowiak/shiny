library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("Title"),
  sidebarPanel(
  p("Create sth that resembles the example"),
  
  selectInput("select", h5(strong("Choose a var")), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1),

  sliderInput("My slider", strong("Range"),
                       min = 0, max = 100, value = c(0, 100))
  )
)



# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
