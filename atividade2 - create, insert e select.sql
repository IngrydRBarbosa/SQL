create table alunos(
	id_aluno serial primary key,
	nome_aluno text not null,
	ano_escolar_aluno text not null,
	data_nascimento date
	);
	
create table livros(
	id_livro serial primary key,
	titulo text not null,
	nome_autor text,
	ano_publicacao int,
	categoria_livro text
	);
drop table livros;

create table emprestimos(
	id_emprestimo serial primary key,
	nome_aluno int references alunos(id_aluno) not null,
	livro_emprestado int references livros(id_livro) not null,
	data_emprestimo date not null,
	data_prev_devolucao date,
	data_devolucao date
	);
drop table emprestimos;
	
insert into alunos(nome_aluno, ano_escolar_aluno,data_nascimento)
values('Ingryd', 2, '17/03/2005');

insert into alunos(nome_aluno, ano_escolar_aluno,data_nascimento)
values('Paula', 3, '18/05/2004');

insert into alunos(nome_aluno, ano_escolar_aluno,data_nascimento)
values('Dirceu', 3, '16/11/2004');

insert into alunos(nome_aluno, ano_escolar_aluno,data_nascimento)
values('Vinicius', 1, '12/03/1999');

insert into alunos(nome_aluno, ano_escolar_aluno,data_nascimento)
values('Ana', 3, '17/03/2005');


insert into livros(titulo, nome_autor, ano_publicacao, categoria_livro)
values('Depois', 'Stephen King', 2019,'Terror');

insert into livros(titulo, nome_autor, ano_publicacao, categoria_livro)
values('Até o verão terminar', 'Collen Hoover', 2020, 'Romance');

insert into livros(titulo, nome_autor)
values('Uma família feliz', 'Raphael Montes');

insert into livros(titulo, nome_autor, categoria_livro)
values('A contadora', 'Freida Mcfadden', 'Suspense');

insert into livros(titulo, nome_autor)
values('Velhos demais para morrer', 'Vinicius Neves');


insert into emprestimos(nome_aluno, livro_emprestado, data_emprestimo)
values(1, 6, '10/12/2025')

insert into emprestimos(nome_aluno, livro_emprestado, data_emprestimo)
values(7, 7, '8/12/2025')

insert into emprestimos(nome_aluno, livro_emprestado, data_emprestimo)
values(8, 8, '10/12/2025')

insert into emprestimos(nome_aluno, livro_emprestado, data_emprestimo)
values(8, 9, '05/2/2025')

insert into emprestimos(nome_aluno, livro_emprestado, data_emprestimo)
values(9, 10,'8/2/2025')

select * from alunos;
select * from livros;
select * from emprestimos;

select * from emprestimos where nome_aluno = 7;
select * from livros where categoria_livro = 'Suspense';