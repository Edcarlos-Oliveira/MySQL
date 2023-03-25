# Maquinas (MyISAM, InnoDB, XtraDB) => Usadas para criar banco de dados
# ACID: (quatro principais regras de uma boa transação)
/* Atomicidade => Não pode ser dividida em subtarefas, ações completas;
   Consistência => Antes durante e depois de uma transação não pode haver alterações
   Isolamento => Duas transações pode ocorrer sem interferências uma na outra;
   Durabilidade => Durar o tempo que for necessário.
*/
# Adicionando uma nova coluna:
describe gafanhotos; 
alter table gafanhotos add column cursopreferido int;

# Adicionando uma chave estrangeira:
alter table gafanhotos
add foreign key (cursopreferido) # Adiciona a chave multipla ou estrangeira
references cursos(idcurso); # Indica o caminho da referência da chave criada

# Adicionando um aluno a determinado curso preferido:
select * from gafanhotos;
select * from cursos;
update gafanhotos set cursopreferido = '9' where id = '1'; # Pode adicionar assim ou clicando direto na tabela

# Apagando um curso que não esteja com nenhuma identidade referencial:
delete from cursos where idcurso = '28'; # Nesse caso apaga, porque não está referenciado a nenhum aluno.

# Selecionando os nomes dos cursos preferido utilizando junções(join ou inner join):
# Nesse exemplo mostra só os alunos que preferem determinado curso
select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; # Essencial a utilização do 'on' ligando as chaves primárias e estrangeira

# Reduzindo o código utilizando apelidos de coluna (as):
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c # Usando na forma apelido, so não pode mudar os nomes após o 'from'
on c.idcurso = g.cursopreferido;

# Mostrando todos da lista inclusive aqueles que não tem nenhum curso preferido(left outer join ou left ou right join):
select g.nome, c.nome, c.ano
from gafanhotos as g left join cursos as c # Nesse caso usando o 'left' deu preferência para a tabela dos nomes
on c.idcurso = g.cursopreferido;






