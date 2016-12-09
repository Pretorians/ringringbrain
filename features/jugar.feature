Feature:
    Como Carlitos
    Quiero jugar al juego de Picas
    Para intentar adivinar
    
Scenario: Ingresar el numero
      Given inicia el juego
      When  ingresar el "numero"
       And  presionar el boton adivinar
      Then "Resultado"
       
Scenario: Reiniciar al juego
      Given inicia el juego
      When Hacer clic en el boton reiniciar
      Then "Bienvenidos al Juegos de Picas"
