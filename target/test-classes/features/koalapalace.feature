@koalapalace
Feature: Koala Palace
  Background: Koala Palace Admin Giris
    Given kullanici koalapalace admin sayfasina gider
    And kullanici kullaniciadi ve sifresini girer
    Then kullanici giris islemini gerceklestirir
  @hotelcreate
  Scenario: TC09_kullanici bilgileri girerek hotel olusturur
    Given kullanici hotelcreate sayfasina gider
    And kullanici hotelcreate code bolumune "1234" girer
    And kullanici hotelcreate name bolumune "test" girer
    And kullanici hotelcreate adress bolumune "cikmaz sokak" girer
    And kullanici hotelcreate phone bolumune "0539123456" girer
    And kullanici hotelcreate email bolumune "hamza@tech.com" girer
    And kullanici hotelcreate idgroup bolumunde "Hotel Type1" secer
    And kullanici hotelcreate save butonuna tiklar
    Then kullanici hotelcreate kayit islemini assert eder
  @hotelroomcreate
  Scenario: TC10_kullanici bilgleri girerek hotel room olusturur
    Given kullanici hotelroomcreate sayfasina gider
    And kullanici hotelroomcreate idhotel bolumunde "Star" secer
    And kullanici hotelroomcreate code bolumune "12345" girer
    And kullanici hotelroomcreate name bolumune "Techproed" girer
    And kullanici hotelroomcreate location bolumune "USA" girer
    And kullanici hotelroomcreate description bolumune "ne yazik ki aciklama yok" girer
    And kullanici hotelroomcreate price bolumune fiyat girer
    And kullanici hotelroomcreate roomtype bolumunde "Single" secer
    And kullanici hotelroomcreate maxadult bolumune "2" girer
    And kullanici hotelroomcreate maxchildren bolumune "3" girer
    And kullanici hotelroomcreate save butonuna tiklar
    Then kullanici hotelroomcreate kayit islemini assert eder

    @hotelreservationcreate
    Scenario: TC11_kullanici bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
      And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
      And kullanici hotelreservationcreate adultamount bolumune "2" yazar
      And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
      And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
      And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
      And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
      And kullanici hotelreservationcreate notes bolumune "notes...." yazar
      And kullanici hotelreservationcreate approved check box secilir
      And kullanici hotelreservationcreate ispaid check box secilir
      And kullanici hotelreservationcreate save butonuna tiklar
      Then kullanici hotelresevationcreate kayit islemini assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest1
  Scenario: TC12_kullanici iduser secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
   # And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest1
  Scenario: TC13_kullanici iduser secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
   # And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest2
  Scenario: TC14_kullanici selecthotelroom secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
   And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
   # And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest3
  Scenario: TC15_kullanici price secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
   And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    #And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest4
  Scenario: TC16_kullanici datestart secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
   # And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest5
  Scenario: TC17_kullanici dateend secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
   And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
   # And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest6
  Scenario: TC18_kullanici adultamount secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
   # And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest7
  Scenario: TC19_kullanici childrentamount secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
   And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    #And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest8
  Scenario: TC20_kullanici contactnamesurname secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
   # And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest9
  Scenario: TC21_kullanici contactphone secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
   And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    #And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate @hotelreservationnegativetests @hotelreservationnegativetest10
  Scenario: TC22_kullanici contactemail secmeden bilgileri girerek hotel reservation olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/010/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    #And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

  @hotelreservationcreate
  @hotelreservationnegativetests
  @hotelreservationnegativetest11
  Scenario: TC23_kullanici datestarti dateendden sonra girerek olusturur
    Given kullanici hotelreservationcreate sayfasina gider
    And kullanici hotelreservationcreate iduser bolumunde "manager2" secer
    And kullanici hotelreservationcreate selecthotelroom bolumunde "Queen1" secer
    And kullanici hotelreservationcreate price bolumune fiyat yazar
    And kullanici hotelreservationcreate datestart bolumune "10/10/2020" yazar
    And kullanici hotelreservationcreate dateend bolumune "10/06/2020" yazar
    And kullanici hotelreservationcreate adultamount bolumune "2" yazar
    And kullanici hotelreservationcreate childrentamount bolumune "2" yazar
    And kullanici hotelreservationcreate contactnamesurname bolumune "Semra Yerlikaya" yazar
    And kullanici hotelreservationcreate contactphone bolumune "1234567890" yazar
    And kullanici hotelreservationcreate contactemail bolumune "semra@gmail.com" yazar
    And kullanici hotelreservationcreate notes bolumune "notes...." yazar
    And kullanici hotelreservationcreate approved check box secilir
    And kullanici hotelreservationcreate ispaid check box secilir
    And kullanici hotelreservationcreate save butonuna tiklar
    Then kullanici hotelresevationcreate kayit islemininin basarisiz oldugunu assert eder

