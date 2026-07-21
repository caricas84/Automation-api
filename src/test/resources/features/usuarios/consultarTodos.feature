Feature: Consulta de todos los usuarios

Background:
    * url baseUrl
    * def usuarioSchema = read('classpath:schemas/usuarioSchema.json')

@Smoke
@Consulta
Scenario: Consultar todos los usuarios

    Given path 'users'

    When method GET

    Then status 200

    And match response == '#[10]'

    And match each response == usuarioSchema