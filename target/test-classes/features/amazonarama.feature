@urunarama
Feature: Amazon Arama

  Background: Oncesinde calisacak Method (BeforeMethod)
    Given kullanici amazon sayfasina gider

  @amazon @amazonda #amazon ve amazonda tagi ndeki feature i calistirmak icin
  Scenario: TC02_kullanici amazonda arama yapar

    And headphone aramasi yapar
    Then sonucu ekrana yazdirir
    Then driveri kapatir


  @amazoncamera
  Scenario:  TC03_kullanici amazonda arama yapar

    And camera aramasi yapar
    Then sonucu ekrana yazdirir
    Then driveri kapatir

