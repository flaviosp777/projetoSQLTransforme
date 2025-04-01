drop database dbProdutos;

create database dbProdutos;

use dbProdutos;

CREATE TABLE PRODUTOS 
( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 
'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 ); 

desc produtos;

select * from produtos;

select nome, quantidade from produtos
where tipo = 'INFORMATICA';

select nome from produtos where valor > 250 order by nome;

select nome from produtos where valor < 250;

select codigo,nome,tip,valor from produtos where valor > 300 and quantidade > 200 order by valor asc; 

select nome from produtos
where quantidade >= 150 order by nome;

-- busca por código
select nome, tipo from produtos
where codigo = 2;

-- busca por nome

select codigo,nome,quantidade from produtos where nome like 'c%';

select codigo,nome,quantidade from produtos where nome like '%s';

select codigo,nome,quantidade from produtos where nome like '%r'; 

select codigo,nome,quantidade from produtos where tipo not like '%in%' order by tipo;

select * from produtos
where quantidade between 250 and 400 order by quantidade;

select * from produtos
where quantidade not between 250 and 400 order by quantidade;