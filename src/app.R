options(shiny.port = 8050, shiny.autoreload = TRUE)

library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)

# UI
ui <- fluidPage(
  titlePanel("Interactive MTCARS Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      width = 3,  # Adjust the width of the sidebar
      sliderInput(
        'x_range',
        'Horsepower',
        min = min(mtcars$hp),
        max = max(mtcars$hp),
        value = range(mtcars$hp)
      ),
      sliderInput(
        'y_range',
        'Miles per gallon',
        min = min(mtcars$mpg),
        max = max(mtcars$mpg),
        value = range(mtcars$mpg)
      ),
      sliderInput(
        'cyl_range',
        'Number of cylinders',
        min = min(mtcars$cyl),
        max = max(mtcars$cyl),
        value = range(mtcars$cyl)
      )
    ),
    
    mainPanel(
      plotlyOutput("plot", width = "100%")  # Adjust plot width
    )
  )
)
# Server side callbacks/reactivity
server <- function(input, output, session) {
  output$plot <- renderPlotly({
    return(
      ggplotly(
        ggplot(
          filtered_data <- mtcars |> filter(
            between(hp, input$x_range[1], input$x_range[2]),
            between(mpg, input$y_range[1], input$y_range[2]),
            between(cyl, input$cyl_range[1], input$cyl_range[2])
          ),
          aes(x = hp, y = mpg, text = paste("Car:", rownames(filtered_data)))
        ) +
          labs(title = "Horsepower vs MPG", x = "Horsepower", y = "Miles per Gallon") +
          geom_point()
      )
    )
  })
}

# Run the app/dashboard
shinyApp(ui, server)