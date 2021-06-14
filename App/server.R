library(shiny)

shinyServer(function(input, output, session) {

    observeEvent(input$roadviewshow, {
        session$sendCustomMessage("roadviewshow", '')
    })
    
    observeEvent(input$roadviewhide, {
        session$sendCustomMessage("roadviewhide", '')
    })
    
    observeEvent(input$markershow, {
        session$sendCustomMessage("markershow", '')
    })
    
    observeEvent(input$penTo, {
        message <- list(
            lat = 33.451580,
            long = 126.574942
        )
        session$sendCustomMessage("panto", message = message)
    })
    
    output$text <- renderText({
        req(input$count)
        paste("마커를 ", input$count, "번 클릭 하였습니다.!!")
    })
})