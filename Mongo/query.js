// 1. Wyświetlenie wszystkich stanowisk sortując po nazwie
db.stanowisko.find().sort({"nazwa": 1});

// 2. Wyświetlennie średniej ceny zamówień, najtańszego zamówienia oraz najdrozszego zamówienia
db.zamowienie.aggregate([
  {
    $group: {
      _id: null,
      avgCena: {$avg: "$cena"},
      minCena: {$min: "$cena"},
      maxCena: {$max: "$cena"}
    } 
  }
]);

// 3. Wyświetlenie z tabeli użytkownik wszystkie osoby o imieniu Piotr
db.uzytkownik.find({"imie": "Piotr"});

// 4. Wyswietlenie wszystkich danych pracownika o id p1
db.harmonogram.aggregate(
  [
    {$match: {"pracownik_id": "p1"}},
    {$lookup: {from: "pracownik", localField: "pracownik_id", foreignField: "_id", as: "pracownik"}},
    {$lookup: {from: "uzytkownik", localField: "pracownik.uzytkownik_id", foreignField: "_id", as: "uzytkownik"}},
    {$lookup: {from: "pracownik_stanowiska", localField: "pracownik_id", foreignField: "pracownik_id", as: "stanowiska"}},
    {$lookup: {from: "stanowisko", localField: "stanowiska.stanowisko_id", foreignField: "_id", as: "stanowisko"}},
    {$project: {"pracownik": 0, "stanowiska._id": 0, "stanowiska.pracownik_id": 0}}
  ]
);

// 5. Wyświetlenie wszystkich danych pojazdu o id poj1
db.pojazd.aggregate([
  {$match: {"_id": "poj1"}},
  {$lookup: {from: "pojazd_stan", localField: "_id", foreignField: "pojazd_id", as: "stany_techniczne"}},
  {$lookup: {from: "stan_techniczny", localField: "stany_techniczne.stan_techniczny_id", foreignField: "_id", as: "stan"}},
  {$lookup: {from: "dostepnosc_pojazdu", localField: "dostepnosc_id", foreignField: "_id", as: "dostepnosc"}},
  {$project: {"dostepnosc_id": 0, "stany_techniczne.pojazd_id": 0, "stany_techniczne._id": 0, "dostepnosc._id": 0}}
]);

// 6. Wyświetlenie id klienta, stanu zamówienia, adresu docelowego, ceny oraz id faktury zamówienia z1
db.zamowienie.aggregate([
  {$match: {"_id": "z1"}},
  {$lookup: {from: "stan_zamowienia", localField: "stan_zamowienia_id", foreignField: "_id", as: "stan"}},
  {$lookup: {from: "faktura", localField: "_id", foreignField: "zamowienie_id", as: "faktura"}},
  {$project: {"_id": 0, "stan_zamowienia_id": 0, "adres_bazowy": 0, "masa": 0, "data_zlozenia": 0, "data_realizacji": 0, "data_anulowania": 0, "faktura.zamowienie_id": 0}}
]);

//7. Wyswietlenie wszystkich zamowien ze stanem "do realizacji"
db.zamowienie.find({ stan_zamowienia_id: "stz1" })

//8. Wyświetlenie pojazdu którego masa maksymalnego załadunku jest największa.
db.pojazd.aggregate([
  { $group: { _id: null, maxladunek: { $max: "$max_ladunek" } } }
]);

//9. Wyswietlenie wszystkich zamowien klienta o id "k4"
db.klient.aggregate([
  {$match: {"_id": "k4"}},
  {$lookup: {from: "klient_zamowienia",localField: "_id",foreignField: "klient_id",as: "klient_zamowienia"}},
  {$lookup: {from: "zamowienie",localField: "klient_zamowienia.zamowienie_id",foreignField: "_id",as: "zamowienie"}
])
