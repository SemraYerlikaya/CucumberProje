@birdenfazlaexample @amazon

  Feature: Amazonda Urun Arama
    Scenario Outline: TC07_kullanici amazonda dropdown ve aramakutusunu kullanarak arama yapar
      Given kullanici "http://amazon.com" sayfasina gider
      And kullanici dropdownda "<kategori>" secer
      And kullanici aramakutusuna "<urunismi>" yazar ve arar
      Then sonucu ekrana yazdirir

      Examples: Test Verileri

      |kategori       |urunismi     |
      |Automotive Parts & Accessories    |phone holder    |
      |Baby           |stroller      |
      |Books          |Miserables    |



