# Trabalhando com comandos do 'select':
select * from cursos

# Ordena de forma alfabética:
#order by nome;

# Ordena decrescente:
#order by nome desc;

# Ordena ascedente:
order by nome asc;

# Selecionando campos especificos:
select nome, carga, ano from cursos

# Ordenado por ano e nome:
order by ano, nome;

# Selecionando através das linhas:
select * from cursos
where ano = '2016' # As aspas são opcionais
order by nome;

# Selecionando através de linhas campos especificos:
select nome, carga from cursos
where ano = '2016'
order by nome;

# Selecionando linhas e colunas especificas:
select nome, descricao from cursos
where ano <= '2015'  # Nesse caso seleciona os dados solicitados menor de 2015 e igual
# O sinal de '!=' também pode ser '<>'
order by nome;

# Selecionando os arquivos entre alguma coisa:
select nome, ano from cursos
where ano between 2014 and 2016; # 'between' significa 'entre' especifica faixa de valores.

# Selecionando os arquivos usando 'in' (coloca valores especificos):
select nome, descricao, ano from cursos
where ano in (2014,2016)
order by ano;

# Selecionando usando operadores '>' e '<'
select * from cursos
where carga > 35 and totaulas < 30;

# Selecionando usando 'like' e caracter coringa '%':
select * from cursos
where nome like 'P%';  /* 'like' = Parecido, 
'%' = nenhum ou vários caracteres a posição é importante, 
pós valor a ser achado mostra o inicio, antes(Ex. %P), mostra o final.*/

# Buscando o item em qualquer lugar:
select * from cursos
where nome like '%a%'; # Busca o 'a' em qualquer lugar

# Verificando os que não tem o item declarado:
select * from cursos
where nome not like '%a%'; # Nesse caso verifica todos que não tem o 'a'

# Verificando os que tem os itens no inicio e fim ao mesmo tempo:
select * from cursos
where nome like 'PH%P'; # Busca o 'ph' no inicio e 'p' no final.

select * from cursos
where nome like 'PH%P_'; # Nesse caso pega todos os dados que tenha alguma coisa no final, usando o '_'

select * from cursos
where nome like 'P_P%'; # Nesse caso mostra todos os nomes que começa com 'P' tenha uma após e tenha 'P' após.

select * from cursos
where nome like 'P__T%'; # Nesse caso mostra todos os nomes que começa com 'P' tenha duas letras após e tenha 'T' após.

# Buscando sobrenomes:
select * from gafanhotos
where nome like '%Silva'; # busca todos os nomes com 'Silva'

# Buscas sem repetição 'distinct':
select distinct nacionalidade from gafanhotos 
order by nacionalidade;

# Funções de Agregações:
select count(*) from cursos # Nesse caso conta o total de cursos
where carga > 40; # Retorna a quantidade de cursos com carga maior de 40hs
# Poderia ser reescrita assim: (select count(*) from cursos where carga > 40) seria o mesmo resulta do comando acima.

select * from cursos where carga > 40; # Nesse caso mostra todos os dados dos cursos com carga maior de 40hs

select max(carga) from cursos; # Mostra o curso com maior carga horária.

select * from cursos where ano = '2016'; # Mostra todos os cursos de 2016

select max(totaulas) from cursos where ano = '2016'; # Mostra dentro dos cursos de 2016 o que tem mais aula.

select min(totaulas) from cursos where ano = '2016'; # Mostra o total de aulas menor no cursos de 2016.

select sum(totaulas) from cursos where ano = '2016'; # Soma o total de aulas de todos os cursos.

select avg(totaulas) from cursos where ano = '2016' # 'avg' Calcula a média do total de aulas de todos os cursos de 2016.
 










