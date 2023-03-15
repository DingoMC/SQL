SELECT * FROM `mydb`. stanowisko ORDER BY nazwa;
SELECT AVG(cena), MIN(cena), MAX(cena) FROM `mydb`. zamowienie;
SELECT * FROM `mydb`. uzytkownik WHERE imie=`Piotr`;

SELECT u.imie, u.nazwisko, p.stanowisko FROM `mydb` . harmonogram 
LEFT JOIN `mydb`.pracownik p ON harmonogram.pracownik = p.idpracownik
LEFT JOIN  `mydb`.uzytkownik u ON pracownik.iduzytkownik = u.iduzytkownik
WHERE data_od > '2023-03-10';


SELECT * FROM `mydb`.`pracownik` LEFT JOIN `mydb`.`zamowienie` ON pracownik.idzamowienie = zamowienie.idzamowienie;
SELECT * FROM `mydb`.`pracownik` LEFT JOIN `mydb`.`stanowisko` ON pracownik.stanowisko = stanowisko.idstanowisko LEFT JOIN `mydb`.`uzytkownik`  ON uzytkownik.iduzytkownik = pracownik.iduzytkownik
