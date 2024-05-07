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

--Exercicio extra: Seu chefe pediu para você fazer um relatório em que se estipula um aumento de 23% no preço dos DVDs, 
neste relatório ele deseja o preço atual, o preço reajustado e a diferença para saber exatamente quanto o preço de cada filme possivelmente irá aumentar.--
  SELECT codDVD AS codigo, titDVD AS filmes, precoDVD AS preco, precoDVD*1.23 AS Reajustado , precoDVD*1.23-precoDVD AS diferenca FROM dvd;

--Criação da estrutura na tabela_2--
CREATE TABLE depto(
codDep NUMBER(2) PRIMARY KEY,
    nomeDep VARCHAR(15) NOT NULL,
loc VARCHAR(10) NOT NULL
);

--Insert´s de dados na tabela_2--
INSERT INTO depto VALUES (1,'Marketing','Ala 13');
INSERT INTO depto VALUES (2,'Financeira','Ala 13');
INSERT INTO depto VALUES (3,'Produção','Ala 2');
INSERT INTO depto VALUES (4,'Pessoal','Ala 7');
INSERT INTO depto VALUES (5,'Vendas','Ala 13');
INSERT INTO depto VALUES (6,'Contabilidade','Ala 2');
INSERT INTO depto VALUES (7,'Engenharia','Ala 21');
INSERT INTO depto VALUES (8,'Informática','Ala 21');

--Exercicio 1: Listar todos os departamentos, seus códigos e localizações;--
    SELECT codDep AS Codigo, nomeDep AS depatamentos, loc AS endereco FROM depto;

--Exercicio 2: Listar todos os nomes de departamento cadastrados;--
    SELECT  nomeDep AS depatamentos FROM depto;

--Exercicio 3: Listar todos os códigos de departamentos cadastrados;--
    SELECT codDep AS Codigo FROM depto;

--Exercicio 4: Listar todos os nomes de departramento e sua localização;--
    SELECT nomeDep AS Departamentos, loc AS Endereco FROM depto;

--Exercicio 5: Listar todos os nomes de departamentos, seus códigos que se localizam na Ala 2;--
    SELECT codDep AS Codigo ,nomeDep AS Departamentos, loc AS Endereco FROM depto WHERE loc = 'Ala 2';

--Exercicio 6: Listar todos os departamentos que se localizam na Ala 13;--
    SELECT nomeDep AS Departamento, loc AS Endereco FROM depto WHERE loc = 'Ala 13';

--Exercicio 7: Listar todos os departamentos com códigos acima de 4;--
    SELECT codDep AS Codigo, nomeDep AS Departamento FROM depto WHERE codDep >4;

--Exercicio 8: Listar todos os nomes de departamentos e localização com códigos = 2;--
    SELECT codDep AS Codigo, nomeDep AS Departamento FROM depto WHERE codDep = 2;
