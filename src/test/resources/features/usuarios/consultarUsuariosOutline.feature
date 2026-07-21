Feature: Consulta de usuarios con Scenario Outline

Background:
    * url baseUrl

@Regression
@Consulta
Scenario Outline: Consultar usuario <id>

    Given path 'users', <id>

    When method GET

    Then status 200

    And match response.id == <id>
    And match response.name == '<nombre>'

Examples:

| id | nombre |
| 1 | Leanne Graham |
| 2 | Ervin Howell |
| 3 | Clementine Bauch |
| 4 | Patricia Lebsack |
| 5 | Chelsey Dietrich |