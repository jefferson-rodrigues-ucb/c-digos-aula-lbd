create database Biblioteca;

use Biblioteca;

create table Autor (
	ID int primary key auto_increment,
    nome varchar(255) not null
);

insert into Autor (nome) value ("Jefferson");

select ID, nome from Autor;

create table Livro (
	ISBN decimal(13) primary key,
    titulo varchar(255) not null,
    ano smallint,
    autorID int not null,
    constraint autorid_fk
    foreign key (autorID) references Autor(ID)
    on update cascade
    on delete restrict
);

insert into Livro (ISBN, titulo, ano, autorID)
values ("1112223334445", "Algoritmos", 2024, 1),
("2223334445556", "Banco de Dados", 2025,1);

select * from Livro;

insert into Livro (ISBN, titulo, ano, autorID)
values ("1112223334445", "Algoritmos Avançados", 2024, 1);

insert into Livro (ISBN, titulo, ano, autorID)
values ("1112223334447", "Algoritmos Avançados", 2024, 2);

create table pessoa(
	ID int primary key auto_increment,
    CPF decimal(11) unique not null,
    nome varchar(255) not null,
    data_nasc date not null,
    saldo decimal(10,2) not null default 0.0
);

insert into Pessoa (CPF, nome, data_nasc)
value ("12345678901", "Jefferson", '2001-01-01');

select * from pessoa;

create table Emprestimo (
	ID int primary key auto_increment,
    data_emprestimo timestamp not null
		default current_timestamp,
	data_devolucao timestamp,
    ISBN_livro decimal(13) not null,
    pessoa_id int not null,
    foreign key (ISBN_Livro) references Livro(ISBN),
    foreign key (pessoa_id) references Pessoa(ID)
);

insert into Emprestimo (ISBN_Livro, pessoa_id)
values ("1112223334445",1);

select * from Emprestimo;