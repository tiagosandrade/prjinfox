-- Comentários
-- A linha abaixo cria um banco de dados
create database dbinfox;
-- A linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox;
-- O bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null, 
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

insert into tbusuarios(iduser,usuario, fone, login, senha)
values(1,'Tiago', '5545-6698', 'tiagoandrade', 'tiago123');

insert into tbusuarios(iduser,usuario, fone, login, senha)
values(2,'Administrador', '4444-3333', 'admin', 'admin');
insert into tbusuarios(iduser,usuario, fone, login, senha)
values(3,'Fabio','0000-3537', 'fabio', 'fabio');


create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
)

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values ('Linus Torvalds','Rua qualquer uma, 145', '44444444', 'linus@linux.com')

create table tbos(

os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar (150) not null,
defeito varchar (150) not null,
servico varchar (150),
tecnico varchar (30),
valor decimal (10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)

);