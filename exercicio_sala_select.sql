use biblioteca;

-- 1
select nome from autor;
select distinct nome from autor;

-- 2
select titulo from Livro;

-- 3
select * from Pessoa
where saldo = 0;

-- 4
select * from Pessoa
where data_nasc > '2007-09-18';

select * from Pessoa
where data_nasc > date_sub(current_date(), interval 18 year);

-- 5
select A.nome, L.titulo
from Autor A
inner join Livro L
	on A.id = L.autorID;

-- 6
select A.nome, L.titulo
from Autor A
left join Livro L
	on A.id = L.autorID
where L.ISBN is NULL;

-- 7
select P.nome, L.titulo
from Livro L
inner join Emprestimo E
	on L.ISBN = E.ISBN_Livro
inner join Pessoa P
	on P.ID = E.id_pessoa;
    
-- 8
select A.nome, count(L.ISBN) as qnt
from Autor A
	left join Livro L
    on A.id = L.autorID
group by A.nome;
    
-- 9
select A.nome, count(L.ISBN) as qnt
from Autor A
	left join Livro L
    on A.id = L.autorID
group by A.nome
having 	qnt > 0
order by qnt desc;

-- 10
select P.nome, count(E.ID) as qnt
from Pessoa P
left join emprestimo E
	on P.id = E.id_pessoa
where data_emprestimo between "2024-01-01"
				and "2025-12-31 23:59:59.999999"
group by P.nome
order by qnt desc;
