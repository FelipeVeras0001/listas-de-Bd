-- Criando banco
CREATE DATABASE pratica5;

USE pratica5;


-- Criando tabela para multimidia
create table dados_multimidia (
codigo int auto_increment not null,
nome varchar(30), 
tipo varchar (20),
dados longblob,
primary key (codigo)
);

-- Executando variavel
show variables like "secure_file_priv";

-- Inserindo dados_multimidia
insert into dados_multimidia (nome, tipo, dados) values ( 'imagem1', 'jpg', load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\imagem1.jpg"));
insert into dados_multimidia (nome, tipo, dados) values ( 'imagem2', 'jpg', load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\imagem2.jpg"));

select * from dados_multimidia;

select dados into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\imagem2.jpeg' 
from dados_multimidia 
where codigo = 2;
