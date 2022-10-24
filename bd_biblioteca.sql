create database biblioteca;
use biblioteca;


create table editora (
id_editora int not null auto_increment,
nome varchar (30),
telefone varchar (30),
endereco varchar (30),
primary key (id_editora)
)default charset = utf8;


create table autor (
id_autor int not null auto_increment,
nome varchar (30),
telefone varchar (30),
endereco varchar (30),
cpf varchar (15),
primary key (id_autor)
)default charset = utf8;

create table area_conhecimento (
id_conhecimento int not null auto_increment,
descricao varchar (50),
primary key (id_conhecimento)
)default charset = utf8;

create table livros (
id_livro int not null auto_increment,
nome varchar (30),
id_autor int,
id_editora int,
primary key (id_livro)
)default charset = utf8;

create table titulo (
id_titulo int not null auto_increment,
id_livro int,
primary key (id_titulo)
)default charset = utf8;

create table emprestimo (
id_emprestimo int not null auto_increment,
nome_livro varchar (20),
nome_aluno varchar (20),
nome_prof varchar (20),
data_retirada date,
data_devolucao date,
primary key (id_emprestimo)
) default charset = utf8;
 
alter table livros add constraint fk_id_editora foreign key (id_editora) references editora (id_editora);

alter table livros add constraint id_autor foreign key (id_autor) references autor (id_autor);

alter table titulo add constraint id_livro foreign key (id_livro) references livros (id_livro);


insert into editora (nome, telefone, endereco)
values ('Violeta', '3422-0987', 'Rua avenida coronel n240');

insert into autor (nome, telefone, endereco, cpf)
values ('William Shakespeare ', '3208-5570', 'rua sebastiao de marques, n200', '555087559-03');

insert into livros ( nome)
values ('O alienista');

insert into area_conhecimento ( descricao)
values ('Uma ficçao contada por Machado de Assis');

insert into emprestimo (nome_livro, nome_aluno, nome_prof, data_retirada, data_devolucao)
values ('O alienista', 'Julia', 'emprestimo prof','2022-10-09', '2022-11-02');

select * from editora;

select* from autor;

select *from livros;

select * from area_conhecimento;

select *from emprestimo;

select  * from titulo;