--1. Criar banco de dados--
CREATE DATABASE EscolaDB;

--2. Selecionar o banco--
USE EscolaDB;

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

