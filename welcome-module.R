

# Welcome module ----------------------------------------------------------


welcome_UI <- function(id) {
  ns <- NS(id)
  modalDialog(
    title = tags$h1(
      style = "text-align: center;",
      "Welcome to Face memory game !"
    ),
    tags$div(
      style = "text-align: center;",
      tags$p("Human memory is often likened to that of a computer memory system or a filing cabinet. But in fact, memory is far from perfect - most people do not remember every single thing that has happened to them, and memories are often changed and can become distorted."),
      tags$p("Memory strength is just like muscular strength. The more you use it, the stronger it gets. But you can't lift the same size weight every day and expect to get stronger. You'll need to keep your brain constantly challenged."),
      tags$p("This simple face memory game not only improves your ability to remember faces, but really teaches you to pay attention to detail. After all, you can't remember something if you never fully noticed it in the first place."),
      tags$p("This Face Memory Games give space to critical thinking and that helps children nurture their attention to detail. Memory games can improve visual recognition. With many memory games based on spotting differences, or linking two related images, children improve their visual discrimination.")
    ), 
    footer = actionButton(
      inputId = ns("play"),
      label = "Play !",
      icon = icon("play"),
      style = "width: 100%"
    ),
  )
}

welcome <- function(input, output, session) {
  
  id <- gsub("-$", "", session$ns(""))
  showModal(ui = welcome_UI(id))
  
  observeEvent(input$play,{
   showModal(modalDialog(
     tags$div(
       style = "text-align: center;",
       tags$p("Find all matching faces as soon as possible!"),
       tags$p("Click on an hex to return it"),
       tags$p("You can see only two faces at the same time"),
       tags$p("When you're ready, click button below to play !"),
       tags$p("Do test your memory power!")
     )
   ))
  })
  


  
  return(reactive(input$play))
}

