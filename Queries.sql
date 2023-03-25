SELECT * FROM `mydb`. stanowisko ORDER BY nazwa;

SELECT AVG(cena), MIN(cena), MAX(cena) FROM `mydb`. zamowienie;

SELECT * FROM `mydb`. uzytkownik WHERE imie="Piotr";


SELECT u.imie, u.nazwisko, s.nazwa, harmonogram.data_od, harmonogram.data_do FROM `mydb`.harmonogram 
LEFT JOIN `mydb`.pracownik p ON harmonogram.pracownik = p.idpracownik
LEFT JOIN `mydb`.uzytkownik u ON p.iduzytkownik = u.iduzytkownik
LEFT JOIN `mydb`.stanowisko s ON p.stanowisko = s.idstanowisko
WHERE data_do < "2023-03-10"

SELECT u.imie, u.nazwisko, p.stanowisko FROM `mydb`.harmonogram 
LEFT JOIN `mydb`.pracownik p ON harmonogram.pracownik = p.idpracownik
LEFT JOIN  `mydb`.uzytkownik u ON p.iduzytkownik = u.iduzytkownik
WHERE data_od > '2023-03-10';

SELECT idpracownik, stanowisko, iduzytkownik, klient, data_zlozenia  
FROM `mydb`.`pracownik` LEFT JOIN `mydb`.`zamowienie` 
ON pracownik.idzamowienie = zamowienie.idzamowienie;

SELECT * FROM `mydb`.`pracownik` LEFT JOIN `mydb`.`stanowisko` 
ON pracownik.stanowisko = stanowisko.idstanowisko LEFT JOIN `mydb`.`uzytkownik` 
ON uzytkownik.iduzytkownik = pracownik.iduzytkownik
WHERE idzamowienie IS NOT NULL


SELECT stan_techniczny.nazwa, p.idpojazd, p.max_ladunek , p.dostepnosc FROM `mydb`. stan_techniczny
LEFT JOIN `mydb`. pojazd p ON stan_techniczny.idstan_techniczny = p.stan_techniczny
WHERE p.idpojazd IS NOT NULL


SELECT klient.idklient, z.stan_zamowienia, z.adres_docelowy, z.cena, f.idfaktura FROM `mydb`. klient
LEFT JOIN `mydb`. zamowienie z ON klient.idklient = z.klient
LEFT JOIN `mydb`. faktura f ON z.idzamowienie = f.idzamowienie
ORDER BY stan_zamowienia


SELECT p.max_ladunek, dostepnosc_pojazdu.nazwa FROM `mydb`. dostepnosc_pojazdu
LEFT JOIN `mydb`. pojazd p on dostepnosc_pojazdu.iddostepnosc_pojazdu = p.dostepnosc
where max_ladunek IS NOT NULL
