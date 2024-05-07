--Criação da estrutura da tabela_1:--
CREATE TABLE depto(
idDep NUMBER(2)PRIMARY KEY,
nomeDep VARCHAR(20) NOT NULL,
loc VARCHAR(5) NOT NULL
);

--Insert de dados na tabela_1--
INSERT INTO depto VALUES (1,'Marketing','SP');
INSERT INTO depto VALUES (2,'Financeiro','SP');
INSERT INTO depto VALUES (2,'Informática','MG');
INSERT INTO depto VALUES (4,'Prodrução','SP');
INSERT INTO depto VALUES (5,'Vendas','RJ');
INSERT INTO depto VALUES (6,'Compra','MG');
INSERT INTO depto VALUES (7,'RH','RH');
INSERT INTO depto VALUES (8,'Almoxarifado','RJ');
INSERT INTO depto VALUES (9,'Engenharia','MG');
INSERT INTO depto VALUES (10,'Contabilidade','SP');

--Criação da estrutura da tabela_2:--
CREATE TABLE funcionario(
    idFunc NUMBER(2) PRIMARY KEY,
    nomeFunc VARCHAR(30) NOT NULL,
    cargo VARCHAR(15) NOT NULL,
    dataAdm DATE NOT NULL,
    salario NUMBER(7,2) NOT NULL,
    idDep NUMBER(2) NOT NULL    
);

--insert de dados na tabela_2--
INSERT INTO funcionario VALUES(1,'Antônio Nunes','Progamador',TO_DATE('2009-10-10','YYYY-MM-DD'),'3400,00'3);
INSERT INTO funcionario VALUES(2,'Vilmar Almeida','Analista',TO_DATE('2012-01-01','YYYY-MM-DD'),'4300,00',5);
INSERT INTO funcionario VALUES(3,'Rogério Meira','Gerente',TO_DATE('1999-04-10','YYYY-MM-DD'),'6500,00',1);
INSERT INTO funcionario VALUES(4,'Paulo Gonçalves','Auxiliar',TO_DATE('2008-02-09','YYYY-MM-DD'),'1200,00',2);
INSERT INTO funcionario VALUES(5,'Mauro Mendes','Gerente',TO_DATE('1999-06-09','YYYY-MM-DD'),'6400,00',4);
INSERT INTO funcionario VALUES(6,'Ana Paula','Presidente',TO_DATE('1996-04-09','YYYY-MM-DD'),'9900,00',5);
INSERT INTO funcionario VALUES(7,'Mauricio Souza','Auxiliar',TO_DATE('2009-02-03-','YYYY-MM-DD'),'1500,00',6);
INSERT INTO funcionario VALUES(8,'José ignácio','Supervisor',TO_DATE('1997-02-06','YYYY-MM-DD'),'4400,00',6);
INSERT INTO funcionario VALUES(9,'Luis Serra','Programador',TO_DATE('2010-07-08','YYYY-MM-DD'),'3200,00',3);

--Exercicio 1: Listar os cargos que existem na empresa (sem duplicidade) em ordem alfabética;--
  SELECT DISTINCT cargo AS Funcao FROM funcionario ORDER BY cargo ASC;

--Exercicio 2: Listar o código, nome e salário dos funcionarios em ordem alfabética pelo nome;--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario, salario FROM funcionario ORDER BY nomeFunc ASC;

--Exercicio 3: Listar o código, nome e salário dos funcionarios em ordem do maior para o menor salário da empresa;--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario, salario FROM funcionario ORDER BY salario DESC;

--Exercicio 4: Listar o nome do funcionário, código do departamento e data de emissão na empresa, ordenado o resultado pela data de admissão;--
  SELECT nomeFunc AS Funcionario, idDep AS Codigo_do_departamento, dataAdm AS Data_de_admissao FROM funcionario ORDER BY dataAdm;

--Exercicio 5: Listar as localizações dos departamento existentes, sem repetição e em ordem alfabética;--
  SELECT DISTINCT loc AS Localizacao FROM depto ORDER BY loc ASC;

--Exercicio 6: Listar os códigos e nome dos funcionarios que ganham entre R$3000,00 e R$5000,00;--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario, salario FROM funcionario WHERE salario >= 3000 AND salario <= 5000;

--Exercicio 7: Listar o código do funcionário o nome a data de incio e salário somente dos funcionarios que são gerentes. O resultado deve ser apresentado em ordem alfabética;--
  SELECT idFunc AS Codigo, nomeFunc AS Funcionario, cargo AS Funcao, salario, dataAdm AS data_de_admissao FROM funcionario WHERE cargo = 'Gerente' ORDER BY nomeFunc ASC;

--Exercicio 8: Listar os departamentos da empresa que estão localizados no estado de são Paulo ou no estado do Rio de Janeiro em ordem alfabética;--
  SELECT nomeDep AS Departamento, loc AS Localizacao FROM depto WHERE loc = 'SP' OR loc = 'RJ' ORDER BY nomeDep ASC;

