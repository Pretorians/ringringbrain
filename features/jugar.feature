Feature:
    Como Carlitos
    Quiero jugar al juego de Picas
    Para intentar adivinar
    
Scenario: Ingresar el numero
      Given Abrir pagina
        And Seleccionar mama
        And Hacer clic en el boton "start"
        And  ingresar el "1234"
      When  presionar el boton adivinar
      Then "Ya tengo un numero adivinalo"
       

