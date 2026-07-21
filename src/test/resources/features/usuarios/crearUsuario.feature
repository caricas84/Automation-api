Feature: Creación de usuarios

Background:
    * url baseUrl
    * def usuarios = read('classpath:data/usuarios.json')

@Regression
@Crear
Scenario: Crear un usuario

    Given path 'users'
    And request usuarios.crearUsuario

    When method POST

    Then status 201

    And match response.name == usuarios.crearUsuario.name
    And match response.username == usuarios.crearUsuario.username
    And match response.email == usuarios.crearUsuario.email