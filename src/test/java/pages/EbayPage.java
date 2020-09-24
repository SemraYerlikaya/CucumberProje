package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class EbayPage {
    /*
    https://www.ebay.com/'a gidelim ve araba, bebek arabası, bisiklet aramaları yapalım.
İlk önce "ebay.feature" oluşturalım.
Feature'a @ebayarama tag'ı verelim.
Scenario Outline oluşturalım.
 1. Adımda Ebay'a gidelim.
 2. Adımda arama kutusuna kelime ekleyelim ve arayalım
 3. Adımda sonuç sayısını ekrana yazdıralım.
 Examples: bölümüne araba, bebek arabası, bisiklet verilerini(3 tane) ekleyelim.
 Süreniz 20 dk, dünkü amazon örneğinden yararlanabilirsiniz.
     */
    public EbayPage(){
        PageFactory.initElements(Driver.getDriver() , this);
    }
    @FindBy( id = "gh-ac" )
    public WebElement aramaKutusu;

    @FindBy ( xpath = "//h1[@class='srp-controls__count-heading']")
    public WebElement sonucText;




}
