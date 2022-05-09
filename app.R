#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("IOPHD Conduit"),

    # Sidebar with drop down menu for job titles
    sidebarLayout(
        sidebarPanel(
            selectInput("select", h3("Select an Job Title:"),
                choices = list("Human Resources Manager" = 1,
                        "Workforce Insights Analyst" = 2,
                        "Business Development Consultant" = 3,
                        "Organizational Effectiveness Manager" = 4,
                        "Psycometrician" = 5)
                        )
        ),

        # Show a table of the qualifications and where in the program you can get the experience
        mainPanel(
           tableOutput("selected_var")
        ),
        
        #show a table for where in the program you can get the experience
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$selected_var <- renderText({paste("selected", input$var)
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
