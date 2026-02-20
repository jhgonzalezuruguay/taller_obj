library(shiny)

ui <- navbarPage("Taller de Objetivos y Diseño - Mag. José González",
                 
                 tags$head(
                   tags$style(HTML("
                     
                     /* Botones normales */
                     .btn,
                     .btn-default,
                     .btn-primary {
                       background-color: #90EE90 !important;
                       border-color: #90EE90 !important;
                       color: black !important;
                       background-image: none !important;
                     }
                     
                     /* Estados hover, focus y active */
                     .btn:hover,
                     .btn:focus,
                     .btn:active,
                     .btn-default:hover,
                     .btn-default:focus,
                     .btn-default:active,
                     .btn-primary:hover,
                     .btn-primary:focus,
                     .btn-primary:active {
                       background-color: #90EE90 !important;
                       border-color: #90EE90 !important;
                       color: black !important;
                       box-shadow: none !important;
                       outline: none !important;
                     }
                     
                   "))
                 ),
                 
                 
                 # --------------------------
                 # CAPÍTULO IV
                 # --------------------------
                 tabPanel("Objetivos y Diseño: Acceso a la Justicia",
                          h3("Objetivos y diseño de investigación"),
                          br(),
                          h4("Conceptos clave"),
                          tags$ul(
                            tags$li("Los objetivos constituyen la guía del proceso de investigación. Permiten definir el rumbo del estudio, orientar las decisiones metodológicas y evaluar los resultados."),
                            tags$li("Objetivo general: propósito amplio."),
                            tags$li("Objetivos específicos: pasos concretos."),
                            tags$li("Funciones: orientar, precisar, operacionalizar, evaluar."),
                            tags$li("Tipos: general, específicos, exploratorios, descriptivos, explicativos.")
                          ),
                          br(),
                          h4("Ejemplo en Ciencias Sociales"),
                          tags$ul(
                            tags$li("Objetivo general: Analizar las barreras sociales y económicas que afectan el acceso a la justicia en comunidades urbanas de Montevideo."),
                            tags$li("Objetivos específicos:
                            1) Examinar cómo el nivel socioeconómico influye en la búsqueda de asistencia legal.
                            2) Identificar percepciones de confianza en instituciones judiciales entre jóvenes y adultos.
                            3) Describir el papel de organizaciones comunitarias en la promoción del acceso a la justicia.")
                          ),
                          
                          br(),
                          
                          # --- Quiz ---
                          h4("Quiz"),
                          radioButtons("qObj", "¿Qué diferencia hay entre objetivo general y específicos?",
                                       choices = list(
                                         "El general es amplio, los específicos son pasos concretos" = "a",
                                         "No hay diferencia" = "b",
                                         "Los específicos reemplazan al general" = "c"
                                       ), selected = character(0)),
                          actionButton("submitObj", "Responder"),
                          textOutput("feedbackObj"),
                          
                          br(),
                          br(),
                          # --- Actividad práctica individual ---
                          h4("Actividad práctica individual"),
                          p("Formula un objetivo general y dos específicos sobre 'Acceso a la Justicia'."),
                          textAreaInput("objAcceso", "Escribe tus objetivos:", width = "100%", height = "100px"),
                          actionButton("solObj", "Ver respuesta sugerida"),br(),br(),
                          textOutput("respObj"),
                          downloadButton("downloadObj", "Descargar mis objetivos en .txt"),
                          
                          br(),
                          br(),
                          # --- Verdadero/Falso ---
                          h4("Verdadero/Falso"),
                          checkboxGroupInput("vfObj", "Marca las afirmaciones correctas:",
                                             choices = list(
                                               "El objetivo general expresa la finalidad global" = "a",
                                               "Los objetivos específicos descomponen el general" = "b",
                                               "Los objetivos reemplazan al problema" = "c"
                                             )),
                          actionButton("submitVFObj", "Verificar"),
                          textOutput("feedbackVFObj"),
                          
                          br(),
                          br(),
                          # --- Asociación de conceptos ---
                          h4("Asociación de conceptos"),
                          selectInput("asocGen", "Objetivo general:", 
                                      choices = c("", "Finalidad global", "Paso concreto", "Caracterizar hechos")),
                          selectInput("asocEsp", "Objetivo específico:", 
                                      choices = c("", "Descomponer el general", "Finalidad global", "Explorar fenómenos")),
                          actionButton("submitAsocObj", "Verificar respuestas"),
                          textOutput("feedbackAsocObj"),
                          
                          br(),
                          br(),
                          # --- Mini caso crítico ---
                          h4("Mini caso crítico"),
                          p("Un investigador formula solo objetivos específicos sin un objetivo general."),
                          radioButtons("casoObj", "¿Qué problema aparece?",
                                       choices = list(
                                         "Falta de coherencia y dirección" = "a",
                                         "Exceso de validez" = "b",
                                         "Uso correcto de objetivos" = "c"
                                       ), selected = character(0)),
                          actionButton("submitCasoObj", "Responder"),
                          textOutput("feedbackCasoObj"),
                          
                          br(),
                          br(),
                          # --- Reflexión crítica ---
                          h4("Reflexión crítica"),
                          textAreaInput("reflexionObj", "Escribe una reflexión sobre la importancia de formular objetivos claros:", width = "100%", height = "100px"),
                          downloadButton("downloadReflexionObj", "Descargar mi reflexión en .txt"),
                          
                          br(),
                          br(),
                          # --- Comparación de objetivos ---
                          h4("Comparación de objetivos"),
                          textAreaInput("comparacionObj", "Compara dos objetivos de investigación sobre 'Acceso a la Justicia' e identifica cuál está mejor formulado:", width = "100%", height = "100px"),
                          downloadButton("downloadComparacionObj", "Descargar mi comparación en .txt"),
                          
                          br(),
                          br(),br(),
                          # --- Flashcards ---
                          h4("Flashcards: Objetivos y Diseño"),br(),
                          actionButton("flashGen", "Ver definición de Objetivo General"),
                          textOutput("cardGen"),br(),br(),
                          actionButton("flashEsp", "Ver definición de Objetivo Específico"),
                          textOutput("cardEsp"),br(),br(),
                          actionButton("flashDis", "Ver definición de Diseño"),
                          textOutput("cardDis"),
                          
                          br(),
                          hr(),
                          
                          # ======================================================
                          # SECCIÓN AGREGADA: DISEÑO DE INVESTIGACIÓN
                          # ======================================================
                          
                          h3("Diseño de Investigación"),
                          
                          p("De acuerdo a los objetivos de la investigación, el diseño puede ser:"),
                          tags$ul(
                            tags$li("Exploratorio"),
                            tags$li("Descriptivo"),
                            tags$li("Explicativo"),
                            tags$li("Predictivo"),
                            tags$li("Evaluativo")
                          ),
                          
                          br(),
                          
                          h4("Quiz sobre tipos de diseño"),
                          radioButtons("qDis", 
                                       "Si una investigación busca valorar el impacto de una política pública en el acceso a la justicia, el diseño es:",
                                       choices = list(
                                         "Exploratorio" = "a",
                                         "Evaluativo" = "b",
                                         "Descriptivo" = "c"
                                       ), selected = character(0)),
                          actionButton("submitDis", "Responder"),
                          textOutput("feedbackDis"),
                          
                          br(),
                          br(),
                          h4("Asociación de tipo y finalidad"),
                          selectInput("asocDis1", 
                                      "Exploratorio:", 
                                      choices = c("", 
                                                  "Investiga fenómenos poco estudiados", 
                                                  "Predice escenarios futuros", 
                                                  "Mide impacto de políticas")),
                          
                          selectInput("asocDis2", 
                                      "Predictivo:", 
                                      choices = c("", 
                                                  "Anticipa comportamientos futuros", 
                                                  "Describe características", 
                                                  "Explica causas pasadas")),
                          
                          actionButton("submitAsocDis", "Verificar"),
                          textOutput("feedbackAsocDis"),
                          
                          br(),
                          br(),
                          h4("Actividad práctica sobre diseño"),
                          p("Escribe qué tipo de diseño aplicarías a cada uno de tus objetivos específicos."),
                          textAreaInput("actividadDis", 
                                        "Redacta tu respuesta:", 
                                        width = "100%", 
                                        height = "100px"),
                          downloadButton("downloadDis", 
                                         "Descargar mi diseño en .txt")
                 )
)

