use mydb;
db.createCollection("dostepnosc_pojazu");
db.createCollection("stan_techniczny");
db.createCollection("stan_zamowienia");
db.createCollection("stanowisko");
db.createCollection("uzytkownik");
db.createCollection("klient");
db.createCollection("zamowienie");
db.createCollection("pracownik");
db.createCollection("faktura");
db.createCollection("harmonogram");
db.createCollection("pojazd");
db.createCollection("pracownik_zamowienia");
db.createCollection("pracownik_stanowiska");
db.createCollection("klient_zamowienie");
db.dostepnosc_pojazu.insertMany([
  {
    "_id": "dop1",
    "nazwa": "Dostepny"
  },
  {
    "_id": "dop2",
    "nazwa": "Niedostepny"
  }
]);
db.stan_techniczny.insertMany([
  {
    "_id": "stt1",
    "nazwa": "Sprawny"
  },
  {
    "_id": "stt2",
    "nazwa": "Uszkodzony"
  },
  {
    "_id": "stt3",
    "nazwa": "Do ubezpieczenia"
  },
  {
    "_id": "stt4",
    "nazwa": "Do przeglądu"
  }
]);
db.stan_zamowienia.insertMany([
  {
    "_id": "stz1",
    "nazwa": "Do realizacji"
  },
  {
    "_id": "stz2",
    "nazwa": "W trakcie realizacji"
  },
  {
    "_id": "stz3",
    "nazwa": "Zrealizowane"
  },
  {
    "_id": "stz4",
    "nazwa": "Anulowane"
  },
  {
    "_id": "stz5",
    "nazwa": "Oplacone"
  }
]);
db.stanowisko.insertMany([
  {
    "_id": "sta1",
    "nazwa": "Szef firmy"
  },
  {
    "_id": "sta2",
    "nazwa": "Koordynator zamowien"
  },
  {
    "_id": "sta3",
    "nazwa": "Ksiegowy"
  },
  {
    "_id": "sta4",
    "nazwa": "Konserwator"
  },
  {
    "_id": "sta5",
    "nazwa": "Kierowca"
  },
  {
    "_id": "sta6",
    "nazwa": "Pracownik"
  }
]);
db.uzytkownik.insertMany([
  {
    "_id": "usr1",
    "email": "martin@gmail.com",
    "imie": "Marcin",
    "nazwisko": "Basak"
  },
  {
    "_id": "usr2",
    "email": "baran@gmail.com",
    "imie": "Jakub",
    "nazwisko": "Baran"
  },
  {
    "_id": "usr3",
    "email": "maister@gmail.com",
    "imie": "Mateusz",
    "nazwisko": "Adamczyk"
  },
  {
    "_id": "usr4",
    "email": "piter@gmail.com",
    "imie": "Piotr",
    "nazwisko": "Rumcajs"
  },
  {
    "_id": "usr5",
    "email": "tomek@gmail.com",
    "imie": "Tomek",
    "nazwisko": "Domek"
  },
  {
    "_id": "usr6",
    "email": "adrian@gmail.com",
    "imie": "Adrian",
    "nazwisko": "Pazur"
  },
  {
    "_id": "usr7",
    "email": "maciek@gmail.com",
    "imie": "Maciek",
    "nazwisko": "Bialy"
  },
  {
    "_id": "usr8",
    "email": "framuga@gmail.com",
    "imie": "Marcin",
    "nazwisko": "Framuga"
  }
]);
db.klient.insertMany([
  {
    "_id": "k1",
    "uzytkownik_id": "usr4"
  },
  {
    "_id": "k2",
    "uzytkownik_id": "usr5"
  },
  {
    "_id": "k3",
    "uzytkownik_id": "usr6"
  },
  {
    "_id": "k4",
    "uzytkownik_id": "usr7"
  },
  {
    "_id": "k5",
    "uzytkownik_id": "usr8"
  }
]);
db.zamowienie.insertMany([
  {
    "_id": "z1",
    "stan_zamowienia_id": "stz1",
    "klient_id": "k1",
    "adres_bazowy": "Bychawa 69A",
    "adres_docelowy": "Glusko Duze 1C",
    "masa": 500,
    "data_zlozenia": "2023-03-08 00:00:00",
    "data_realizacji": null,
    "cena": 1568
  },
  {
    "_id": "z2",
    "stan_zamowienia_id": "stz5",
    "klient_id": "k2",
    "adres_bazowy": "Zakrzowek 74B",
    "adres_docelowy": "Lublin Lipowa 1C",
    "masa": 800,
    "data_zlozenia": "2023-03-11 00:00:00",
    "data_realizacji": null,
    "cena": 2000
  },
  {
    "_id": "z3",
    "stan_zamowienia_id": "stz4",
    "klient_id": "k3",
    "adres_bazowy": "Lublin 24B",
    "adres_docelowy": "Lublin Muzyczna 23A",
    "masa": 300,
    "data_zlozenia": "2023-03-01 00:00:00",
    "data_realizacji": null,
    "cena": 476
  },
  {
    "_id": "z4",
    "stan_zamowienia_id": "stz1",
    "klient_id": "k4",
    "adres_bazowy": "Lublin 123A",
    "adres_docelowy": "Wysokie",
    "masa": 1000,
    "data_zlozenia": "2023-03-12 00:00:00",
    "data_realizacji": null,
    "cena": 2500
  },
  {
    "_id": "z5",
    "stan_zamowienia_id": "stz1",
    "klient_id": "k5",
    "adres_bazowy": "Warszawa 32A",
    "adres_docelowy": "Kraków Koszykarska 4",
    "masa": 1500,
    "data_zlozenia": "2023-03-12 00:00:00",
    "data_realizacji": null,
    "cena": 3500
  }
]);
