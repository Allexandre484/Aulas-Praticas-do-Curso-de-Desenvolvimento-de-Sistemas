--Criação da estrutura da tabela_1--
CREATE TABLE funcionario(
    idFunc NUMBER(4)PRIMARY KEY,
    nomeFunc VARCHAR(30)NOT NULL,
    salario NUMBER(7,2) NOT NULL,
    comissao NUMBER(7,2)    
);

--Insert de dados na tabela_1
INSERT INTO funcionario VALUES(1,'Fernanda Lima',3400.00,600.00);
INSERT INTO funcionario VALUES(2,'Vilmar Almeida',4300.00,200.00);
INSERT INTO funcionario VALUES(3,'Silvio Santos',4500.00,NULL);
INSERT INTO funcionario VALUES(4,'Paulo Gonçalves',1200.00,640.00);
INSERT INTO funcionario VALUES(5,'Lima Duarte',3400.00,670.00);
INSERT INTO funcionario VALUES(6,'Ana Paula',8800.00,344.00);
INSERT INTO funcionario VALUES(7,'Mauricio Souza',4500.00,NULL);
INSERT INTO funcionario VALUES(8,'Victor Lima',3400.000,440.00);
INSERT INTO funcionario VALUES(9,'Bento Ribeiro',8200.00,640.00);

--Parte 1: Usando as query´s BEETWEEN, IS e IN:
--Exercicio 1: Listar os nomes e salários dos funcionarios que ganham que ganham entre R$1000,00 e R$4000,00 de salário;--
  SELECT nomeFunc AS Funcionario, salario FROM funcionario WHERE salario BETWEEN 1000.00 AND 4000.00;

--Exercicio 2: Listar os dados dos funcionarios que não ganham entre R$5000,00 e R$1000,00 de salário;--
  SELECT idFunc AS Codigo,nomeFunc AS Funcionario, salario,comissao FROM funcionario WHERE salario NOT BETWEEN 5000.00 AND 10000.00;

--Exercicio 3: Listar os nomes e comissões dos funcionários que ganham comissão de R$200,00 e de R$640,00;--
  SELECT nomeFunc AS Funcionario,comissao FROM funcionario WHERE comissao IN(200.00,640.00);

--Exercicio 4: Listar os dados dos funcionários  que não ganham salário de R$3400,00 e de R$4500,00;--
  SELECT idFunc AS codigo,nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE salario NOT IN(3400.00,4500.00);

--Exercicio 5: Listar os nomes dos funcionários que não ganham que não ganham comissão;--
  SELECT nomeFunc AS Funcionario,comissao FROM funcionario WHERE comissao IS NULL;


--Parte 2: Usando LIKE:-- 
--Exercicio 6: Listar os nomes dos funcionários que ganham comissão;--
  SELECT nomeFunc AS Funcionario,comissao FROM funcionario WHERE comissao IS NOT NULL;

--Exercicio 7: Listar os dados dos funcioários cujo nome se inicie por "A";--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE nomeFunc LIKE 'A%';

--Exercicio 8: Listar os dados dos funcionários cujo nome se finalize por "S";--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE nomeFunc LIKE '%s';

--Exercicio 9: Listar os dados dos funcionários cuja segunda cuja segunda letra do nome seja "I";--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE nomeFunc LIKE '_i%';

--Exercicio 10: Listar os nomes que não tenham a letra "i" no nome;--
  SELECT nomeFunc AS Funcionario FROM funcionario WHERE nomeFunc NOT LIKE '%i%';

--Exercicio 11: Listar os nomes dos funcionarios que tenham a letra "e" ou a letra "u";--
  SELECT nomeFunc AS Funcionario FROM funcionario WHERE nomeFunc LIKE '%e%' OR nomeFunc LIKE '%u%';

--Exercicio 12: Listar os nomes dos funcionários que tenham a letra "e" e a letra "u" no nome;--
  SELECT nomeFunc AS Funcionario FROM funcionario WHERE nomeFunc LIKE '%e%' AND nomeFunc LIKE '%u%';

--Exercicio 13: Listar os dados dos funcionários cuja a letra "i" no nome seja a antepenúltima.;--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE nomeFunc LIKE '%t__';

--Exercicio 14: Listar os dados dos funcionários que tenham o nome "Lima";--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario,salario,comissao FROM funcionario WHERE nomeFunc LIKE '%Lima';


--Criação da estrutura da tabela_2;--
CREATE TABLE formula1(
codPiloto NUMBER(3)PRIMARY KEY,
    piloto VARCHAR(30) NOT NULL,
    equipe VARCHAR(20) NOT NULL,
pais VARCHAR(20),
    numVitoria NUMBER(3),
    dataNasc DATE NOT NULL
);

--Insert de dados na tabela_2--
INSERT INTO formula1 VALUES(1,'Lewis Hamilton','Sauber','Inglaterra',33,TO_DATE('1985-01-07','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(2,'Aylton Senna','Williams','Brasil',41,TO_DATE('1960-03-01','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(3,'Felipe Masa','Williams','Brasil',11,TO_DATE('1981-04-25','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(4,'Carlos Sainz','Toro Rosso','Espanha',NULL,TO_DATE('1971-02-24','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(5,'Emerson Fittipaldi','Copersucar','Brasil',22,TO_DATE('1946-12-12','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(6,'Robert Kubica','Renault','Polônia',NULL,TO_DATE('1984-12-07','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(7,'Sérgio Perez','Force India','México',NULL,TO_DATE('1990-01-26','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(8,'','','',32,TO_DATE('1981-07-29','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(9,'','','',23,TO_DATE('1952-08-17','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(10,'','','',11,TO_DATE('1972-05-23','YYYY-MM-DD'));
INSERT INTO formula1 VALUES(11,'','','',16,TO_DATE('1985-06-27','YYYY-MM-DD'));


