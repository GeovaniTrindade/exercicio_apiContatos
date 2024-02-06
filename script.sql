create table categoria(
	id			uuid			primary key,
	nome		varchar(25)	not null unique
);

create table contato(
	id				uuid				primary key,
	nome			varchar(150)		not null,
	telefone		varchar(15)			not null,
	categoria_id	uuid				not null,
	foreign key(categoria_id)references categoria(id)
);

--cadastrar planos
insert into categoria(id, nome) values(gen_random_uuid(), 'Pessoal');

select * from categoria;

insert into contato(id, nome, telefone, categoria_id) values(gen_random_uuid(), 'Geovani Trindade', '67678878', '9a927cde-b91f-488b-bd5e-143f6fe914a2');

select * from contato;