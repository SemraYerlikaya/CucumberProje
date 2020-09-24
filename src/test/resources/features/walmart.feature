@walmart
Feature: Walmart Birden Fazla Arama

  Scenario Outline: TC08 kullanici walmart ta urun arar

    Given kullanici "http://walmart.com" sayfasina gider
    #bunu ebay den alacak o yuzden stepdefinitions daki class a yazmaya gerek yok
    And kullanici aramaKutusuna "<urunler>" yazar ve ararr
    Then sonuc sayisini ekrana yazdirirr
    Examples:Urun isimleri
      |urunler|
      |calculator|
      |watch   |
      |flower    |
