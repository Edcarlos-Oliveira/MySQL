# Criando Nova Tabela:
desc cursos;
create table if not exists cursos ( # 'if not exists' impede criar tabelas que exista com o mesmo nome
nome varchar(30) not null unique, # 'unique' não deixa cadastrar dois nomes iguais
descricao text,
carga int unsigned, # 'unsigned' significa sem sinal, nesse caso os números negativos
totaulas int unsigned,
ano year default '2023'
) default charset = utf8;

# Adicionando o 'id' como primeiro:
alter table cursos
add column idcurso int first; # Adiciona o 'id'

# Adicionando a chave primária:
alter table cursos
add primary key(idcurso); # Adiciona a chave 'idcurso'

# Apagando uma tabela inteira:
drop table if exists curso; # Nesse caso apagaria a tabela 'cursos' inteira.  
# 'if exists' define que a tabela será deletada caso exista.