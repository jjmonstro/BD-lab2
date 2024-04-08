create database ATV03
use ATV03

create table cliente(
	cod_clie numeric (4) primary key,
	nome_clie varchar (20) not null,
	endereco varchar (30),
	cidade varchar (15),
	cep char (8),
	uf char (2),
	cnpj char (16),
	ie char (12)
);

create table vendedor(
	cod_ven numeric (4) primary key,
	nome_ven varchar (20) not null,
	salario_fixo numeric (10,2),
	comissao char (1)
);

create table produto(
	cod_prod numeric (4) primary key,
	unidade varchar (3),
	descricao varchar (20),
	val_unit numeric (8,2)
);

create table pedido(
	num_pedido numeric (4) primary key,
	pr_entrega numeric (3) not null,
	cod_clie numeric (4),
	cod_ven numeric (4),
	--item_pedido N TEM ND NO PDF
	cod_prod numeric (4),
	quant numeric (8,2)
);

ALTER TABLE pedido
	add constraint cod_clie_FK foreign key (cod_clie) references cliente(cod_clie);

ALTER TABLE pedido
	add constraint cod_ven_FK foreign key (cod_ven) references vendedor(cod_ven);

ALTER TABLE pedido
	add constraint cod_prod_FK foreign key (cod_prod) references produto(cod_prod);

sp_help cliente;
sp_help vendedor;
sp_help produto;
sp_help pedido;