use Biblioteca;

insert into Emprestimo (ISBN_livro, pessoa_id)
values ("1112223334445", 1);

select * from Emprestimo;

update Emprestimo
set data_devolucao = "2025-08-26 09:30:00"
where id = 1;

update Emprestimo
set data_devolucao = now()
where id = 2;

insert into Livro (ISBN, titulo, autorID)
values ("9999888877776", "Excluir esse", 1);

select * from Livro;

delete from Livro
where ISBN = "9999888877776";