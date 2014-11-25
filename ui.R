library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Predict Your Car's MPG"),
    sidebarPanel(
        checkboxGroupInput("am","Transmission Type",c('Automatic ("0")'=0,'Manual ("1")'=1)),
        numericInput('wt','Weight 1000lb (min=1,max=6,step=0.5)',0,min=1,max=6,step=0.5),
        numericInput('qsec','Acceleration Speed (1/4 mile time, min=14.50,max=22.90,setp=0.1)',0,min=14.50,max=22.90,step=0.1),
        submitButton('Submit')
        ),
    mainPanel(
        h3('Results of prediction'),
        h4('Transmission Type'),
        verbatimTextOutput("id1"),
        h4('Weight 1000lb'),
        verbatimTextOutput("id2"),
        h4('Acceleration Speed'),
        verbatimTextOutput("id3"),
        h4('Predicted MPG'),
        verbatimTextOutput("prediction")
        )
    )
)

