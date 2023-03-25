# Criando primeiro cadastro:
create database cadastro; # 'create database' cria um novo cadastro

# Criando Tabelas:
/* Tipos primitivos:
- Numerico:
	. Inteiro (Tinyint, SmallInt, Int, MediumInt, BigInt)
	. Reais (decimal, float, double, real)
	. Logico (Bit, Boolean)
- Data/Tempo ( Date, DateTime, TimeStamp, Time, Year)
- Literal:
	. Caractere (Char e VarChar => mais ideal para ser usado)
    . Texto (TinyText, Text, MediumText, LongText)
    . Binario (TinyBlob, Blob, MediumBlob, LongBlob) ideal para imagens
    . Coleção (Enum, Set)
- Espacial (Geometry, Point, Polygon, MultiPolygon) Guarda informações sobre volumétricos 
*/

use cadastro; # 'use' ativa o banco de dados, ou pode ativar clicando 2 vezes no cadastro requerido.
create table pessoas (
	nome varchar (30),
    idade tinyint(3),
    sexo char (1),
    peso float,
    altura float,
    nacionalidade varchar (20) # Reserva até 20 espaços.
); # Obs: Sempre fecha o bloco com ';'

# Descrevendo a tabela:
describe pessoas; # Também pode ser usado apenas 'desc'


