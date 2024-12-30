SELECT 
	Nome,
	Ano
FROM
	Filmes

--2

SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
ORDER BY 
	Ano

--3

SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Nome = 'De volta para o futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Ano = 1997

--5

SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Ano > 2000

--6

SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Duracao BETWEEN 101 AND 149
ORDER BY 
	Duracao ASC;

--7
SELECT 
    Ano,
	COUNT(Ano) AS Quantidade,
	SUM(Duracao) AS DuracaoTotal
FROM
	Filmes
GROUP BY 
	Ano
ORDER BY 
	DuracaoTotal DESC;

--8

SELECT 
	*
FROM
	Atores
WHERE
	Genero = 'M';

--9
SELECT 
	*
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY 
	PrimeiroNome ASC

--10

SELECT 
	Nome,
	Genero
FROM 
	Filmes INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) LEFT JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id)

--11
SELECT 
	Nome,
	Genero
FROM 
	Filmes INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) LEFT JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id)
WHERE 
	Genero = 'Mistério'

--12
SELECT
  Filmes.Nome AS Filme,
  Atores.PrimeiroNome AS PNome,
  Atores.UltimoNome AS SNome,
  ElencoFilme.Papel AS Papel
 FROM 
	Atores INNER JOIN ElencoFilme ON (Atores.Id = ElencoFilme.IdAtor) LEFT JOIN Filmes ON (ElencoFilme.IdFilme =Filmes.Id)