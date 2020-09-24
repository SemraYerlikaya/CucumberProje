@ebayarama
Feature: Amazon Birden Fazla Arama
  Scenario Outline: TC06 kullanici ebay de urun arar
    Given kullanici "http://ebay.com" sayfasina gider
    And kullanici aramaKutusuna "<kelimeler>" yazar ve arar
    Then sonuc sayisini ekrana yazdirir
    Examples:Urun isimleri
      |kelimeler|
      |araba|
      |bebek arabasi   |
      |bisiklet     |
