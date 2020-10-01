package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import pages.EbayPage;
import utilities.ConfigurationReader;
import utilities.Driver;

public class EbayStepDefinitions {
    EbayPage ebayPage=new EbayPage();

    @Given("kullanici {string} sayfasina gider")
    public void kullanici_sayfaya_gider(String string) {
        Driver.getDriver().get(string);

    }
    @Given("kullanici aramaKutusuna {string} yazar ve arar")
    public void kullanici_aramaKutusuna_yazar_ve_arar(String string) {
      ebayPage.aramaKutusu.sendKeys(string+ Keys.ENTER);
    }
    @Then("sonuc sayisini ekrana yazdirir")
    public void sonuc_sayisini_ekrana_yazdirir() {

        System.out.println( ebayPage.sonucText.getText());


    }

}
