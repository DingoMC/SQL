INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (1, "martin@gmail.com", "Marcin", "Basak");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (2, "baran@gmail.com", "Jakub", "Baran");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (3, "maister@gmail.com", "Mateusz", "Adamczyk");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (4, "piter@gmail.com", "Piotr", "Rumcajs");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (5, "tomek@gmail.com", "Tomek", "Domek");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (6, "adrian@gmail.com", "Adrian", "Pazur");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (7, "maciek@gmail.com", "Maciek", "Bialy");
INSERT INTO `mydb`.`uzytkownik` (`iduzytkownik`, `email`, `imie`, `nazwisko`) VALUES (8, "framuga@gmail.com", "Marcin", "Framuga");

INSERT INTO `mydb`.`stan_zamowienia` (`idstan_zamowienia`, `nazwa`) VALUES (1, "Do realizacji");
INSERT INTO `mydb`.`stan_zamowienia` (`idstan_zamowienia`, `nazwa`) VALUES (2, "W trakcie realizacji");
INSERT INTO `mydb`.`stan_zamowienia` (`idstan_zamowienia`, `nazwa`) VALUES (3, "Zrealizowane");
INSERT INTO `mydb`.`stan_zamowienia` (`idstan_zamowienia`, `nazwa`) VALUES (4, "Anulowane");
INSERT INTO `mydb`.`stan_zamowienia` (`idstan_zamowienia`, `nazwa`) VALUES (5, "Oplacone");

INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (1, "Szef firmy");
INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (2, "Koordynator zamowien");
INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (3, "Ksiegowy");
INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (4, "Konserwator");
INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (5, "Kierowca");
INSERT INTO `mydb`.`stanowisko` (`idstanowisko`, `nazwa`) VALUES (6, "Pracownik");

INSERT INTO `mydb`.`dostepnosc_pojazdu` (`iddostepnosc_pojazdu`, `nazwa`) VALUES (1, "Dostepny");
INSERT INTO `mydb`.`dostepnosc_pojazdu` (`iddostepnosc_pojazdu`, `nazwa`) VALUES (2, "Niedostepny");

INSERT INTO `mydb`.`stan_techniczny` (`idstan_techniczny`, `nazwa`) VALUES (1, "Sprawny");
INSERT INTO `mydb`.`stan_techniczny` (`idstan_techniczny`, `nazwa`) VALUES (2, "Uszkodzony");
INSERT INTO `mydb`.`stan_techniczny` (`idstan_techniczny`, `nazwa`) VALUES (3, "Do ubezpieczenia");
INSERT INTO `mydb`.`stan_techniczny` (`idstan_techniczny`, `nazwa`) VALUES (4, "Do przegladu");

INSERT INTO `mydb`.`klient` (`idklient`, `iduzytkownik`) VALUES (1, 4);
INSERT INTO `mydb`.`klient` (`idklient`, `iduzytkownik`) VALUES (2, 5);
INSERT INTO `mydb`.`klient` (`idklient`, `iduzytkownik`) VALUES (3, 6);
INSERT INTO `mydb`.`klient` (`idklient`, `iduzytkownik`) VALUES (4, 7);
INSERT INTO `mydb`.`klient` (`idklient`, `iduzytkownik`) VALUES (5, 8);

INSERT INTO `mydb`.`zamowienie`
(`idzamowienie`,
`stan_zamowienia`,
`klient`,
`adres_bazowy`,
`adres_docelowy`,
`masa`,
`data_zlozenia`,
`cena`)
VALUES
(1, 1, 1, "Bychawa 69A", "Glusko Duze 1C", 500.00, "2023-03-08", 1568.0);

INSERT INTO `mydb`.`zamowienie`
(`idzamowienie`,
`stan_zamowienia`,
`klient`,
`adres_bazowy`,
`adres_docelowy`,
`masa`,
`data_zlozenia`,
`cena`)
VALUES
(2, 5, 2, "Zakrzowek 74B", "Lublin Lipowa 1C", 800.00, "2023-03-11", 2000.0);

