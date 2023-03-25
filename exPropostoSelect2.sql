# Exercicios Propostos:
select * from gafanhotos;

# Ex001 Lista com as profissões dos gafanhotos e seus respectivos quantitativos:

select profissao, count(*) from gafanhotos
group by profissao;

# Ex002 Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005, agrupando por sexos?

select sexo, nascimento, count(*) from gafanhotos where nascimento > '2005/01/01'
group by sexo;

/*Ex003 Lista com os gafanhotos que nasceram fora do Brasil, mostrando o País de origem
e o total de pessoas nascida lá. Só nos interessam os Países que tiverem mais de 3 gafanhotos nessa nacionalidade*/

select nome, nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;
     
/*Ex004 Lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais
 de 100kg e que estão acima da média de altura de todos os cadastrados*/
 
 select nome, peso, altura, count(*) from gafanhotos where peso > 100
 group by altura
 having altura > (select avg(altura) from gafanhotos);
 
 
 