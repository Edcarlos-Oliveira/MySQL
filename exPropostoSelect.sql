# Selecionando a lista com todos os dados:
select * from gafanhotos;

# Ex001 Lista com o nome de todas as gafanhotas:
select nome from gafanhotos where sexo = 'F'
order by nome;

# Ex002 Lista com os dados de todos que nasceram entre 1/jan/2000 e 31/dez/2015:
select * from gafanhotos where nascimento between '2000/01/01' and '2015/12/31'
order by nascimento;

# Ex003 Lista com o nome de todos os homens que trabalham como Programdores:
select nome, profissao, sexo from gafanhotos where profissao = 'Programador' and sexo = 'M'
order by nome;

# Ex004 Uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem o nome iniciado com a letra 'J':
select nome, sexo, nacionalidade from gafanhotos where nome like 'J%' and sexo like 'F%' and nacionalidade like 'Brasil%';

# Ex005 Lista com o nome e nacionalidade de todos os homens que tem Silva(em qualquer lugar) no nome, não nasceram no Brasil e pesam menos de 100kg:
select nome, nacionalidade from gafanhotos
where sexo like 'M%' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100;

# Ex006 Qual a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

# Ex007 Qual a média de peso de todos os gafanhotos cadastrados:
select avg(peso) from gafanhotos;

# Ex008 Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000:
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990/01/01' and '2000/12/31';

#Ex009 Quantas gafanhotas mulheres tem mais de 1.90 de altura?
select count(*) from gafanhotos where sexo = 'F' and altura > 1.90;



   