@hotelsearch
  Scenario: TC24_kullanici hotel search kutusuna code yazarak hotel aramasi yapar
    Given kullanici hotelsearch sayfasina gider
  And code bolumune "1234" gonderir
  And search butonuna tiklar
  And aranilan hotelin satiri belirdi mi diye assert eder

  @hotelsearchnegative01
  Scenario: TC24_kullanici hotel search kutusuna code yazarak hotel aramasi yapar
    Given kullanici hotelsearch sayfasina gider
    And code bolumune "-10" gonderir
    And search butonuna tiklar
    And kullanici hotel list bolumunde kayit bulunamadi yazisini gorur

  @hotelroomsearch
  Scenario: TC25_kullanici hotelroomlist sayfasinda verileri girerek hotelroom arar
    Given kullanici hotelroomlist sayfasina gider
    And kullanici hotelroomlist idhotelbolumunde "Star" secer
    And kullanici hotelroomlist code bolumune "12345" girer
    And kullanici hotelroomlist name bolumune "Techproed" girer
    And kullanici hotelroomlist location bolumune "USA" girer
    And kullanici hotelroomlist search butonuna tiklar
    Then kullanici hotelroomlist bolumundeki kayitlari inceler


  @hotelreservationsearch
  Scenario: TC26_kullanici hotelreservationlist sayfasinda verileri girerek reservation arar
    Given kullanici hotelroomreservationlist sayfasina gider
    And kullanici hotelroomreservationlist hotelroomid bolumunde "team06" secer
    And kullanici hotelroomreservationlist arama kutusuna tiklar
    Then kullanici hotelroomreservationlist kayitlarini inceler

  @hoteledit
  Scenario: TC27_kullanici hoteledit sayfasinda verileri girerek hotel bilgilerini gunceller
    Given kullanici hoteledit "http://www.kaolapalace-qa-environment2.com/admin/HotelAdmin/Edit?Id=4" sayfasina gider
    And kullanici hoteledit code bolumunu "999" ile gunceller
    And kullanici hoteledit name bolumunu "sonDers" ile gunceller
    And kullanici hoteledit adress bolumunu "Cikmaz sk." ile gunceller
    And kullanici hoteledit phone bolumunu "0123456789" ile gunceller
    And kullanici hoteledit mail bolumunu "sonders@son.com" ile gunceller
    And kullanici hoteledit save butonuna tiklar
    Then kullanici hoteledit "Hotel was updated successfully" yazisini dogrular

  @hotelroomedit
  Scenario: TC28_kullanici hotelroomedit sayfasinda properties bolumundeki veriyi siler
    Given kullanici hotelroomedit "http://www.kaolapalace-qa-environment2.com/admin/HotelRoomAdmin/Edit?Id=472" sayfasina gider
    And kullanici hotelroomedit sayfasinda properties bolumune tiklar
    And kullanici hotelroomedit sayfasinda tip olarak "room prop1" secer
    And kullanici hotelroomedit sayfasinda code olarak "4444" girer
    And kullanici hotelroomedit sayfasinda value olarak "sistem bozuldu" girer
    And kullanici hotelroomedit sayfasinda save butonuna tiklar
    Then kullanici hotelroomedit sayfasinda properties bolumunde yeni kayit oldugunu assert eder