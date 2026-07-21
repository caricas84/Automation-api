Feature: Gestión de usuarios

Background:
    * url baseUrl
    * def usuarioSchema = read('classpath:schemas/usuarioSchema.json')

@Smoke
@Consulta
Scenario: Consultar un usuario por id

    Given path 'users', 1

    When method GET

    Then status 200

    And match response == usuarioSchema
    And match response.id == 1
    And match response.name == 'Leanne Graham'