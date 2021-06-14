library(shiny)

shinyUI(fluidPage(
    titlePanel("샤이니코리아"),
    tags$script(src = "map.js"),
    sidebarLayout(
        sidebarPanel(
            actionButton("roadviewshow", "로드뷰 - 보이기"),
            actionButton("roadviewhide", "로드뷰 - 감추기"),
            actionButton("penTo", "위치이동"),
            actionButton("markershow", "마커표시")
        ),
        mainPanel(
            includeHTML('html/map.html'),
            textOutput("text")
        )
    )
))
