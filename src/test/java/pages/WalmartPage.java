package pages;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;
public class WalmartPage {

/*
1. Örnek :  TÜM ARKADAŞLARIMIZ ÇÖZERSE GÜZEL OLUR
https://www.walmart.com/'a gidelim ve calculator, watch, flower aramaları yapalım.
İlk önce "walmart.feature" oluşturalım.
Feature'a @walmart tag'ı verelim.
Scenario Outline oluşturalım.
 1. Adımda Walmart'a gidelim.
 2. Adımda arama kutusuna kelime ekleyelim ve arayalım
 3. Adımda sonuç sayısını ekrana yazdıralım.
 Examples: bölümüne calculator, watch, flower verilerini(3 tane) ekleyelim.
 */
        public WalmartPage(){

            PageFactory.initElements(Driver.getDriver() , this);
        }
        @FindBy( id = "global-search-input" )
        public WebElement aramaKutusu;

    @FindBy(xpath =  "//div[@class='result-summary-container']" )
    public WebElement sonucText;
    }

