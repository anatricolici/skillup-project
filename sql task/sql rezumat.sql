## creare baza de date
create database rezumat;

## utilizarea bazei de date dorite de pe server
use rezumat;

####CRUD - create, read, update, delete 

###doua tipuri de instructiuni

## 1 instructiuni asupra structurii tabelelor
# CREATE - creare tabel
CREATE TABLE telefoane (
	id INT NOT NULL AUTO_INCREMENT,
	model CHAR(30) NOT NULL,
	PRIMARY KEY (id)
); 

# READ - citire (analiza) structura tebel
SHOW COLUMNS FROM telefoane;

# UPDATE - modificare structura tabel
ALTER TABLE telefoane add column prets int;

# DELETE - stergere tabel
DROP TABLE telefoane;


## 2 instructiuni asupra datele tabelelor
# CREATE - creaza (insereaza) o inregistrare noua in tabel (o linie) 
INSERT INTO telefoane (model, prets) VALUES ('Xiaomi 9t', 2300);

# READ - citeste (afiseaza sau seleteaza) datele din tabel
SELECT * FROM telefoane;

# UPDATE - modificare date in tabel
UPDATE telefoane set model = "Samsung" WHERE id = 1;

# DELETE - stergere date din tabel
DELETE FROM telefoane WHERE id = 1;

