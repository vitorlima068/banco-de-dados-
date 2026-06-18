--1. Criar banco de dados--
CREATE DATABASE ClinicaDB;

--2. Selecionar o banco--
USE ClinicaDB;

--3. Criar a tabela de turmas--
CREATE TABLE Turmas(
    id INT PRIMARY KEY IDENTITY(1,1), -- auto incremento
    nome VARCHAR(50) NOT NULL,
    turno VARCHAR(10)
);

--4. Criar a tabela de alunos--
CREATE TABLE alunos(
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) UNIQUE,
    turma_id INT,
    -- criando o relacionamento --
    FOREIGN KEY (turma_id) REFERENCES Turmas(id)
);

--5. Adicionsr itens nas tabelas (ddl)--
INSERT INTO Turmas (nome, turno) VALUES ('Progrmador Full-Stack', 'Manhã');
INSERT INTO Turmas (nome, turno) VALUES ('Progrmador Full-Stack', 'Tarde');

INSERT INTO Turmas (nome, email, turma_id) VALUES ('vitor', 'vitor.g.lima18@aluno.senai.br', 1);
INSERT INTO Turmas (nome, email, turma_id) VALUES ('gabriel', 'vgzinn777vitorgabi@gmail.com', 1);
INSERT INTO Turmas (nome, email, turma_id) VALUES ('ryan', 'ryan@docente.com', 1);

--6. Mostrar as duas tabelas (juntas)--
SELECT
 Alunos.nome AS 'Nome do Aluno'
 Alunos.email AS 'E-MAIL'
 *FROM Alunos

SELECT 
 Turmas.nome AS 'Nome da Turma'
 Turmas.turno AS 'turno'
 *FROM Turmas

