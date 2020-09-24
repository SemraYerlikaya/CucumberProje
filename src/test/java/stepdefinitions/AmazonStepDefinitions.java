package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.Select;
import pages.AmazonPage;
import utilities.ConfigurationReader;
import utilities.Driver;

public class AmazonStepDefinitions {
    AmazonPage amazonPage=new AmazonPage();

    @Given("kullanici amazon sayfasina gider")
    public void kullanici_amazon_sayfasina_gider() {
        Driver.getDriver().get(ConfigurationReader.getProperty("amazon_link"));
    }
    @Given("headphone aramasi yapar")
    public void headphone_aramasi_yapar() {

        amazonPage.aramaKutusu.sendKeys(ConfigurationReader.getProperty("amazon_kelime")+ Keys.ENTER);
    }
    @Then("sonucu ekrana yazdirir")
    public void sonucu_ekrana_yazdirir() {
        System.out.println( amazonPage.sonucText.getText());

    }
    @Given("camera aramasi yapar")
    public void camera_aramasi_yapar() {
        amazonPage.aramaKutusu.sendKeys(ConfigurationReader.getProperty("amazon_kelime2")+ Keys.ENTER);
    }

    @Given("kullanici aramakutusuna {string} yazar ve arar")
    public void kullanici_aramakutusuna_yazar_ve_arar(String string) {
        amazonPage.aramaKutusu.sendKeys(string+ Keys.ENTER);
    }
    @Then("driveri kapatir")
    public void driveri_kapatir () {
      Driver.closeDriver();

    }
    @Given("kullanici dropdownda {string} secer")
    public void kullanici_dropdownda_secer(String string) {
        Select select=new Select(amazonPage.dropDown);
        select.selectByVisibleText(string);
    }
}
