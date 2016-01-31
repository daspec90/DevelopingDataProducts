shinyUI(pageWithSidebar(
    headerPanel("Alzheimer's disease biomarker explorer"),
    sidebarPanel(
        selectInput('xcol', 'X axis variable', names(data)),
        selectInput('ycol', 'Y axis variable', names(data),
                    selected=names(data)[[2]])
    ),
    mainPanel(
        plotOutput('plot1'),
        textOutput('text1')
    )
))