INSERT INTO `mydb`.`zamowienie`
(`idzamowienie`,
`stan_zamowienia`,
`klient`,
`adres_bazowy`,
`adres_docelowy`,
`masa`,
`data_zlozenia`,
`cena`)
VALUES
(3, 4, 3, "Lublin 24B", "Lublin Muzyczna 23A", 300.00, "2023-03-01", 476.0);

INSERT INTO `mydb`.`zamowienie`
(`idzamowienie`,
`stan_zamowienia`,
`klient`,
`adres_bazowy`,
`adres_docelowy`,
`masa`,
`data_zlozenia`,
`cena`)
VALUES
(4, 1, 4, "Lublin 123A", "Wysokie", 1000.00, "2023-03-12", 2500.0);

INSERT INTO `mydb`.`zamowienie`
(`idzamowienie`,
`stan_zamowienia`,
`klient`,
`adres_bazowy`,
`adres_docelowy`,
`masa`,
`data_zlozenia`,
`cena`)
VALUES
(5, 1, 5, "Warszawa 32A", "Kraków Koszykarska 4", 1500.00, "2023-03-12", 3500.0);

INSERT INTO `mydb`.`faktura` (`idfaktura`, `idzamowienie`) VALUES (1, 1);
INSERT INTO `mydb`.`faktura` (`idfaktura`, `idzamowienie`) VALUES (2, 3);
INSERT INTO `mydb`.`faktura` (`idfaktura`, `idzamowienie`) VALUES (3, 5);

INSERT INTO `mydb`.`pracownik` (`idpracownik`, `stanowisko`, `iduzytkownik`, `idzamowienie`) VALUES
(1, 1, 1, NULL);
INSERT INTO `mydb`.`pracownik` (`idpracownik`, `stanowisko`, `iduzytkownik`, `idzamowienie`) VALUES
(2, 2, 2, NULL);
INSERT INTO `mydb`.`pracownik` (`idpracownik`, `stanowisko`, `iduzytkownik`, `idzamowienie`) VALUES
(3, 6, 3, 4);

INSERT INTO `mydb`.`harmonogram` (`idharmonogram`, `data_od`, `data_do`, `pracownik`) VALUES
(1, "2023-03-10 07:30:00", "2023-03-10 15:30:00", 1);
INSERT INTO `mydb`.`harmonogram` (`idharmonogram`, `data_od`, `data_do`, `pracownik`) VALUES
(2, "2023-03-09 07:30:00", "2023-03-09 15:30:00", 2);
INSERT INTO `mydb`.`harmonogram` (`idharmonogram`, `data_od`, `data_do`, `pracownik`) VALUES
(3, "2023-03-12 09:00:00", "2023-03-12 17:00:00", 1);
INSERT INTO `mydb`.`harmonogram` (`idharmonogram`, `data_od`, `data_do`, `pracownik`) VALUES
(4, "2023-03-10 07:30:00", "2023-03-10 15:30:00", 2);
INSERT INTO `mydb`.`harmonogram` (`idharmonogram`, `data_od`, `data_do`, `pracownik`) VALUES
(5, "2023-03-12 08:00:00", "2023-03-12 16:00:00", 3);


INSERT INTO `mydb`.`pojazd` (`idpojazd`, `max_ladunek`, `dostepnosc`, `stan_techniczny`, `idzamowienie`) VALUES
(1, 3000, 1, 1, NULL);
INSERT INTO `mydb`.`pojazd` (`idpojazd`, `max_ladunek`, `dostepnosc`, `stan_techniczny`, `idzamowienie`) VALUES
(2, 1500, 1, 1, NULL);
INSERT INTO `mydb`.`pojazd` (`idpojazd`, `max_ladunek`, `dostepnosc`, `stan_techniczny`, `idzamowienie`) VALUES
(3, 2000, 1, 1, NULL);
INSERT INTO `mydb`.`pojazd` (`idpojazd`, `max_ladunek`, `dostepnosc`, `stan_techniczny`, `idzamowienie`) VALUES
(4, 33000, 1, 1, NULL);
INSERT INTO `mydb`.`pojazd` (`idpojazd`, `max_ladunek`, `dostepnosc`, `stan_techniczny`, `idzamowienie`) VALUES
(5, 15000, 1, 1, NULL);
