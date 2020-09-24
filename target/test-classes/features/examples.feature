@teknolojikarama @amazon
  Feature: Amazon Birden Fazla Arama
    Scenario Outline: TC05 kullanici amazonda urun arar
      Given kullanici amazon sayfasina gider
      And kullanici aramakutusuna "<kelimeler>" yazar ve arar
      Then sonucu ekrana yazdirir
      Examples:Urun isimleri
      |kelimeler|
      |headphones|
      |camera    |
      |drone     |
      |pencil    |
      |tv        |

