# Manipulando Linhas(UPDATE, DELETE e TRUNCATE)
select * from cursos; # Mostra todos os dados da planilha

# Inserindo valores na tabela 'cursos':
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10','29','2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30','15','2016'),
('7', 'Word', 'Curso completo de Word', '40','30','2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40','30','2018'),
('9', 'Cozinha Arabe', 'Aprenda a fazer Kibe', '40','30','2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

# Modificando os erros da linha 1:
update cursos			# Atualiza a tabela 'curso'
set nome = 'HTML5'		# Configura para o novo nome
where idcurso = '1';	# Localiza o 'idcurso' de número '1'

# Modificando os erros da linha 4:
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

# Modificando os erros da linha 5:
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;  # Nesse caso o uso do 'limit 1' limita a alteração de apenas um registro.(Dessa forma não altera acidentalmente as demais)

# Apagando as linhas do banco de dados:
delete from cursos
where idcurso = '10'
limit 1; 
/*Apaga só uma linha por vez, para mais de um registro 
  simultâneo precisa desmarcar em Workbench =>
  'edit=>preference=>sql editor=>safe updates , requer atenção, NÃO RECOMENDÁVEL.*/ 
  
  # Apagando toda tabela:
  truncate curso; 
  /*Apaga todos os dados e mantem a estrutura da tabela, nesse caso 'curso' não está escrito correto
  para evitar executar acidentalmente, o certo seria 'cursos'.*/


