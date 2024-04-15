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

insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (720, 'Ana', 'Rua 17 n.19', 'Niterói', '24358310', 'RJ', '12113231/0001-34', '2134')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (870, 'Flávio', 'Av. Pres. Vargas, 10', 'São Paulo', '22763931', 'SP', '22534126/9387-9', '4631')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (110, 'Jorge', 'Rua Caiapó, 13', 'Curitiba', '30078500', 'PR', '14512764/9834-9', 'null')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (222, 'Lúcia', 'Rua Itabira, 123', 'Belo Horizonte', '22124391', 'MG', '283152123/9348-8', '2985')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (830, 'Mauricio', 'Av. Paulista, 1236', 'São Paulo', '3012683', 'SP', '32816985/7465-6', '9343')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (130, 'Edmar', 'Rua da Praia, s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', '7121')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', '7431')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (20, 'Beth', 'Av. Climério, 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', '9280')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', 'null', 'PR', '32848223/324-2', '1923')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (180, 'Lívio', 'Av. Beira Mar, 1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4', '1111')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (260, 'Susana', 'Rua Lopes Mandes, 12', 'Niterói', '30046500', 'RJ', '21763571/232-9', '2530')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (290, 'Renato', 'Rua Meireles, 123', 'São Paulo', '30225900', 'SP', '13276571/1231-4', '1820')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (390, 'Sebastião', 'Rua da Igreja, 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', '9071')
insert into cliente (cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ie) values (234, 'José', 'Quadra 3, Bl. 3, sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3', '2931')

insert into vendedor (cod_ven,nome_ven,salario_fixo,cod_ven) values (209, 'José', 1800, 'C');
insert into vendedor (cod_ven,nome_ven,salario_fixo,cod_ven) values (111, 'Carlos', 2490, 'A');
insert into vendedor (cod_ven,nome_ven,salario_fixo,cod_ven) values (011, 'João', 2780, 'C');
insert into vendedor (cod_ven,nome_ven,salario_fixo,cod_ven) values (240, 'Antônio', 9500, 'C');
insert into vendedor (cod_ven,nome_ven,salario_fixo,cod_ven) values (720, 'Antônio', 9500, 'C');


sp_help cliente;
sp_help vendedor;
sp_help produto;
sp_help pedido;