package stepdefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;

public class Hooks {
    //TestNG deki @BeforeMethod gibi
    //her senaryodan once calisir

    @Before
    public void setUp(){
        System.out.println("setup calisti");

    }

    //TestNG deki @BeforeMethod gibi
    //her senaryodan sonra calisir
    @After
    public void tearDown(Scenario scenario){
        System.out.println("tearDown calisti");
        //ekran goruntusu almak icin sabit kodu kullanabiliriz.
        final byte [] screenshot=((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
        //eger senryonun sonucu FAiled se ekran goruntusunu rapora ekler
        if(scenario.isFailed()){
            scenario.embed(screenshot,"image/png");
        }
    }
}
