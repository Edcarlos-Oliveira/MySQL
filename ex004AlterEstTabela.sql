# Alterando a Tabela:
describe pessoas; # Descreve a tabela, pode ser abreviado o 'describe' para 'desc'

alter table pessoas
add column profissao varchar (10); # Adiciona 'profissao' no final da tabela

# Apagando um item da coluna:
alter table pessoas
drop column profissao; # 'drop' apaga o item

# Adicionando um item em determinado lugar:
alter table pessoas
add column profissao varchar(10) after nome; # 'after' adiciona após o item 'nome'

# Adicionando um item como o primeiro:
alter table pessoas
add column codigo int first; # 'column' é opcional, 'first' adiciona 'codigo' como primeiro.

# Modificando a tabela (Altera os tipos primitivos e as constraints):
alter table pessoas
modify column profissao varchar(20) not null default ''; # Ideal usar o 'default ''' para não apresentar conflito no 'not null'

# Mudando o nome do item:
alter table pessoas
change column profissao prof varchar(20) not null default ''; # 'change' para alterar o nome 'profissao' por 'prof'

# Alterando o nome da tabela:
alter table pessoas
rename to ganfanhotos;


