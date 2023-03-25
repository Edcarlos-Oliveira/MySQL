# Apagando um cadastro:
drop database cadastro; #';' indica final de comando.

# Criando novo cadastro:
create database cadastro

# Utlizando os parametros(Constraints) 
default character set utf8                 # Define o padrão dos caracteres a ser usado, 'utf8' precisa ser minusculo.
default collate utf8_general_ci;           # Também define os caracteres

# Criando a tabela:
create table pessoas (
id int not null auto_increment,    # Numera os cadastros, 'not null(obrigatorio)' 'auto_increment(automaticamente)'
nome varchar (30) not null,        # 'not null' torna obrigatório o cadastro receber um nome
nascimento date,
sexo enum ('M', 'F'),              # 'enum' torna obrigatório receber M ou F.
peso decimal (5,2),                # recebe 5 digitos e 2 após a virgula
altura decimal (3,2),              # recebe 3 digitos, 2 depois da virgula
nacionalidade varchar (20) default 'Brasil', # 'default 'Brasil'' caso nada for digitado por padrão ficará 'Brasil'
primary key (id) # Chave primaria
) default charset = utf8;                    # Define o padrão

