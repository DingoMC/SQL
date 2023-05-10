use mydb;
db.createCollection("dostepnosc_pojazu");
db.createCollection("stan_techniczny");
db.createCollection("stan_zamowienia");
db.createCollection("stanowisko");
db.createCollection("uzytkownik");
db.createCollection("klient");
db.createCollection("pracownik");
db.createCollection("zamowienie");
db.createCollection("faktura");
db.createCollection("harmonogram");
db.createCollection("pojazd");
db.createCollection("pracownik_zamowienia");
db.createCollection("pracownik_stanowiska");
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
