package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import pages.EbayPage;
import pages.WalmartPage;
import utilities.Driver;
public class WalmartStepDefinitions {
    WalmartPage walmartPage=new WalmartPage();


    @Given("kullanici aramaKutusuna {string} yazar ve ararr")
    public void kullanici_aramaKutusuna_yazar_ve_ararr(String string) {
        walmartPage.aramaKutusu.sendKeys(string+Keys.ENTER);

    }
    @Then("sonuc sayisini ekrana yazdirirr")
    public void sonuc_sayisini_ekrana_yazdirirr() {
        System.out.println( walmartPage.sonucText.getText());



    }


    }

