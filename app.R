#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(readxl)
exp <- read_excel("data/titleswide.xlsx")
data <- read_excel("data/data.xlsx")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("IOPHD Conduit"),

    # Sidebar with drop down menu for job titles
    sidebarLayout(
        sidebarPanel(
            helpText("Find the experience needed for the workforce through the program"),
            
            varSelectInput("title", 
                        label = "Select an Job Title:",
                        exp
                        )
        ),

        # show the title selected
        mainPanel(
           textOutput("selected_var")
        ),
        #Show a table of the qualifications and where in the 
        #program you can get the experience
            #tableOutput("exper"),
        #show a table for where in the program you can get the 
        #experience
            #plotOutput("program")
    )
)

# Define server logic required to output the exp and program features
server <- function(input, output) {

    output$selected_var <- renderText({paste("You selected:", 
                    input$title)
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
