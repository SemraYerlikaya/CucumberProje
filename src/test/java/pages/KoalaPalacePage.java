package pages;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

import java.util.List;

public class KoalaPalacePage {
    public KoalaPalacePage(){
        PageFactory.initElements(Driver.getDriver() , this);
    }
    @FindBy ( id = "UserName")
    public WebElement userNameKutusu;
    @FindBy ( id = "Password" )
    public WebElement passwordKutusu;
    @FindBy ( xpath = "//button[.='Log in']")
    public WebElement girisButonu;
    @FindBy ( id = "Code")
    public WebElement hotelCreateCodeKutusu;
    @FindBy ( id = "Name")
    public WebElement hotelCreateNameKutusu;
    @FindBy ( id = "Address")
    public WebElement hotelCreateAddressKutusu;
    @FindBy ( id = "Phone")
    public WebElement hotelCreatePhoneKutusu;
    @FindBy (id = "Email")
    public WebElement hotelCreateEmailKutusu;
    @FindBy (id = "IDGroup")
    public WebElement hotelCreateIDGroupDropdown;
    @FindBy (id = "btnSubmit")
    public WebElement hotelCreateSaveButonu;
    @FindBy (className = "bootbox-body")
    public WebElement hotelCreateBasariliYazisi;
    @FindBy ( id = "IDHotel" )
    public WebElement hotelRoomCreateIDHotelDropdown ;
    @FindBy ( id = "Code" )
    public WebElement hotelRoomCreateCodeKutusu ;
    @FindBy ( id = "Name" )
    public WebElement hotelRoomCreateNameKutusu ;
    @FindBy ( id = "Location" )
    public WebElement hotelRoomCreateLocationKutusu ;
    @FindBy ( xpath = "//*[@id='cke_1_contents']/textarea")
    public WebElement hotelRoomCreateDescriptionKutusu ;
    @FindBy ( id = "Price" )
    public WebElement hotelRoomCreatePriceKutusu ;
    @FindBy ( xpath = "//*[@data-id='500']/a")
    public WebElement hotelRoomCreatePrice500 ;
    @FindBy ( id = "IDGroupRoomType" )
    public WebElement hotelRoomCreateIDGroupRoomTypeDropDown;
    @FindBy ( id = "MaxAdultCount" )
    public WebElement hotelRoomCreateMaxAdultKutusu;
    @FindBy ( id = "MaxChildCount" )
    public WebElement hotelRoomCreateMaxChildKutusu;
    @FindBy ( id = "btnSubmit" )
    public WebElement hotelRoomCreateSaveButonu ;
    @FindBy ( className = "bootbox-body")
    public WebElement hotelRoomCreateBasariliYazisi;

    @FindBy ( id = "IDUser" )
    public WebElement hotelRoomReservationCreateIDUserDropDown ;
    @FindBy ( id = "IDHotelRoom" )
    public WebElement hotelRoomReservationCreateIDHotelRoomDropDown;
    @FindBy ( id = "Price" )
    public WebElement hotelRoomReservationCreatePriceKutusu;
    @FindBy ( id = "DateStart" )
    public WebElement hotelRoomReservationCreateDateStartKutusu;
    @FindBy ( id = "DateEnd" )
    public WebElement hotelRoomReservationCreateDateEndKutusu;
    @FindBy ( id = "AdultAmount" )
    public WebElement hotelRoomReservationCreateAdultAmountKutusu;
    @FindBy ( id = "ChildrenAmount" )
    public WebElement hotelRoomReservationCreateChildrenAmountKutusu;
    @FindBy ( id = "ContactNameSurname" )
    public WebElement hotelRoomReservationContactNameSurnameKutusu;
    @FindBy ( id = "ContactPhone" )
    public WebElement hotelRoomReservationContactPhoneKutusu;
    @FindBy ( id = "ContactEmail" )
    public WebElement hotelRoomReservationContactEmailKutusu;
    @FindBy ( id = "Notes" )
    public WebElement hotelRoomReservationNotesKutusu;
    @FindBy ( id = "Approved" )
    public WebElement hotelRoomReservationApprovedKutusu;
    @FindBy ( id = "IsPaid" )
    public WebElement hotelRoomReservationIsPaidKutusu;
    @FindBy ( id = "btnSubmit" )
    public WebElement hotelRoomReservationSaveButonu;
    @FindBy ( className = "bootbox-body")
    public WebElement hotelRoomReservationBasariliYazisi;

    @FindBy ( xpath = "//label[@class='error']")
    public WebElement hataMesaji;

    @FindBy ( xpath = "//input[@name='Code']")
    public WebElement  hotelSearchCodeKutusu;
    @FindBy ( xpath = "//button[@class='btn btn-sm yellow filter-submit margin-bottom']")
    public WebElement  hotelSearchButonu;
    @FindBy ( xpath = "//tbody/tr[1]")
    public WebElement hotelListIlkSatir;
    @FindBy ( xpath = "//tbody/tr[1]/td[2]")
    public WebElement hotelListIlkSatirCodeSutunu;
    @FindBy ( className = "dataTables_info")
    public WebElement hotelListToplamSonucSayisi;


    @FindBy ( id = "lkpHotels")
    public WebElement hotelRoomListIDHotelDropdown;
    @FindBy ( name = "Code")
    public WebElement hotelRoomListCodeKutusu;
    @FindBy ( name = "Name" )
    public WebElement hotelRoomListNameKutusu;
    @FindBy ( name = "Location" )
    public WebElement hotelRoomListLocationKutusu;
    @FindBy ( xpath = "//button[@class='btn btn-sm yellow filter-submit margin-bottom']")
    public WebElement hotelRoomListAramaKutusu;
    @FindBy ( className = "dataTables_info")
    public WebElement hotelRoomListSonucSayisi;
    @FindBy ( xpath = "//tbody/tr[1]")
    public WebElement hotelRoomListIlkSatir;

    @FindBy ( className = "dataTables_empty" )
    public WebElement hotelCreateKayitBulunamadiYazisi;

    @FindBy ( id = "lkpHotelRooms" )
    public WebElement hotelReservationListHotelRoomIdDropdown;
    @FindBy ( xpath = "//button[@class='btn btn-sm yellow filter-submit margin-bottom']")
    public WebElement hotelReservationListAramaKutusu;
    @FindBy ( xpath = "//tbody/tr")
    public List<WebElement> hotelReservationListIlkSayfaSonuclari;




}
