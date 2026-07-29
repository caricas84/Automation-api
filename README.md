---

# Autor

Carolina Castaño González

---

# 🚀 Reto de Automatización API con Karate Framework

## 📌 Descripción

Este proyecto corresponde a la automatización de pruebas de servicios REST utilizando **Karate Framework**, una herramienta basada en BDD que permite desarrollar pruebas funcionales de APIs de manera sencilla mediante archivos Feature escritos en lenguaje Gherkin.

El objetivo principal del proyecto es validar el correcto funcionamiento de los servicios expuestos por la API, garantizando que las respuestas obtenidas cumplan con los criterios esperados.

---

# Tecnologías utilizadas

- Java 17
- Karate Framework 1.5.1
- Gradle
- JUnit 5
- Gherkin
- JSON
- Git
- GitHub

---

# Arquitectura del proyecto

```
reto-api-karate
│
├── src
│   └── test
│       ├── java
│       │     └── runners
│       │            TestRunner.java
│       │
│       └── resources
│             ├── features
│             │      usuarios.feature
│             │
│             ├── data
│             │
│             └── karate-config.js
│
├── build.gradle
├── settings.gradle
└── README.md
```

---

# Explicación de la estructura

## features

Contiene todos los escenarios de prueba escritos en Gherkin.

Ejemplo:

- usuarios.feature

Aquí se definen:

- Escenarios
- Peticiones HTTP
- Validaciones
- Datos esperados

---

## runners

Contiene la clase que ejecuta las pruebas.

Ejemplo:

```
TestRunner.java
```

Desde aquí se indica qué Feature ejecutar.

---

## karate-config.js

Es el archivo de configuración principal de Karate.

Permite:

- Definir URL base
- Variables globales
- Ambientes
- Configuraciones generales

---

## build.gradle

Administra las dependencias del proyecto.

Aquí se encuentran:

- Karate
- JUnit
- Plugins de Gradle

---

# Patrón utilizado

Karate Framework utiliza un enfoque basado en **BDD (Behavior Driven Development)**.

Los escenarios son escritos utilizando Gherkin:

- Feature
- Background
- Scenario
- Given
- When
- Then
- And

Lo que permite que tanto desarrolladores como analistas puedan entender las pruebas.

---

# Escenario automatizado

Se automatizó la consulta del servicio:

GET

```
https://jsonplaceholder.typicode.com/users/1
```

Validando:

- Código HTTP 200
- Nombre del usuario
- Email
- Username
- Dirección
- Empresa

---

# Ejemplo de escenario

```gherkin
Feature: Consulta de usuario

Scenario: Obtener usuario por ID

Given url 'https://jsonplaceholder.typicode.com/users/1'
When method GET
Then status 200
And match response.id == 1
And match response.name == 'Leanne Graham'
```

---

# Ejecución del proyecto

## Desde IntelliJ

1. Abrir el proyecto.
2. Esperar la sincronización de Gradle.
3. Ejecutar TestRunner.

---

## Desde consola

```
.\gradlew test
```

---

# Reportes

Karate genera reportes automáticamente después de cada ejecución.

Los reportes se encuentran en:

```
build/karate-reports/
```

Desde allí es posible visualizar:

- Escenarios ejecutados
- Escenarios exitosos
- Escenarios fallidos
- Tiempo de ejecución
- Evidencias de cada petición

---

# Ventajas de Karate Framework

- No requiere Rest Assured.
- No requiere escribir mucho código Java.
- Sintaxis sencilla.
- Basado en BDD.
- Fácil mantenimiento.
- Permite reutilizar código.
- Excelente manejo de JSON.
- Integración con Gradle.
- Integración con Jenkins.
- Compatible con CI/CD.


# Requisitos

- Java 17
- Gradle
- Git
- IntelliJ IDEA


# Repositorio

```
https://github.com/caricas84/reto-api-karate
```