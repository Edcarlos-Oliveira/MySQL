use cadastro;
select * from gafanhotos;

# Criando nova tabela de 'Muitos para Muitos':
create table gafanhoto_assiste_curso(
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

# Inserindo os Registros dentro da tabela criada:
insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');
select * from gafanhoto_assiste_curso;

# Usando as junções(inner join) para juntar(relacionar) as tabelas:
# Nesse primeiro 'join' relacionar os nomes dos gafanhotos
select g.nome, c.nome from gafanhotos g               # 'g' apelido da tabela 'gafanhotos'
join gafanhoto_assiste_curso gac		 # 'gac' apelido da tabela 'gafanhoto_assiste_curso'	
on g.id = gac.idgafanhoto
# Nesse segundo 'join' relaciona os nomes dos cursos:
join cursos c
on c.idcurso = gac.idcurso
order by g.nome;





