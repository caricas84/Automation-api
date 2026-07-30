Feature: Creación de usuarios

Background:
    * url baseUrl
    * def generator = call read('classpath:utils/generator.js')

@Regression
@Crear
Scenario: Crear un usuario

    * def nuevoUsuario = generator.user()

    Given path 'users'
    And request nuevoUsuario

    When method POST

    Then status 201

    And match response.name == nuevoUsuario.name
    And match response.username == nuevoUsuario.username
    And match response.email == nuevoUsuario.email