Feature:
    Como Carlitos
    Quiero ver los resultados del juego de Picas
    Para saber si adivine
    
Scenario: Mostrar el resultado correcto
      Given Abrir el juego
      When  ingresar el "numero"
       And  presionar el boton adivinar
      Then "Winner"
      
Scenario: Sigue intentando
      Given Abrir el juego
      When  ingresar el "numero"
       And  presionar el boton adivinar
      Then "Sigue intentando"
      
Scenario: Mostrar el resultado incorrecto supero el numero intentos
      Given Abrir pagina
      When  ingresar el "numero"
       And  presionar el boton adivinar
      Then "Loser"
  
Scenario: Mostrar el resultado incorrecto pide nuevo intento
      Given Abrir pagina
      When  ingresar el "numero"
       And  presionar el boton adivinar
       And  presionar el boton reintentar
      Then "Adivina el numero"
      
Scenario: Mostrar el resultado incorrecto pide nuevo juego
      Given Abrir pagina
      When  ingresar el "numero"
       And  presionar el boton adivinar
       And  presionar el boton inicio
      Then "Bienvenidos al Juegos de Picas"
      
Scenario: Salir del juego
      Given Abrir pagina
      When  ingresar el "numero"
       And  presionar el boton adivinar
       And  presionar el boton salir
      Then "Bienvenidos al Juegos de Picas"