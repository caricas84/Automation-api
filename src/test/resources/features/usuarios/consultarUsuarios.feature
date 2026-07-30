Feature: Gestión de usuarios

Background:

    * url baseUrl
    * def respuestas = read('classpath:data/respuestas.json')

Scenario: Consultar un usuario

    Given path 'users', 1
    
    When method GET

    Then status 200
    And match response.id == respuestas.usuario1.id
    And match response.name == respuestas.usuario1.name
    And match response.username == respuestas.usuario1.username
    And match response.email == respuestas.usuario1.email