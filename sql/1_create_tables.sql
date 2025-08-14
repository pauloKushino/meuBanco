USE banco_teste;

CREATE TABLE curso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomeCurso VARCHAR(100) NOT NULL,
    duracao VARCHAR(50),
    descricao TEXT,
    carga_horaria INT
);

CREATE TABLE sexualidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    especialidade VARCHAR(100),
    email VARCHAR(100),
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);

CREATE TABLE aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    matricula VARCHAR(50),
    email VARCHAR(100),
    data_nascimento DATE,
    curso_id INT,
    sexualidade_id INT,
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    FOREIGN KEY (sexualidade_id) REFERENCES sexualidade(id)
);

CREATE TABLE chamada (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    curso_id INT,
    professor_id INT,
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    FOREIGN KEY (professor_id) REFERENCES professor(id)
);

CREATE TABLE chamada_aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    chamada_id INT,
    aluno_id INT,
    presenca ENUM('Presente', 'Faltou'),
    FOREIGN KEY (chamada_id) REFERENCES chamada(id),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id) 
);