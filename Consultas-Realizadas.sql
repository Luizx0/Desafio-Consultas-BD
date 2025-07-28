
-- 1
SELECT Nome, Ano FROM Filmes;


-- 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;


-- 3
SELECT Nome, Ano, Duracao FROM Filmes Where Nome = 'De volta para o futuro';


-- 4
SELECT * FROM Filmes Where Ano = 1997;


-- 5
SELECT * FROM Filmes Where Ano > 2000;


-- 6
SELECT * FROM Filmes Where Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;


-- 7
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;


-- 8
SELECT * FROM Atores Where Genero = 'M';


-- 9
SELECT * FROM Atores Where Genero = 'F' ORDER BY PrimeiroNome ASC;


-- 10
SELECT F.Nome, G.Genero AS Genero
FROM Filmes F
Join Generos G on F.Id = G.Id;


-- 11
SELECT F.Nome, G.Genero AS Genero
FROM Filmes F
Join Generos G on F.Id = G.Id WHERE Genero = 'Mistério';


-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel AS Papel
FROM Filmes F
JOIN ElencoFilme E ON F.Id = E.IdFilme
JOIN Atores A ON A.Id = E.IdAtor;
