
library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "dashboard Header"),
  dashboardSidebar(),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    fluidRow(
      box(sliderInput("bins","Number of bins:",
                      min = 1,
                      max = 100,
                      value = 35), 
          plotOutput("plot1", height = 250)
      ),
      box(
        title = "Controls Revised by Andy",
        sliderInput("slider", "# of obs.", 1, 100, 50)
      )
    )
  )
)

# shinyUI(fluidPage(
# 
#   # Application title
#   titlePanel("hey hey hey Andy!!"),
#   
#   # Sidebar with a slider input for number of bins 
#   sidebarLayout(
#     sidebarPanel(
#        sliderInput("bins",
#                    "Number of bins:",
#                    min = 1,
#                    max = 100,
#                    value = 12)
#     ),
#     
#     # Show a plot of the generated distribution
#     mainPanel(
#        plotOutput("distPlot")
#     )
#   )
# ))
