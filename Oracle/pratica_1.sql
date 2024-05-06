--Criação da estrutura da tabela--
CREATE TABLE Funcionario(
    codFunc NUMBER(3) PRIMARY KEY,
    nomeFunc VARCHAR(50) NOT NULL,
    salario NUMBER(10,2) NOT NULL,
)

--Exercicio 1: Incluir a coluna telefone com 12 caracteres, não nula, na tabela funcionário;--
    ALTER TABLE funcionario ADD telefone VARCHAR(12) NOT NULL;

--Exercicio 2: Alterar o tamanho do campo nomeFunc para 70 caracteres;--
    ALTER TABLE funcionario MODIFY nomeFunc VARCHAR(70);

--Exercicio 3: Alterar a coluna telefone para números inteiros;--
    ALTER TABLE funcionario MODIFY telefone NUMBER(12);

--Exercicio 4: Alterar a coluna salário para aceitar valores nulos;--
    ALTER TABLE funcionario MODIFY salario NULL;

--Exercicio 5: Incluir o campo email com 30 carateres na tabela funcionario;--
    ALTER TABLE funcionario ADD email VARCHAR(30);

--Exercicio 6: Trocar o nome do campo salário para sal;--
    ALTER TABLE funcionario RENAME COLUMN salario TO sal;

--Exercicio 7: Trocar nome da tabela funcionario para colaborador;--
    RENAME funcionario TO colaborador;

--Exercicio 8: Incluir a coluna idade para aceitar idade maior ou igual;--
    ALTER TABLE colaborador ADD idade NUMBER(3) CHECK(idade>=16);

--Exercicio 9: Incluir o campo data de admissão para aceitar a data do sistema como padrão;--
    ALTER TABLE colaborador ADD dataEmiss DATE DEFAULT SYSDATE;

--Exercicio 10: Excluir o campo telefone;--
    ALTER TABLE colaborador DROP COLUMN telefone;

--Exercicio 11: Excluir a tabela colaborador;--
    DROP TABLE colaborador;
