Feature: Eliminación de usuarios

  Background:
    * url baseUrl

  @Regression
  @Eliminar
  Scenario: Eliminar un usuario

    Given path 'users', 1

    When method DELETE

    Then status 200

    And match response == {}