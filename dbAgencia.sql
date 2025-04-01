drop database dbAgencia;

create database dbAgencia;
use dbAgencia;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
telCel char (10),
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M','N')),
salario decimal(9,2) default 0 check(salario >= 0),
primary key(codFunc)
);

insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Milena Alcante','milena.alcante@gmail.com','98754-6123','321.654.987-20','F',4500.50);

insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Paulo Bolos','paulo.bolos@gmail.com','93216-1234','545.745.965-89','M',5000.00);

insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Joao Augusto','joao.augusto@gmail.com','94522-8126','154.751.349-31','M',3300.00);

insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Kamila Mellisa','kamila.mellisa@gmail.com','93451-3791','315.575.815-00','F',6200.00);

insert into tbFuncionarios(nome,email,telCel,cpf,sexo,salario)
	values('Lucas Santos','lucas.santos@gmail.com','96196-8414','315.151.816-62','M',2500.00);

select * from tbFuncionarios;

select nome,email from tbFuncionarios;

select nome,salario from tbFuncionarios;

select cpf, nome, email from tbFuncionarios;

select codFunc as 'Codigo', nome as 'Nome' from tbFuncionarios;