
SELECT * FROM Filmes
-- 1 
SELECT 
    NOME,
    ANO
FROM Filmes

-- 2
SELECT 
    NOME,
    ANO 
FROM Filmes 
ORDER BY ANO 

-- 3
SELECT 
*
FROM Filmes
WHERE NOME = 'De Volta para o Futuro'

-- 4 

SELECT
    *
FROM Filmes
WHERE ANO = '1997'

-- 5

SELECT 
    *
FROM Filmes
WHERE ANO >= '2000'

--6 

SELECT
    *
FROM Filmes
WHERE DURACAO > '100' AND DURACAO < '150'
ORDER BY DURACAO 

-- 7 

SELECT 
    Ano,
    COUNT(*) Quantidade,
    MAX(Duracao) DuracaoMaxima
FROM Filmes
GROUP BY Ano 
ORDER BY DuracaoMaxima DESC  

-- 8 

SELECT 
    *
FROM Atores
WHERE Genero = 'M'
ORDER BY PrimeiroNome, UltimoNome 

-- 9

SELECT
    *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome, UltimoNome 

-- 10

SELECT 
   Filmes.Nome,
   Generos.Genero
   
FROM 
    Filmes

INNER JOIN Generos 
    ON Filmes.Id = Generos.Id

-- 11

SELECT 
    Filmes.Nome,
    Generos.Genero

FROM Filmes

INNER JOIN 
    [FilmesGenero] ON Filmes.Id = [FilmesGenero].IdFilme

INNER JOIN 
    Generos ON [FilmesGenero].IdGenero = Generos.Id

WHERE 
    Generos.Genero = 'Mistério'

-- 12

SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel

FROM 
    Filmes

INNER JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id 




