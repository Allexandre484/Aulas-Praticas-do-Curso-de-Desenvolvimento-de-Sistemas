--Criação da estrutura da tabela_1--
CREATE TABLE dvd(
codDVD NUMBER(3) PRIMARY KEY,
    titDVD VARCHAR(20) NOT NULL,
    precoDVD NUMBER(5,2) NOT NULL
);

--Insert´s de dados na tabela_1--
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES(100,'Extraordinário',39.99);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (101,'A forma da Água',29.55);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (102,'Policia Federal', 19.44);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (103,'Star Wars',39.88);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (104,'Batman vs Superman',17.99);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (105,'Steve Jobs',29.33);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (106,'Pela Janela',39.88);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (107,'Mulher Maravilha',29.99);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (108,'O regresso',49.87);
INSERT INTO dvd (codDVD,titDVD,precoDVD) VALUES (109,'A cabana',29.55);

--Exercicio 1: Liste todos os filmes inseridos com códigos inferiores à 106;--
  SELECT * FROM dvd WHERE codDVD < 106;

--Exercicio 2: Altere o preço do DVD de código 105 para R$24,99;--
  UPDATE dvd SET precoDVD = 24.99 WHERE codDVD = 105;

--Exercicio 3: Listar o titulo, preço atual e o preço novo, supondo que fosse 20% de aumento, em todos os DVD´s;--
  SELECT titDVD, precoDVD, precoDVD * 1.2 FROM dvd;

--Exercicio 4: Reajuste o preço do filme "Batman vs Superman" em 12%;--
  UPDATE dvd SET precoDVD = precoDVD * 1.12 WHERE titDVD = 'Batman vs Superman';

--Exercicio 5: Exclua os filmes com preço à R$20,00;--
  DELETE FROM dvd WHERE precoDVD < 20.00;

--Exercicio 6: Excluir o filme: "O Regresso";--
  DELETE FROM dvd WHERE titDVD = 'O regresso';

--Exercicio 7: Dê um desconto de 20% no filme "Star Wars";--
  UPDATE dvd SET precoDVD = precoDVD * 0.80  WHERE titDVD ='Star Wars';
