CREATE DATABASE db_adonet
GO
USE db_adonet
GO
CREATE TABLE tbl_Cliente(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(50),
	Sexo CHAR(1),
	DataNascimento DATE 
)
GO
CREATE PROCEDURE spInserirCliente
	@nome VARCHAR(60),
	@sexo CHAR,
	@dtNasc	DATE
	AS
	BEGIN
		INSERT INTO tbl_Cliente (Nome, Sexo, DataNascimento) VALUES (@nome, @sexo, @dtNasc)
	END
GO

EXEC spInserirCliente 'caio', 'M', '11/11/1996'
SELECT * FROM tbl_Cliente