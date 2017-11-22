CREATE SCHEMA pratica05; use pratica05;

CREATE TABLE dados_multimidia (
Código INTEGER,
Nome VARCHAR(30),
Tipo VARCHAR(20),
Dados LONGBLOB,
PRIMARY KEY (Código));


INSERT INTO dados_multimidia (Código,Nome,Tipo,Dados) VALUES (1,'Coala','jpg',LOAD_FILE("C://ProgramData//MySQL//MySQL Server 5.7//Uploads//Koala.jpg")),(2,'Tulipa','jpg',LOAD_FILE('C://ProgramData//MySQL//MySQL Server 5.7//Uploads//Tulips.jpg')),(3,'Penguins','jpg',LOAD_FILE('C://ProgramData//MySQL//MySQL Server 5.7//Uploads//Penguins.jpg'));

SELECT * FROM dados_multimidia;

SELECT Dados INTO DUMPFILE "C://ProgramData//MySQL//MySQL Server 5.7//Uploads//Koala2.jpg" 
FROM dados_multimidia WHERE Código=1;

SELECT Dados INTO DUMPFILE "C://ProgramData//MySQL//MySQL Server 5.7//Uploads//Tulips2.jpg" 
FROM dados_multimidia WHERE Código=2;

SELECT Dados INTO DUMPFILE "C://ProgramData//MySQL//MySQL Server 5.7//Uploads//peguins2.jpg" 
FROM dados_multimidia WHERE Código=3;