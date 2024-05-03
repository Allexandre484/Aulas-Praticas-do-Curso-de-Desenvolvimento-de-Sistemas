CREATE TABLE Funcionario(
    codFunc NUMBER(3) PRIMARY KEY,
    nomeFunc VARCHAR(50) NOT NULL,
    salario NUMBER(10,2) NOT NULL,
)

1) ALTER TABLE funcionario ADD telefone VARCHAR(12) NOT NULL;
DESC funcionario;

2) ALTER TABLE funcionario MODIFY nomeFunc VARCHAR(70);
DESC funcionario;

3) ALTER TABLE funcionario MODIFY telefone NUMBER(12);
DESC funcionario;

4) ALTER TABLE funcionario MODIFY salario NULL;
DESC funcionario;

5) ALTER TABLE funcionario ADD email VARCHAR(30);
DESC funcionario;

6) ALTER TABLE funcionario RENAME COLUMN salario TO sal;
DESC funcionario;

7) RENAME funcionario TO colaborador;
DESC colaborador;

8) ALTER TABLE colaborador ADD idade NUMBER(3) CHECK(idade>=16);
DESC colaborador;

9) ALTER TABLE colaborador ADD dataEmiss DATE DEFAULT SYSDATE;
DESC colaborador;

10) ALTER TABLE colaborador DROP COLUMN telefone;
DESC colaborador;

11) DROP TABLE colaborador;
