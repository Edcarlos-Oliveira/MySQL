use cadastro;

# Agrupando Registros:
select totaulas, count(*) from cursos # Distingue os totais de aulas de cada curso, não mostrando quantos cursos tem a quantidade de horas
group by totaulas # Conta quantos registros existem em cada agrupamento.
order by totaulas;

# Agrupando usando 'where'
select carga, count(*) from cursos where totaulas = 30
group by carga;

# Selecionando agupamentos especificos:
select ano, count(*) from cursos
group by ano
having count(ano) >= 5 # Nesse caso agrupa só os cursos maiores ou igual a 5, porém só mostra de acordo com o que foi agrupado, nesse caso 'ano'.
order by count(*);

select avg(carga) from cursos; # Mostra a média da carga de todos os cursos

# Selecionando os cursos acima da média de todos os cursos:
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); # Nesse caso mostra todos os cursos que tem carga maior que a média.


