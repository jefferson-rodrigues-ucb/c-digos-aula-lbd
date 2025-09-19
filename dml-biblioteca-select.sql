create database biblioteca if not exists;

use biblioteca;

-- LIKE
select * from Autor
where nome like 'F%';

-- IN
select * from Livro
where ano in (2025, 2026, 2027);

-- IN subquery
select * from Livro
where autorID in (select id from Autor where nome like "F%");

-- BETWEEN
select * from Pessoa
where data_nasc BETWEEN "2000-01-01" AND "2005-12-31";

-- MIN/MAX
select min(ano) as antigo
from Livro;

-- COUNT/AVG/SUM
select count(*) as qnt from Pessoa;

-- INNER JOIN
select A.nome, L.titulo
from Autor as A
join Livro as L
	on A.id = L.autorID;

-- LEFT JOIN
select A.nome
FROM 
	Autor A left join Livro L
	on A.id = L.autorID
where L.ISBN is NULL;

-- GROUP BY
select A.id,A.nome, count(L.ISBN) as qnt
from
Autor A left join Livro L
	on A.id = L.autorID
GROUP BY A.id,A.nome
order by qnt desc;

-- HAVING
select A.id,A.nome, count(L.ISBN) as qnt
from
Autor A left join Livro L
	on A.id = L.autorID
GROUP BY A.id,A.nome
having qnt > 1
order by qnt desc;
