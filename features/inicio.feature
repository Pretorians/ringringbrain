Feature:
    Como Carlitos
    Quiero iniciar le juego 
    Para divertirme

Scenario: iniciar juego
    Given abro la aplicación
    When inicio juego
    Then veo "ya tengo un numero, adivinalo"