Feature: Actualización de usuarios

  Background:
      * url baseUrl
      * def usuarios = read('classpath:data/usuarios.json')

  @Regression
  @Actualizar
  Scenario: Actualizar un usuario

    * def requestBody =
    """
    {
      "id": 1,
      "name": "Carolina Castaño",
      "username": "carocast",
      "email": "carolina@test.com"
    }
    """

    Given path 'users', 1
    And request usuarios.actualizarUsuario

    When method PUT

    Then status 200

    And match response.id == usuarios.actualizarUsuario.id
    And match response.name == usuarios.actualizarUsuario.name
    And match response.username == usuarios.actualizarUsuario.username
    And match response.email == usuarios.actualizarUsuario.email