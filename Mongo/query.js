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
    {$lookup: {from: "stanowisko", localField: "stanowiska.stanowisko_id", foreignField: "_id", as: "stanowisko"}}
  ]
);

// 5. Wyświetlenie wszystkich danych pojazdu o id poj1
db.pojazd.aggregate([
  {$match: {"_id": "poj1"}},
  {$lookup: {from: "pojazd_stan", localField: "_id", foreignField: "pojazd_id", as: "stany_techniczne"}},
  {$lookup: {from: "stan_techniczny", localField: "stany_techniczne.stan_techniczny_id", foreignField: "_id", as: "stan"}},
  {$lookup: {from: "dostepnosc_pojazdu", localField: "dostepnosc_id", foreignField: "_id", as: "dostepnosc"}}
]);
