use biblioteca;

insert into Autor (nome) values ('Fulano'), ('Ciclano');

select * from Autor;

insert into Livro values
('1112223334445', 'Livro do Fulano vol.1', 2024, 2),
('1112223334446', 'Livro do Fulano vol.2', 2025, 2),
('1112223334455', 'Livro do Ciclano vol.1', 2024, 3),
('1112223334456', 'Livro do Ciclano vol.2', 2025, 3);

select * from Livro;

insert into Pessoa (cpf, nome, data_nasc) values
('11112222333', 'Fulano', '2000-01-01'),
('11112222334', 'Ciclano', '2000-12-31');

select * from Pessoa;

insert into Emprestimo (isbn_livro, pessoa_id) values
('1112223334445', 1),
('1112223334446', 1),
('1112223334455', 1);

select * from Emprestimo;

update Emprestimo
set data_devolucao = "2025-09-03 09:00:03.654321"
where id = 1;

update Emprestimo
set data_devolucao = now()
where id = 2;

update Emprestimo
set data_devolucao = current_timestamp()
where id = 3;

delete from Emprestimo
where isbn_livro = 1112223334455;

delete from Livro
where autorid=3;


