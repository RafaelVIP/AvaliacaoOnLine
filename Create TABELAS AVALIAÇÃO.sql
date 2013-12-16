-- TABELA DE CURSOS

CREATE TABLE CURSOS (
idCurso int(4) unsigned not null auto_increment,
nomeCurso VARCHAR(10) not null,
descricaoCurso VARCHAR(1000) not null,
primary key (idCurso));

-- TABELA DE ALUNOS

CREATE TABLE ALUNOS (
cpfAluno int(11) unsigned not null,
nomeAluno VARCHAR(150) not null,
emailAluno VARCHAR(100) not null,
senhaAluno VARCHAR(10),
primary key (cpfAluno));

-- CADASTRO INSTRUTORES

CREATE TABLE INSTRUTORES (
cpfInstrutor int(11) unsigned not null,
nomeInstrutor VARCHAR(150) not null,
emailInstrutor VARCHAR(100),
senhaInstrutor VARCHAR(10) not null,
primary key (cpfInstrutor));

-- CADASTRO DE MINISTRANTES

CREATE TABLE MINISTRANTES (
cpfInstrutor int(11) not null,
idCurso int(4) not null,
primary key (cpfInstrutor, idCurso));

-- CADASTRO DE TEMAS

CREATE TABLE TEMAS (
idTema int(2) unsigned not null auto_increment,
descricaoTema varchar(100) not null,
primary key (idTema));

-- CADASTRO DE PERGUNTAS

CREATE TABLE PERGUNTAS (
idPergunta int(2) unsigned not null auto_increment,

idTema varchar(100) not null,
Pergunta varchar(500) not null,
primary key (idPergunta));

-- CADASTRO DE TURMAS

CREATE TABLE TURMAS (
idTurma int(4) unsigned not null,
idCurso int(4) not null,
cpfInstrutor int(11) not null,
cpfAluno int(11) not null,
dtTurmaInicio date not null,
dtTurmaFim date not null,
primary key (idTurma, idCurso, cpfInstrutor));

-- CADASTRO DE NOTAS DAS RESPOSTAS

CREATE TABLE RESPOSTAS (
cpfAluno int(11) not null,
cpfInstrutor int(11) not null,
idCurso int(4) not null,
idResposta int(4) unsigned not null,
idPergunta int(2) not null,
notaResposta int(2),
observacaoResposta varchar(1000),
primary key (cpfAluno, idResposta, idPergunta));

-- CADASTRO DE COMENTARIO DAS RESPOSTAS

CREATE TABLE COMENTARIOS (
idResposta int(4) not null,
instrutorComent varchar(4000),
cursoComent varchar(4000),
primary key (idResposta));
