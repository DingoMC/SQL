SELECT * FROM `mydb`. stanowisko ORDER BY nazwa;
SELECT AVG(cena), MIN(cena), MAX(cena) FROM `mydb`. zamowienie;
SELECT * FROM `mydb`. uzytkownik WHERE imie=`Piotr`;
SELECT * FROM `mydb` . harmonogram LEFT JOIN `mydb`. pracownik WHERE data_od > '2023-03-10';