server <- function(input, output, session) {
  
  # =========================
  # TODO TU SERVER ORIGINAL
  # =========================
  
  observeEvent(input$submitObj, {
    if (input$qObj == "a") {
      output$feedbackObj <- renderText("¡Correcto! El objetivo general es amplio y los específicos son pasos concretos.")
    } else if (input$qObj %in% c("b","c")) {
      output$feedbackObj <- renderText("Incorrecto. Recuerda: el objetivo general es amplio y los específicos son pasos concretos.")
    } else {
      output$feedbackObj <- renderText("Selecciona una opción antes de responder.")
    }
  })
  
  observeEvent(input$solObj, {
    output$respObj <- renderText("Ejemplo sugerido:
Objetivo general: Analizar las barreras de acceso a la justicia en Uruguay.
Objetivos específicos:
1) Identificar obstáculos económicos.
2) Examinar la disponibilidad de asistencia legal gratuita.")
  })
  
  output$downloadObj <- downloadHandler(
    filename = function() { "mis_objetivos.txt" },
    content = function(file) {
      writeLines(input$objAcceso, file)
    }
  )
  
  observeEvent(input$submitVFObj, {
    correct <- c("a","b")
    if (all(input$vfObj %in% correct) && length(input$vfObj) == length(correct)) {
      output$feedbackVFObj <- renderText("¡Correcto! Has identificado bien las afirmaciones.")
    } else {
      output$feedbackVFObj <- renderText("Revisa tus respuestas.")
    }
  })
  
  observeEvent(input$submitAsocObj, {
    if (input$asocGen == "Finalidad global" && input$asocEsp == "Descomponer el general") {
      output$feedbackAsocObj <- renderText("¡Correcto!")
    } else {
      output$feedbackAsocObj <- renderText("Revisa tus respuestas.")
    }
  })
  
  observeEvent(input$submitCasoObj, {
    if (input$casoObj == "a") {
      output$feedbackCasoObj <- renderText("¡Correcto!")
    } else {
      output$feedbackCasoObj <- renderText("Revisa la respuesta.")
    }
  })
  
  output$downloadReflexionObj <- downloadHandler(
    filename = function() { "mi_reflexion_objetivos.txt" },
    content = function(file) {
      writeLines(input$reflexionObj, file)
    }
  )
  
  output$downloadComparacionObj <- downloadHandler(
    filename = function() { "mi_comparacion_objetivos.txt" },
    content = function(file) {
      writeLines(input$comparacionObj, file)
    }
  )
  
  observeEvent(input$flashGen, {
    output$cardGen <- renderText("Objetivo General: expresa la finalidad global de la investigación.")
  })
  
  observeEvent(input$flashEsp, {
    output$cardEsp <- renderText("Objetivo Específico: descompone el objetivo general en pasos concretos.")
  })
  
  observeEvent(input$flashDis, {
    output$cardDis <- renderText("Diseño: plan y estructura de la investigación que guía la recolección y análisis de datos.")
  })
  
  # =========================
  # NUEVO SERVER: DISEÑO
  # =========================
  
  observeEvent(input$submitDis, {
    if (input$qDis == "b") {
      output$feedbackDis <- renderText("¡Correcto! Corresponde a un diseño evaluativo.")
    } else {
      output$feedbackDis <- renderText("Revisa tu respuesta.")
    }
  })
  
  observeEvent(input$submitAsocDis, {
    if (input$asocDis1 == "Investiga fenómenos poco estudiados" &&
        input$asocDis2 == "Anticipa comportamientos futuros") {
      output$feedbackAsocDis <- renderText("¡Correcto! Buena asociación.")
    } else {
      output$feedbackAsocDis <- renderText("Revisa las asociaciones.")
    }
  })
  
  output$downloadDis <- downloadHandler(
    filename = function() { "mi_diseno.txt" },
    content = function(file) {
      writeLines(input$actividadDis, file)
    }
  )
}

shinyApp(ui, server)
