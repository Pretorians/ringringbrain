Feature:
    Como Carlitos
    Quiero Entrar al juego de Picas
    Para poder divertirme
    
Scenario: Ingresar a la Pagina de Inicio
      Given Abrir pagina
      Then "Bienvenidos al Juegos de Picas"
      
Scenario: Iniciar al juego
      Given Abrir pagina
      When Hacer clic en el boton "start"
      Then "Ya tengo un numero adivinalo"
      