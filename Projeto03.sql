drop database Proj03CSharp;
create database Proj03CSharp;
use Proj03CSharp;
create table Unidades (
	Id int primary key auto_increment,
    NomeUnid varchar(20)
    Vaga varchar(20)
	Prop varchar(120) not null,
    endereco varchar(60) not null,
	Cep varchar (18) not null,
    Tels varchar (40)
);

alter table Unidades
add column TipoUnid enum("Apto","Loja", "Vaga") after NomeUnid;

insert into Unidades values
(default, "Andre Rodriguez", "Apto", "Ceilandia","1998-09-23",1.78, 70,"Java"),
(default, "Arthur", "M", "Ceilandia","1976-09-25",1.80, 80,"Mysql"),
(default, "Carlos Silva", "M", "Taguatinga","1994-09-23",1.78, 70,"Java"),
(default, "Caua Clemente", "M", "Ceilandia","1998-09-23",1.90, 90, "Java"),
(default, "Clecio", "M", "Samambaia","1995-09-23",1.90, 100,"Javascript"),
(default, "Daniel da Silva", "M", "Taguatinga","1987-09-11",1.79, 71,"Java"),
(default, "Daniel Rodrigues", "M", "Ceilandia","1998-09-23",1.78, 65,"PHP"),
(default, "Douglas Souza", "M", "Cruzeiro","1975-09-18",1.60, 60,"Java"),
(default, "Gilson Junior", "M", "Cruzeiro","1998-09-23",1.67,65,"Mysql"),
(default, "Guilherme Martins ", "M", "Samambaia","1994-10-23",1.80, 78,"PHP"),
(default, "Joao Pedro", "M", "Cruzeiro","2000-09-23",1.64, 61,"Mysql"),
(default, "Jose Mauricio", "M", "Ceilandia","1998-09-23",1.78, 70,"Java"),
(default, "Karoliny Amorim", "F", "Ceilandia","1998-09-23",1.65, 60,"Java"),
(default, "Lucas SIlva", "M", "Samambaia","1998-09-23",1.86, 87,"PHP"),
(default, "Mateus Rodrigues", "M", "Taguatinga","1998-10-23",1.90, 105,"Java"),
(default, "Matheus Miranda", "M", "Cruzeiro","1993-09-23",1.67, 62,"Javascript"),
(default, "Messias", "M", "Taguatinga","1998-09-23",1.78, 74,"Java"),
(default, "Mylena", "F", "Cruzeiro","1998-09-23",1.55, 57,"Mysql"),
(default, "Rafael Dias", "M", "Samambaia","1998-09-23",1.83, 87,"Java"),
(default, "Ricardo Alves", "M", "Ceilandia","1998-09-23",1.89, 98,"Javascript"),
(default, "Robson Torquato", "M", "Ceilandia","1979-09-23", 1.78, 87, "Mysql"),
(default, "Sergio Adriano", "M", "Taguatinga","1998-09-23",1.87, 89,"PHP"),
(default, "Williams Claiver", "M", "Cruzeiro", "1998-09-23", 1.78, 70, "Mysql");

update alunos set endereco='Ceilândia-sul DF' ,datanasc='2000-05-04',altura='1.86',peso='95.6',curso_preferido='JAVA,C#'
 where idaluno="11";
 
update alunos
set nome = "Douglas Souza Pereira", endereco = "Asa Sul", datanasc = "1975-09-17", peso = "55", curso_preferido = "MYSQL"
where idaluno = 8;

update alunos set nome="Arthur Phillipe Pinto e Silva", endereco="Sle, Q.21, Casa 45, Gama - DF",
 datanasc="1957-03-02", peso="98", altura="1.77", curso_preferido="Java/C#/C++" 
 where idaluno=2;



SELECT * FROM ativ20.alunos;
use ativ20;
select * from alunos 
where (datanasc > 2004-12-31) and (datanasc < 2011-01-01) and (peso > 50);

select nome, peso from alunos 
where sexo = "F" and endereco = "Ceilandia";

select nome from alunos
order by nome desc;

select * from alunos
where altura > 1.76
order by nome, altura;

select nome, altura from alunos
where peso > 59
order by peso desc;
