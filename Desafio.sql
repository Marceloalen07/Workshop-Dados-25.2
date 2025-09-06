create schema desafio;

create table alunos (
id_aluno int primary key,
nome varchar(100) not null,
idade int ,
email varchar(100)
);

create table cursos(
id_curso int primary key,
nome varchar(100) not null,
carga_horaria int,
departamento varchar(50));
create table matricula(
id_matricula int primary key, 
id_aluno int,
id_curso int,
foreign key (id_aluno) references alunos(id_aluno),
foreign key(id_curso) references cursos(id_curso));

insert into alunos values(
1,'Marcelo Alencar',20 , 'marcelo@gmail.com',
2 , 'David Lucas', 24, 'lucas@gmail.com',
3,'Sabrina Santos', 19, 'sabrina@gmail.com',
4, 'Pedro Santos',25, 'santos@gmail.com',
5, 'Carlos Menezes',20,'cadu@gmail.com',
6,'Lucas Costa',22,'costa@gmail.com',
7,'Fernando Nazario',25,'nazario@gmail.com',
8,'Davi Barcia', 24,'barcia@gmail.com',
9,'Marcos Rocha',23,'marcos@gmail.com',
10,'Rafael Torres',25,'@gmail.com');

Insert into cursos values(
1,'Banco de Dados',60, 'Computação',
2,'Engenharia de Software',120,'Computação',
3,'Redes de computadores',80,'Computação',
4,'Direito civil',120,'Direito',
5,'Marketing Digital',60,'Administração',
6,'Estatistica',90,'Exatas',
7,'Adminstração financeira',70,'Administração',
8,'Estrutura de dados', 80, 'Computação',
9,'Direito Penal',80,'Direito',
10,'Contabilidade',60,'Administração');


update alunos
set idade = 21
where id_aluno = 1;

select * from cursos;

select 
count(*) as total_alunos,
avg(idade) as idade_media,
max(idade) as idade_maxima
from alunos;

select departamento, count(*) as qtd_cursos
from cursos
group by departamento;

insert into matricula values
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,1),
(5,5,2);

select a.nome as aluno , c.nome as curso
from matricula m
join aluno a on m.id_aluno = a.id_aluno 
join curso.c on m.id_curso = c.id_curso;

use desafio;