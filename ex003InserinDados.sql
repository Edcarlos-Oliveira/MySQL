# Comandos de definição(DDL 'data definition language') Ex: create table, create database, alter table, drop table
# Comandos de manipulação de dados(DML 'data manipulation language) Ex: insert into, UPDATE, DELETE, TRUNCATE
# Comandos de seleção de dados(DQL 'data query language' Para alguns autores) Ex: select
# insere em 'pessoas' os dados declarados em 'values'

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade) # Pode ser usado aspas, Ex: 'id'
values
(default, 'Creuza', '1920+12-30', 'F', '50.2', '1.65', default), # primeiro 'default' informa o 'id', segundo 'default' informa o Pais por padrão 'Brasil'
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal'),
('1', 'Edcarlos', '1976-04-13', 'M', '90', '1.80', 'Brasil'); # Pode não informar o numero do 'id'

# Obs: Casos os dados a ser inseridos estejam na mesma ordem, pode simplificar o comando acima por:
insert into pessoas values
(default, 'Ana', '1991-01-25', 'F', '55.6', '1.60', 'Japão');

# Inserindo várias pessoas com apenas um 'insert into':
insert into pessoas values
(default, 'Beatriz', '1991-08-05', 'F', '60.6', '1.70', 'Japão'),
(default, 'Paulo', '1991-05-15', 'M', '59.6', '1.80', 'Italia'),
(default, 'Joana', '1991-04-20', 'F', '56.6', '1.50', 'Siria'); # Aqui encerra o comando

select * from pessoas; # Seleciona todos os dados de 'pessoas'
